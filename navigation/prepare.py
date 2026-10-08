from pathlib import Path
import re,hashlib,json
ROOT=Path(__file__).resolve().parents[1]
NAV=ROOT/'navigation';PATCHES=NAV/'patches'
PATTERN=re.compile(r'^\.method [^\n]+\n.*?^\.end method\n?',re.M|re.S)
def change_method(s,signature,callback):
 found=[m for m in PATTERN.finditer(s) if m.group().splitlines()[0].split()[-1]==signature]
 assert len(found)==1,signature
 old=found[0].group();new=callback(old);assert new!=old
 return s.replace(old,new)

def prepare():
 rel='com/miui/home/recents/settings/NavigationBarTypePreferenceFragment.smali'
 s=(NAV/'smali/home/classes2.dex'/rel).read_text(encoding='utf-8-sig')
 needle='    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z\n\n    if-nez v4, :cond_88\n\n'
 def expose(m):assert m.count(needle)==1;return m.replace(needle,'')
 s=change_method(s,'updatePreferenceVisibility()V',expose)
 s=s.replace('# static fields','# static fields\n.field public static final PIPA_NAV_PATCH_VERSION:I = 0x300',1)
 p=PATCHES/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s,encoding='utf-8')
 rel='com/miui/home/launcher/DeviceConfig.smali'
 s=(NAV/'smali/home/classes.dex'/rel).read_text(encoding='utf-8-sig')
 needle='    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;\n\n    move-result-object p1\n\n    const-string v0, "hide_gesture_line"\n\n    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z\n\n    move-result p1'
 def reserve(m):
  assert m.count(needle)==1
  return m.replace(needle,'    # Dock layout keeps the shown-line profile; SystemUI reads the real setting.\n    const/4 p1, 0x0')
 s=change_method(s,'updateGestureEnable(Landroid/content/Context;)V',reserve)
 s=s.replace('# static fields','# static fields\n.field public static final PIPA_NAV_PATCH_VERSION:I = 0x300',1)
 p=PATCHES/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s,encoding='utf-8')
 rel='com/miui/home/launcher/hotseats/HotSeats.smali'
 s=(NAV/'smali/home/classes.dex'/rel).read_text(encoding='utf-8-sig')
 needle='    :cond_e\n    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsMarginBottom()I\n\n    move-result v0'
 def keep_position(m):
  assert m.count(needle)==1
  return m.replace(needle,needle+'\n\n    # Retain the previous screen-bottom gap when SystemUI removes its 40px inset.\n    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getContext()Landroid/content/Context;\n\n    move-result-object v1\n\n    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z\n\n    move-result v1\n\n    if-eqz v1, :goto_12\n\n    iget v1, p0, Lcom/miui/home/launcher/hotseats/HotSeats;->mNavigationBarHeight:I\n\n    add-int/2addr v0, v1')
 s=change_method(s,'getHotSeatsMarginBottom()I',keep_position)
 p=PATCHES/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s,encoding='utf-8')
 rel='com/miui/home/recents/BaseRecentsImpl.smali'
 s=(NAV/'smali/home/classes2.dex'/rel).read_text(encoding='utf-8-sig')
 def preserve_choice(m):
  start=m.index('    :cond_17\n')
  end=m.index('    :cond_26\n',start)+len('    :cond_26\n')
  block=m[start:end]
  assert block.count('->isPadDevice()Z')==1 and block.count('->putInt(')==1
  # Keep the unset-value default; remove only the tablet-specific reset to zero.
  return m[:start]+'    :cond_17\n'+m[end:]
 s=change_method(s,'initHideGestureLine(Landroid/content/Context;)V',preserve_choice)
 p=PATCHES/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(s,encoding='utf-8')
 (NAV/'patch-manifest.json').write_text(json.dumps({'home_apk_sha256':hashlib.sha256((NAV/'stock/home.apk').read_bytes()).hexdigest(),'classes':['com.miui.home.recents.settings.NavigationBarTypePreferenceFragment','com.miui.home.launcher.DeviceConfig','com.miui.home.launcher.hotseats.HotSeats','com.miui.home.recents.BaseRecentsImpl'],'methods':['updatePreferenceVisibility()V','updateGestureEnable(Context)V','HotSeats.getHotSeatsMarginBottom()I','BaseRecentsImpl.initHideGestureLine(Context)V'],'original_apk_changed':False},indent=2),encoding='utf-8')
 return PATCHES
if __name__=='__main__':print(prepare())
