#!/system/bin/sh
# The original yudi implementation depends on this compatibility framework.
[ ! -d /data/adb/modules/Hyper_MagicWindow ] || touch /data/adb/modules/Hyper_MagicWindow/disable

rm -f /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
