#!/system/bin/sh
MODDIR=${0%/*}
UP=/data/adb/modules/Hyper_MagicWindow
fail() { echo "$*"; exit 1; }
[ "$(getprop ro.product.device)" = pipa ] || fail 'Unsupported device'
[ "$(getprop ro.build.version.sdk)" = 33 ] || fail 'Unsupported API'
[ "$(getprop ro.build.version.incremental)" = V14.0.3.0.TMZCNXM ] || fail 'Unsupported ROM base'
[ -f "$UP/module.prop" ] && [ ! -f "$UP/disable" ] && [ ! -f "$UP/remove" ] || fail 'Enable original Hyper_MagicWindow with yudi branch first'
grep -q '^ro.config.sothx_miui_device_code=yudi$' "$UP/system.prop" || fail 'Original module must select 6 Max/yudi'
JAR="$UP/system/system_ext/framework/miui-embedding-window.jar"
[ -f "$JAR" ] || fail 'Original yudi embedding JAR missing'
check_label() {
 label=$(ls -Zd "$1") || fail "Cannot read framework label: $1"
 case "$label" in *u:object_r:system_file:s0*) ;; *) fail "Wrong framework SELinux label: $1" ;; esac
}
check_label "$JAR"
for rel in system/framework/framework.jar system/framework/services.jar system/system_ext/framework/androidx.window.extensions.jar system/system_ext/framework/pipa-yudi-res.apk system/system_ext/framework/pipa-home-patch.jar; do
 check_label "$MODDIR/$rel"
done
HASH=$(sha256sum "$JAR"); HASH=${HASH%% *}
grep -qx "$HASH" "$MODDIR/allowed-embedding-sha256.txt" || fail 'Upstream embedding changed; compatibility revalidation required'
for p in "$UP/system/framework/framework.jar" "$UP/system/framework/services.jar" "$UP/system/system_ext/framework/androidx.window.extensions.jar"; do
 [ ! -e "$p" ] || fail 'Upstream now replaces additional framework files; revalidation required'
done
HM=/data/adb/modules/hybrid_mount
[ -f "$HM/module.prop" ] && [ ! -f "$HM/disable" ] && [ ! -f "$HM/remove" ] || fail 'Enable the verified Hybrid Mount environment first'
grep -Eq '^disable_umount[[:space:]]*=[[:space:]]*true([[:space:]]*(#.*)?)?$' /data/adb/hybrid-mount/config.toml || fail 'Hybrid Mount disable_umount must remain true'
PIF=/data/adb/modules/playintegrityfix
if [ -f "$PIF/module.prop" ] && [ ! -f "$PIF/disable" ] && [ ! -f "$PIF/remove" ] && [ ! -f /data/adb/pif_script_only ]; then
 HASH=$(sha256sum "$PIF/zygisk/arm64-v8a.so"); HASH=${HASH%% *}
 [ "$HASH" = 68ef78c49cbd70a4ccc3b6d6e8f199225a6c1b89c19f7755c219a303bb17f710 ] || fail 'PIF forced-unmount compatibility changed'
 HASH=$(sha256sum "$PIF/zygisk/armeabi-v7a.so"); HASH=${HASH%% *}
 [ "$HASH" = 660d61f7823f6cd85bd7341624a9c96dac2700acc265f4b8fa789f022ddfdc4a ] || fail 'PIF arm32 forced-unmount compatibility changed'
fi
echo 'PREFLIGHT=PASS'
