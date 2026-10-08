#!/system/bin/sh
# One installation boot only: remove this hook after a healthy boot or recovery.
SELF=/data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
LOG=/data/adb/pipa-compat-startup-guard.log
(
 tries=0
 stable=0
 last=
 while [ "$tries" -lt 60 ]; do
  if [ "$(getprop sys.boot_completed)" = 1 ]; then
   ss=$(pidof system_server)
   home=$(pidof com.miui.home)
   ui=$(pidof com.android.systemui)
   now="$ss|$home|$ui"
   if [ -n "$ss" ] && [ -n "$home" ] && [ -n "$ui" ] && [ "$now" = "$last" ]; then
    stable=$((stable + 1))
   else
    stable=0
   fi
   last="$now"
   if [ "$stable" -ge 2 ]; then
    echo 'BOOT_OK: startup guard removed'
    rm -f "$SELF"
    exit 0
   fi
  fi
  tries=$((tries + 1))
  sleep 3
 done
 echo 'BOOT_TIMEOUT: disabling the dependent pair and rebooting stock framework'
 for m in /data/adb/modules/pipa_miui14_divider_port /data/adb/modules/Hyper_MagicWindow /data/adb/modules_update/pipa_miui14_divider_port /data/adb/modules_update/Hyper_MagicWindow; do
  [ ! -d "$m" ] || touch "$m/disable"
 done
 rm -f "$SELF"
 sync
 /system/bin/reboot
) > "$LOG" 2>&1 < /dev/null &
