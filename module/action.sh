#!/system/bin/sh
MODDIR=${0%/*}
if /system/bin/sh "$MODDIR/preflight.sh"; then
 if mkdir -p /data/adb/post-fs-data.d && cp "$MODDIR/startup-guard.sh" /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh && chmod 700 /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh; then
  echo 'Startup protection armed for the next boot.'
 else
  touch "$MODDIR/disable" /data/adb/modules/Hyper_MagicWindow/disable
  rm -f /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
  echo 'Startup protection unavailable; both modules disabled.'
  exit 1
 fi
else
 touch "$MODDIR/disable"
 [ ! -d /data/adb/modules/Hyper_MagicWindow ] || touch /data/adb/modules/Hyper_MagicWindow/disable
 rm -f /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
 exit 1
fi
echo 'Boot preflight log:'
cat /data/adb/pipa-yudi-compat-preflight.log 2>/dev/null
