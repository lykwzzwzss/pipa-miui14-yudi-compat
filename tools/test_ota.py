"""Run after python package.py. All feed writes stay in a temporary directory."""
from pathlib import Path
import tempfile, unittest, zipfile
import update_ota as ota
ROOT = Path(__file__).resolve().parents[1]
REPO = "lykwzzwzss/pipa-miui14-yudi-compat"
PROPS = dict(line.split("=", 1) for line in (ROOT/"module/module.prop").read_text(encoding="utf-8").splitlines() if "=" in line)
TAG = "v" + PROPS["version"]
ASSET = ROOT/"dist"/("pipa-miui14-yudi-compat-"+PROPS["version"]+".zip")
URL = f"https://github.com/{REPO}/releases/download/{TAG}/{ASSET.name}"

class FeedTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.meta = ota.validate_zip(ASSET, REPO, TAG)

    def test_valid_package_and_idempotent_feed(self):
        a = ota.write_feed(self.temp.name, REPO, TAG, URL, "Notes", self.meta)
        b = ota.write_feed(self.temp.name, REPO, TAG, URL, "Notes", self.meta)
        self.assertEqual(a, b)
        self.assertEqual(a["versionCode"], int(PROPS["versionCode"]))

    def test_cannot_replace_same_version(self):
        ota.write_feed(self.temp.name, REPO, TAG, URL, "Notes", self.meta)
        with self.assertRaises(AssertionError):
            ota.write_feed(self.temp.name, REPO, TAG, URL, "Notes", dict(self.meta, sha256="0"*64))

    def test_cannot_roll_back(self):
        ota.write_feed(self.temp.name, REPO, TAG, URL, "Notes", self.meta)
        older = dict(self.meta, version="0.0.1", versionCode=self.meta["versionCode"]-1)
        old_url=f"https://github.com/{REPO}/releases/download/v0.0.1/pipa-miui14-yudi-compat-0.0.1.zip"
        with self.assertRaises(AssertionError):
            ota.write_feed(self.temp.name, REPO, "v0.0.1", old_url, "Old", older)

    def test_wrong_tag(self):
        with self.assertRaises(AssertionError):
            ota.validate_zip(ASSET, REPO, "v999.0.0")

    def test_payload_tamper(self):
        bad=Path(self.temp.name)/"bad.zip"
        with zipfile.ZipFile(ASSET) as src, zipfile.ZipFile(bad,"w",zipfile.ZIP_DEFLATED) as dst:
            for item in src.infolist():
                value=src.read(item)
                if item.filename=="system/system_ext/framework/pipa-home-patch.jar":
                    value+=b"changed"
                dst.writestr(item,value)
        with self.assertRaises(AssertionError):
            ota.validate_zip(bad, REPO, TAG)

if __name__ == "__main__":
    unittest.main()
