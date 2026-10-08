#!/system/bin/sh
MODDIR=${0%/*}
LOG=/data/adb/pipa-yudi-compat-preflight.log
if ! /system/bin/sh "$MODDIR/preflight.sh" > "$LOG" 2>&1; then
 touch "$MODDIR/disable"
 [ ! -d /data/adb/modules/Hyper_MagicWindow ] || touch /data/adb/modules/Hyper_MagicWindow/disable
 echo 'Both modules disabled before mount to restore the stock framework.' >> "$LOG"
fi
