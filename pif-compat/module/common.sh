#!/system/bin/sh
PIF=/data/adb/modules/playintegrityfix
BACKUP=/data/adb/pif-inject-s-unmount-compat-v4.7-1
LIBRARIES='arm64-v8a.so armeabi-v7a.so'
select_library() {
 case "$1" in
  arm64-v8a.so) OFFSET=20812; ORIGINAL=5834900ced422a0f094736acf61038cfb2401b8055064d5caa9080dbe5cbf578; PATCHED=68ef78c49cbd70a4ccc3b6d6e8f199225a6c1b89c19f7755c219a303bb17f710; OLD_BYTES='\000\001\077\326'; NEW_BYTES='\037\040\003\325' ;;
  armeabi-v7a.so) OFFSET=13382; ORIGINAL=be07d89251361ff1f4dde985e0fff34a0600ff925d8d3ab5f229bc1b4685fb23; PATCHED=660d61f7823f6cd85bd7341624a9c96dac2700acc265f4b8fa789f022ddfdc4a; OLD_BYTES='\220\107'; NEW_BYTES='\000\277' ;;
  *) return 1 ;;
 esac
}
hash_file() {
 local result
 result=$(sha256sum < "$1") || return 1
 echo "${result%% *}"
}
check_target() {
 [ -f "$PIF/module.prop" ] || { echo 'Install PIF v4.7-1-inject-s first'; return 1; }
 grep -qx 'id=playintegrityfix' "$PIF/module.prop" || return 1
 [ ! -d /data/adb/modules_update/playintegrityfix ] || { echo 'Pending PIF update; keep framework pair disabled, complete that update first'; return 1; }
 local name actual
 for name in $LIBRARIES; do
  select_library "$name" || return 1
  [ -f "$PIF/zygisk/$name" ] && [ ! -L "$PIF/zygisk/$name" ] || return 1
  actual=$(hash_file "$PIF/zygisk/$name") || return 1
  case "$actual" in "$ORIGINAL"|"$PATCHED") ;; *) echo "Unsupported PIF library: $name"; return 1 ;; esac
 done
}
cleanup_work() {
 [ -n "$WORK" ] || return 0
 rm -f "$WORK"/*.before "$WORK"/*.original "$WORK"/*.patched
 rmdir "$WORK" 2>/dev/null || true
 WORK=
}
prepare_copies() {
 local name actual
 WORK="$MODDIR/.pif-work-$$"
 [ ! -e "$WORK" ] && [ ! -L "$WORK" ] || return 1
 mkdir -m 700 "$WORK" || return 1
 for name in $LIBRARIES; do
  select_library "$name" || return 1
  cp -p "$PIF/zygisk/$name" "$WORK/$name.before" || return 1
  actual=$(hash_file "$WORK/$name.before") || return 1
  case "$actual" in "$ORIGINAL"|"$PATCHED") ;; *) return 1 ;; esac
  cp -p "$WORK/$name.before" "$WORK/$name.original" || return 1
  cp -p "$WORK/$name.before" "$WORK/$name.patched" || return 1
  if [ "$actual" = "$PATCHED" ]; then
   printf "$OLD_BYTES" | dd of="$WORK/$name.original" bs=1 seek="$OFFSET" conv=notrunc 2>/dev/null
  else
   printf "$NEW_BYTES" | dd of="$WORK/$name.patched" bs=1 seek="$OFFSET" conv=notrunc 2>/dev/null
  fi
  [ "$(hash_file "$WORK/$name.original")" = "$ORIGINAL" ] || return 1
  [ "$(hash_file "$WORK/$name.patched")" = "$PATCHED" ] || return 1
 done
}
atomic_replace() {
 local name="$1" source="$2" expected="$3" target next label
 target="$PIF/zygisk/$name"
 next="$PIF/zygisk/.pipa-unmount-next-$$-$name"
 [ ! -e "$next" ] && [ ! -L "$next" ] || return 1
 label=$(ls -Zd "$target") || return 1
 label=${label%% *}
 case "$label" in u:object_r:*:s0*) ;; *) echo 'Cannot preserve PIF SELinux label'; return 1 ;; esac
 if ! cp -p "$target" "$next" || ! cat "$source" > "$next" || ! chcon "$label" "$next" || [ "$(hash_file "$next")" != "$expected" ] || ! mv -f "$next" "$target"; then
  rm -f "$next"
  return 1
 fi
 [ "$(hash_file "$target")" = "$expected" ]
}
replace_pair() {
 local variant="$1" name expected actual failed=0
 # Detect another writer before replacing either library.
 for name in $LIBRARIES; do
  [ "$(hash_file "$PIF/zygisk/$name")" = "$(hash_file "$WORK/$name.before")" ] || return 1
 done
 for name in $LIBRARIES; do
  select_library "$name" || return 1
  if [ "$variant" = patched ]; then expected=$PATCHED; else expected=$ORIGINAL; fi
  actual=$(hash_file "$PIF/zygisk/$name") || return 1
  [ "$actual" != "$expected" ] || continue
  if ! atomic_replace "$name" "$WORK/$name.$variant" "$expected"; then failed=1; break; fi
 done
 if [ "$failed" = 1 ]; then
  echo 'Replacement failed; restoring the previous pair'
  for name in $LIBRARIES; do
   expected=$(hash_file "$WORK/$name.before") || return 1
   actual=$(hash_file "$PIF/zygisk/$name") || return 1
   [ "$actual" = "$expected" ] || atomic_replace "$name" "$WORK/$name.before" "$expected" || return 1
  done
  return 1
 fi
 sync
}
apply_compat() {
 check_target || return 1
 prepare_copies || { cleanup_work; return 1; }
 local name
 if ! mkdir -p "$BACKUP" || ! chmod 700 "$BACKUP"; then cleanup_work; return 1; fi
 for name in $LIBRARIES; do
  select_library "$name" || { cleanup_work; return 1; }
  if [ -e "$BACKUP/$name" ] || [ -L "$BACKUP/$name" ]; then
   if [ -L "$BACKUP/$name" ] || [ "$(hash_file "$BACKUP/$name")" != "$ORIGINAL" ]; then
    echo 'Existing backup does not match; refusing to overwrite it'; cleanup_work; return 1
   fi
  else
   cp -p "$WORK/$name.original" "$BACKUP/$name" || { cleanup_work; return 1; }
   [ "$(hash_file "$BACKUP/$name")" = "$ORIGINAL" ] || { cleanup_work; return 1; }
  fi
 done
 replace_pair patched
 local result=$?
 cleanup_work
 return "$result"
}
check_compat() {
 check_target || return 1
 local name
 for name in $LIBRARIES; do
  select_library "$name" || return 1
  [ "$(hash_file "$PIF/zygisk/$name")" = "$PATCHED" ] || { echo 'PIF compatibility patch is missing; reinstall the matching patch'; return 1; }
 done
 echo 'PIF_UNMOUNT_COMPAT=PASS'
}
restore_compat() {
 # Preserve newer or otherwise modified PIF libraries.
 if ! check_target; then echo 'PIF changed; no library overwritten'; return 0; fi
 prepare_copies || { cleanup_work; return 1; }
 local m
 for m in /data/adb/modules/pipa_miui14_divider_port /data/adb/modules/Hyper_MagicWindow /data/adb/modules_update/pipa_miui14_divider_port /data/adb/modules_update/Hyper_MagicWindow; do
  [ ! -d "$m" ] || touch "$m/disable" || { cleanup_work; return 1; }
 done
 replace_pair original
 local result=$?
 cleanup_work
 [ "$result" != 0 ] || echo 'Original PIF restored; dependent framework pair disabled'
 return "$result"
}
