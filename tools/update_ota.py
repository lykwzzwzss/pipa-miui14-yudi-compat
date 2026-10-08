"""Validate a published stable module asset before advancing the OTA feed."""
from pathlib import Path, PurePosixPath
import argparse, hashlib, json, re, subprocess, tempfile, zipfile

MODULE_ID = "pipa_miui14_divider_port"
AUTHOR = "lykwzzwzss, Codex"
PAYLOADS = {
    "system/framework/framework.jar",
    "system/framework/services.jar",
    "system/system_ext/framework/androidx.window.extensions.jar",
    "system/system_ext/framework/pipa-yudi-res.apk",
    "system/system_ext/framework/pipa-home-patch.jar",
}

def update_url(repository):
    return f"https://raw.githubusercontent.com/{repository}/main/update.json"

def validate_zip(path, repository, tag):
    assert re.fullmatch(r"v[0-9]+\.[0-9]+\.[0-9]+", tag), "Stable version tag required"
    with zipfile.ZipFile(path) as archive:
        names = archive.namelist()
        assert len(names) == len(set(names)), "Duplicate ZIP entry"
        for name in names:
            assert not name.startswith("/") and ".." not in PurePosixPath(name).parts and "\\" not in name, "Invalid ZIP path"
            assert archive.getinfo(name).file_size <= 100 * 1024 * 1024, "Oversized entry"
        assert archive.testzip() is None, "Corrupt ZIP"
        assert not any(n.endswith("miui-embedding-window.jar") for n in names), "Upstream embedding must remain independent"
        assert "disable" not in names and "skip_mount" not in names, "Disabled module asset"
        props = {}
        for line in archive.read("module.prop").decode("utf-8").splitlines():
            if not line or line.startswith("#"):
                continue
            key, value = line.split("=", 1)
            assert key not in props, "Duplicate module property"
            props[key] = value
        assert props["id"] == MODULE_ID, "Wrong module ID"
        assert props["author"] == AUTHOR, "Wrong author"
        assert props["version"] == tag[1:], "Version/tag mismatch"
        assert props["updateJson"] == update_url(repository), "Wrong OTA endpoint"
        code = int(props["versionCode"])
        assert code > 0, "Invalid versionCode"
        manifest = json.loads(archive.read("manifest.json"))
        assert len(manifest) == len(PAYLOADS) and {e["output"] for e in manifest} == PAYLOADS, "Unexpected payload set"
        for entry in manifest:
            assert hashlib.sha256(archive.read(entry["output"])).hexdigest() == entry["sha256"], "Payload hash mismatch"
        for required in ("preflight.sh", "startup-guard.sh", "post-fs-data.sh", "使用说明.md"):
            assert required in names, f"Missing {required}"
    return {"version": props["version"], "versionCode": code, "sha256": hashlib.sha256(Path(path).read_bytes()).hexdigest()}

def write_feed(root, repository, tag, asset_url, body, metadata):
    expected = f"https://github.com/{repository}/releases/download/{tag}/pipa-miui14-yudi-compat-{metadata['version']}.zip"
    assert asset_url == expected, "Unexpected download URL"
    root = Path(root)
    feed = root / "update.json"
    if feed.exists():
        old = json.loads(feed.read_text(encoding="utf-8"))
        assert metadata["versionCode"] >= old["versionCode"], "Refusing OTA rollback"
        if metadata["versionCode"] == old["versionCode"]:
            assert old["version"] == metadata["version"] and old["sha256"] == metadata["sha256"] and old["zipUrl"] == asset_url, "Published versionCode cannot be reused"
    changelog = root / "changelogs" / (tag + ".md")
    changelog.parent.mkdir(parents=True, exist_ok=True)
    changelog.write_text(body.strip() + "\n", encoding="utf-8", newline="\n")
    result = {"version": metadata["version"], "versionCode": metadata["versionCode"], "zipUrl": asset_url,
              "changelog": f"https://raw.githubusercontent.com/{repository}/main/changelogs/{tag}.md", "sha256": metadata["sha256"]}
    feed.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    return result

def gh(*args):
    return subprocess.check_output(["gh", *args], text=True, encoding="utf-8")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--repository", required=True)
    parser.add_argument("--tag", required=True)
    parser.add_argument("--root", default=".")
    args = parser.parse_args()
    assert re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", args.repository)
    assert re.fullmatch(r"v[0-9]+\.[0-9]+\.[0-9]+", args.tag)
    release = json.loads(gh("api", f"repos/{args.repository}/releases/tags/{args.tag}"))
    assert not release["draft"] and not release["prerelease"], "Only published stable releases enter OTA"
    name = f"pipa-miui14-yudi-compat-{args.tag[1:]}.zip"
    assets = [a for a in release["assets"] if a["name"] == name]
    assert len(assets) == 1, "Exactly one matching module asset is required"
    with tempfile.TemporaryDirectory() as temp:
        gh("release", "download", args.tag, "--repo", args.repository, "--pattern", name, "--dir", temp)
        metadata = validate_zip(Path(temp) / name, args.repository, args.tag)
        digest = assets[0].get("digest")
        if digest:
            assert digest == "sha256:" + metadata["sha256"], "GitHub asset digest mismatch"
        feed = write_feed(args.root, args.repository, args.tag, assets[0]["browser_download_url"], release["body"] or args.tag, metadata)
    print(json.dumps(feed, indent=2))

if __name__ == "__main__":
    main()
