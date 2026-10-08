SKIPUNZIP=0
[ "$BOOTMODE" = true ] || abort 'Install from the Android root manager'
MODDIR=$MODPATH
. "$MODDIR/common.sh"
apply_compat || abort 'PIF patch failed; see the preceding message'
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/uninstall.sh" 0 0 0755
ui_print 'PIF_UNMOUNT_COMPAT=PASS'
ui_print 'Only the two verified FORCE_DENYLIST_UNMOUNT instructions are changed.'
ui_print 'Keep Hybrid Mount disable_umount=true. Reboot to load the patched libraries.'
ui_print 'Disabling this helper does not undo library changes; uninstall restores supported PIF and disables the framework pair.'
