set -e
T="$1"
MODDIR="$T/mod"
. "$T/common.sh"
# Android SELinux/Unix permission calls are mocked on Windows; file bytes and renames are real.
mkdir() { if [ "$1" = -m ]; then shift 2; fi; command mkdir "$@"; }
chmod() { :; }
ls() { if [ "$1" = -Zd ]; then echo "u:object_r:system_file:s0 $2"; else command ls "$@"; fi; }
chcon() { [ "$1" = u:object_r:system_file:s0 ] && [ -f "$2" ]; }
mv() {
 if [ "$FAIL_MOVE" = 1 ] && [ "${3##*/}" = armeabi-v7a.so ]; then FAIL_MOVE=0; return 1; fi
 command mv "$@"
}
FAIL_MOVE=0
mkdir -p "$PIF/zygisk" "$BACKUP"
echo id=playintegrityfix > "$PIF/module.prop"
for m in modules/pipa_miui14_divider_port modules/Hyper_MagicWindow modules_update/pipa_miui14_divider_port modules_update/Hyper_MagicWindow; do mkdir -p "$T/adb/$m"; done
reset_original() {
 for n in $LIBRARIES; do cp "$T/samples/$n" "$PIF/zygisk/$n"; rm -f "$BACKUP/$n"; done
 for m in modules/pipa_miui14_divider_port modules/Hyper_MagicWindow modules_update/pipa_miui14_divider_port modules_update/Hyper_MagicWindow; do rm -f "$T/adb/$m/disable"; done
}
check_original() { for n in $LIBRARIES; do cmp "$T/samples/$n" "$PIF/zygisk/$n"; done; }
check_patched() { for n in $LIBRARIES; do cmp "$T/samples/$n.patched" "$PIF/zygisk/$n"; done; }
reset_original
apply_compat
check_patched
check_compat
for n in $LIBRARIES; do cmp "$T/samples/$n" "$BACKUP/$n"; done
echo ORIGINAL_INSTALL=PASS
apply_compat
check_patched
echo IDEMPOTENT_INSTALL=PASS
for n in $LIBRARIES; do rm -f "$BACKUP/$n"; done
apply_compat
for n in $LIBRARIES; do cmp "$T/samples/$n" "$BACKUP/$n"; done
echo PATCHED_INPUT_BACKUP=PASS
restore_compat
check_original
for m in modules/pipa_miui14_divider_port modules/Hyper_MagicWindow modules_update/pipa_miui14_divider_port modules_update/Hyper_MagicWindow; do [ -f "$T/adb/$m/disable" ]; done
echo UNINSTALL_RESTORE_AND_DISABLE_PAIR=PASS
reset_original
FAIL_MOVE=1
if apply_compat; then echo 'Expected second-library commit failure'; exit 1; fi
check_original
echo SECOND_LIBRARY_FAILURE_ROLLBACK=PASS
reset_original
echo changed > "$PIF/zygisk/arm64-v8a.so"
cp "$PIF/zygisk/arm64-v8a.so" "$T/changed"
if apply_compat; then echo 'Unexpected version accepted'; exit 1; fi
restore_compat
cmp "$T/changed" "$PIF/zygisk/arm64-v8a.so"
echo UNKNOWN_VERSION_UNTOUCHED=PASS
reset_original
echo damaged > "$BACKUP/arm64-v8a.so"
if apply_compat; then echo 'Damaged backup accepted'; exit 1; fi
check_original
echo BAD_BACKUP_REJECTED=PASS
reset_original
mkdir "$T/adb/modules_update/playintegrityfix"
if apply_compat; then echo 'Pending update accepted'; exit 1; fi
check_original
rmdir "$T/adb/modules_update/playintegrityfix"
echo PENDING_UPDATE_REJECTED=PASS
