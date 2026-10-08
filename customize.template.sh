SKIPUNZIP=0
[ "$BOOTMODE" = true ] || abort 'Install from the Android root manager'
[ "$(getprop ro.product.device)" = pipa ] || abort 'Only pipa is supported'
[ "$(getprop ro.build.version.sdk)" = 33 ] || abort 'Only Android 13 is supported'
[ "$(getprop ro.build.version.incremental)" = V14.0.3.0.TMZCNXM ] || abort 'Exact ROM base required'
for root in /data/adb/modules /data/adb/modules_update; do
 for mod in "$root"/*; do
  [ -d "$mod" ] || continue
  [ "${mod##*/}" = pipa_miui14_divider_port ] && continue
  [ -f "$mod/disable" ] && continue
  [ -f "$mod/remove" ] && continue
  for rel in system/framework/framework.jar system/framework/services.jar system/system_ext/framework/androidx.window.extensions.jar system_ext/framework/androidx.window.extensions.jar system/system_ext/framework/pipa-yudi-res.apk system/system_ext/framework/pipa-home-patch.jar; do
   [ ! -f "$mod/$rel" ] || abort "Conflicting framework file in ${mod##*/}"
  done
 done
done
check_original() {
 file=$1
 actual=$(sha256sum "$file") || abort "Cannot read base file: $file"
 actual=${actual%% *}
 shift
 for expected in "$@"; do
  [ "$actual" != "$expected" ] || return 0
 done
 abort "Unexpected base file: $file"
}
check_original /system/framework/framework.jar c873d1c3adabf321168e1b8d30d5aac94c0700dad4ae152728289cb003618903 ec0d58a4722dbbcd379646db9c9ba4bff7661b0f88bf8dda17763526fdae244d 2473cc1b4c740a66e220214a0183591a76763f2002231b238e5603119ec16d7b 7c67cf3f5ea598b62da718bf22444d31c947a4a8112b55639891aacec0d73afa 704781fc8afe081bfff3a03b06898b8dc1d1da16ab9dc4f76436817eab5adc4a @CANDIDATE_FRAMEWORK@
check_original /system/framework/services.jar 5b84f94053573f39ad4924f29ec9556bbaab57f6303020265cae5606200a3c9c dcd3b99a78e21cd30aa5ec426d0ffa0179d9fb1fd396696aaf55f2c031796aef 3cd95955048994b0573842959d6cd0973e89db27ac84d5ab67b7949615faa864 700cdad37a4f82aa1bf37e4c6d9649889126cf037b45202283c7573ab1aa1d7e 858af96c277a2d61aafd571b6da25b52cae1416284dbe10d4be669ee08db76db 3ada54c2d1770b007de27f72f51394e4af9e715892fcccaa91076b35263696d1 @CANDIDATE_SERVICES@
check_original /system_ext/framework/androidx.window.extensions.jar 69eae59be67d1397b46ce2e8c125e6a9bbe8a92f83219b3a19b2bfe79c9c42bd 45462cafb4ce351e04494ec6f1820178cff3af2b271f3e249551f9be4d924f3a 9f3480ac07dfc2fbbfcd9f160ad5f49eb8b387e88e7bdf8446f1805b194ce01f
check_original /system_ext/framework/framework-ext-res/framework-ext-res.apk 2296a4c3422c3c49d4b4097eb5c9b23da9a29d35a206563d8b3fd374de051984 2296a4c3422c3c49d4b4097eb5c9b23da9a29d35a206563d8b3fd374de051984
HOME_APK=$(pm path com.miui.home); HOME_APK=${HOME_APK#package:}
check_original "$HOME_APK" 1ef993a1981919d503e24cfb8be2592977d7cd7f57c9b0abc7cca79f78aeaba2 1ef993a1981919d503e24cfb8be2592977d7cd7f57c9b0abc7cca79f78aeaba2
set_perm_recursive "$MODPATH/system" 0 0 0755 0644
set_perm "$MODPATH/preflight.sh" 0 0 0755
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/uninstall.sh" 0 0 0755
# Activate only a complete, verified pair; never leave upstream yudi alone.
if [ ! -d /data/adb/modules_update/Hyper_MagicWindow ] && /system/bin/sh "$MODPATH/preflight.sh" > "$MODPATH/install-preflight.log" 2>&1; then
 if ! mkdir -p /data/adb/post-fs-data.d || ! cp "$MODPATH/startup-guard.sh" /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh || ! chmod 700 /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh; then
  touch "$MODPATH/disable" /data/adb/modules/Hyper_MagicWindow/disable
  rm -f /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
  abort 'Startup guard unavailable; both modules disabled'
 fi
 rm -f "$MODPATH/disable"
 ui_print 'Compatibility preflight passed. Both modules are ready for reboot.'
else
 touch "$MODPATH/disable"
 rm -f /data/adb/post-fs-data.d/pipa-compat-startup-guard.sh
 for up in /data/adb/modules/Hyper_MagicWindow /data/adb/modules_update/Hyper_MagicWindow; do
  [ ! -d "$up" ] || touch "$up/disable"
 done
 ui_print 'Compatibility conditions incomplete: both dependent modules kept disabled.'
 ui_print 'Complete setup, enable both modules, run the preflight action, then reboot.'
fi
ui_print 'Original module must select 6 Max/yudi. Keep verified Hybrid Mount/PIF settings.'
