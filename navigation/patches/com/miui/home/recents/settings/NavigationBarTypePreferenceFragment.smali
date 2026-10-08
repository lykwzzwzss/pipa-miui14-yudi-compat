.class public Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "NavigationBarTypePreferenceFragment.java"

# interfaces
.implements Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;


# static fields
.field public static final PIPA_NAV_PATCH_VERSION:I = 0x300
.field private static sExistInputApk:I


# instance fields
.field private mAppMenuGuide:Landroidx/preference/Preference;

.field private mAppQuickSwitchGuide:Landroidx/preference/Preference;

.field private mAppQuickSwitchGuidePad:Landroidx/preference/Preference;

.field private mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

.field private mAppSwitchGuide:Landroidx/preference/Preference;

.field private mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mBackGuidePad:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDockGuidePad:Landroidx/preference/Preference;

.field private mGestureDemoPreferencePad:Lcom/miui/home/recents/settings/GestureDemoPreference;

.field private mGuideCategory:Landroidx/preference/PreferenceCategory;

.field private mGuideCategoryPad:Landroidx/preference/PreferenceCategory;

.field private mHideGestureLine:Landroidx/preference/CheckBoxPreference;

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mHomeGuidePad:Landroidx/preference/Preference;

.field private mIsPad:Z

.field private mIsShowKeyShortcutsEntry:Z

.field private mIsUseGestureVersion3:Z

.field private mMistakeTouch:Landroidx/preference/CheckBoxPreference;

.field private mMutilFingerSlide:Landroidx/preference/CheckBoxPreference;

.field private mNavBarTypeContainerPre:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

.field private mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

.field private mNavigationSettingCategory:Landroidx/preference/PreferenceCategory;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mRecentGuidePad:Landroidx/preference/Preference;

.field private mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

.field private mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private addIntentFlagsIfNeed(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    const/high16 v0, 0x10800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    return-void
.end method

.method private asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/CheckBoxPreference;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$IqkBGeOZGhIHKvBc8jNBG2q-mAo;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$IqkBGeOZGhIHKvBc8jNBG2q-mAo;-><init>(Ljava/util/function/Supplier;)V

    new-instance p2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$5SMh652YLNHMPUsQG9HOkdgpQJM;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$5SMh652YLNHMPUsQG9HOkdgpQJM;-><init>(Landroidx/preference/CheckBoxPreference;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/preference/CheckBoxPreference;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_10

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$An23MrVRR7SFexsXrMloyCtPRFE;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$An23MrVRR7SFexsXrMloyCtPRFE;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_10
    return-object p1
.end method

.method private initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$YABefIYLTPOkZR0RYSIsOR4J89w;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$YABefIYLTPOkZR0RYSIsOR4J89w;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    return-object p1
.end method

.method private initGuidePreferences()V
    .locals 2

    const-string v0, "navigation_guide_home"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$0r4vc6IQNzLOCoTS5LQ-nbV4Ua8;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$0r4vc6IQNzLOCoTS5LQ-nbV4Ua8;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_recent"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$ggL2RzUQ8bC9y406XU5IhgT9Dws;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$ggL2RzUQ8bC9y406XU5IhgT9Dws;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_back"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$fP8MpHFGUSjhD9QhXJwWAissY34;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$fP8MpHFGUSjhD9QhXJwWAissY34;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_menu"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$TRYMzO3CKAyTb6hOGho670M3wiY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$TRYMzO3CKAyTb6hOGho670M3wiY;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_appswitch"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VmUV9pEvKJLv6u-fvhcSPkwAoYA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$VmUV9pEvKJLv6u-fvhcSPkwAoYA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    const-string v0, "navigation_guide_app_quick_switch"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mJrMG1E6bloBo9xS7WvIPYNpvmc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mJrMG1E6bloBo9xS7WvIPYNpvmc;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    return-void
.end method

.method private initGuidePreferencesForPad()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.gesture_tutorial_pad"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "navigation_guide_home_pad"

    new-instance v2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$D_DSndRLM2mZ7cL0OoCL6RlhL5c;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$D_DSndRLM2mZ7cL0OoCL6RlhL5c;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuidePad:Landroidx/preference/Preference;

    const-string v1, "navigation_guide_recent_pad"

    new-instance v2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Uz65v7ZaodB8p7RER3RPFxqI1b0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$Uz65v7ZaodB8p7RER3RPFxqI1b0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuidePad:Landroidx/preference/Preference;

    const-string v1, "navigation_guide_back_pad"

    new-instance v2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$9xOixfHH-QAI4ERSoF1Y4-F-9Jw;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$9xOixfHH-QAI4ERSoF1Y4-F-9Jw;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuidePad:Landroidx/preference/Preference;

    const-string v1, "navigation_guide_dock_pad"

    new-instance v2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$wdn7fGP-pKi-whPubfsogoltiaI;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$wdn7fGP-pKi-whPubfsogoltiaI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mDockGuidePad:Landroidx/preference/Preference;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadSupportDock()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mDockGuidePad:Landroidx/preference/Preference;

    if-eqz v1, :cond_4e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4e
    const-string v1, "navigation_guide_app_quick_switch_pad"

    new-instance v2, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$YsneKHMSAzBIvdX3axpr4Ki8AhI;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$YsneKHMSAzBIvdX3axpr4Ki8AhI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initClickPreference(Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuidePad:Landroidx/preference/Preference;

    return-void
.end method

.method private initPreferenceCategoryAndSetVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "navigation_bar_type_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canDeviceUseVirtualKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    if-eqz p1, :cond_1c

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "gesture_demo_category_pad"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canDeviceUseVirtualKey()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :cond_33
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "navigation_guide_category_pad"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategoryPad:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategoryPad:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_48

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :cond_48
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "navigation_guide_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_5f

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :cond_5f
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "gesture_demo_preference_pad"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/settings/GestureDemoPreference;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureDemoPreferencePad:Lcom/miui/home/recents/settings/GestureDemoPreference;

    return-void
.end method

.method private initSettingPreferences()V
    .locals 3

    const-string v0, "nav_bar_type_container_preference"

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->setOnNavBarTypeChangedListener(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$OnNavBarTypeChanged;)V

    :cond_d
    const-string v0, "navigation_position"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$RECvCXdbFcKlXgAR6TOpnn2cBEA;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.recents.navigation_position"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "switch_screen_button_order"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$mac2uedFWYXjE5sraRMdus_yC0M;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    const-string v0, "multi_finger_slide"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$KdC7k3MUJjSvgwQvuk13eaJUkYM;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMutilFingerSlide:Landroidx/preference/CheckBoxPreference;

    const-string v0, "button_shortcut"

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v0, "audo_disable_screen_buttons"

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputSettingsPreference()V

    const-string v0, "fsg_mistake_touch"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$MksvKbIVVg-WQrunKQv-XrvN-xg;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_hide_gesture_line"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gHwDIH2Vrnqj_Zym2iVwAQKgM-c;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    const-string v0, "navigation_appswitch_anim"

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WKStR96ijiIxvvaadY55J0IdmcI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$WKStR96ijiIxvvaadY55J0IdmcI;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initCheckboxPreferenceItem(Ljava/lang/String;Ljava/util/function/Consumer;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "navigation_setting_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationSettingCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method private initValuePreference(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/miui/home/settings/preference/ValuePreference;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/preference/ValuePreference;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-object p1
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method private isMistakeTouchEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method private isMultiFingerSlideNotSupport()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_finger_slide"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public static synthetic lambda$RECvCXdbFcKlXgAR6TOpnn2cBEA(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    return-void
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$25(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$asyncSetCheckboxPreferenceCheckedStatus$26(Landroidx/preference/CheckBoxPreference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$initCheckboxPreferenceItem$17(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$initClickPreference$16(Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$initGuidePreferences$10(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "home"

    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$11(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "recents"

    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "DEMO_TO_RECENTTASK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$12(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    const-string v0, "back"

    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.back"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEMO_TYPE"

    const-string v2, "FSG_BACK_GESTURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$13(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "in_app_function"

    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.menu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$14(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1b
    return-void
.end method

.method public static synthetic lambda$initGuidePreferences$15(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 2

    const-string v0, "quick_switch"

    invoke-static {v0}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackClickSingleTurorialEvent(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->addIntentFlagsIfNeed(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferencesForPad$5(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "WHICH_TUTORIAL"

    const-string v1, "TUTORIAL_HOME"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferencesForPad$6(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "WHICH_TUTORIAL"

    const-string v1, "TUTORIAL_RECENTS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferencesForPad$7(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "WHICH_TUTORIAL"

    const-string v1, "TUTORIAL_BACK"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferencesForPad$8(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "WHICH_TUTORIAL"

    const-string v1, "TUTORIAL_DOCK"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initGuidePreferencesForPad$9(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "WHICH_TUTORIAL"

    const-string v1, "TUTORIAL_QUICK_SWITCH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$0(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setRightHand(Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$1(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMultiFingerSlideNotSupport(Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$2(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$3(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowGestureLineGuide()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->showNoGestureLineLearnDialog()V

    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    :goto_1f
    return-void
.end method

.method public static synthetic lambda$initSettingPreferences$4(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method public static synthetic lambda$showNoGestureLineLearnDialog$27(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;)V
    .locals 1

    iget-boolean v0, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isClickOnDialog:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    iget-boolean p1, p1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;->isCheckboxChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->setNeedShowGestureLineGuide(Z)V

    :cond_f
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->canDeviceUseVirtualKey()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGestureDemoPreferencePad:Lcom/miui/home/recents/settings/GestureDemoPreference;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/GestureDemoPreference;->updateFullScreenViewAnim()V

    goto :goto_24

    :cond_1d
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavBarTypeContainerPre:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->updateFullScreenViewAnim()V

    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setHideGestureLine(Z)V

    return-void
.end method

.method public static synthetic lambda$updateNavigationPosition$28(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updateNavigationPosition$29(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_10

    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f100326

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_28

    :cond_10
    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_20

    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f100327

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    goto :goto_28

    :cond_20
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    const v0, 0x7f100325

    invoke-virtual {p1, v0}, Lcom/miui/home/settings/preference/ValuePreference;->setValue(I)V

    :goto_28
    return-void
.end method

.method public static synthetic lambda$updatePreferenceVisibility$18(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updatePreferenceVisibility$19(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$20(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isRightHand(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$21(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMistakeTouchEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$22(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isMultiFingerSlideNotSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$23(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateSettingPreferencesCheckedState$24(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->isAppSwitchFeatureEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateGestureLineVisible(Z)V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_mistake_touch_toast"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setMultiFingerSlideNotSupport(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_finger_slide"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showNoGestureLineLearnDialog()V
    .locals 4

    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10030d

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setTitle(I)V

    const v1, 0x7f10030c

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setMessage(I)V

    iget-boolean v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-eqz v1, :cond_39

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.action.gesture_tutorial_pad"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "WHICH_TUTORIAL"

    const-string v3, "TUTORIAL_QUICK_SWITCH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "IS_SINGLE_TUTORIAL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "IS_GESTURE_LINE_HIDDEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntent(Landroid/content/Intent;)V

    goto :goto_43

    :cond_39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.systemui.fsgesture.quick_switch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setPositiveButtonIntent(Landroid/content/Intent;)V

    :goto_43
    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$eDwCEwZGVjxOcgbsY7mQC0weA0s;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$eDwCEwZGVjxOcgbsY7mQC0weA0s;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->setClickDialogButtonConsume(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->show()V

    return-void
.end method

.method private updateGestureLineVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_c

    const v1, 0x7f1002e9

    goto :goto_f

    :cond_c
    const v1, 0x7f1002ec

    :goto_f
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_1a

    const v1, 0x7f08055e

    goto :goto_1d

    :cond_1a
    const v1, 0x7f08055d

    :goto_1d
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_28

    const v1, 0x7f080563

    goto :goto_2b

    :cond_28
    const v1, 0x7f080562

    :goto_2b
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_36

    const v1, 0x7f080561

    goto :goto_39

    :cond_36
    const v1, 0x7f080560

    :goto_39
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_44

    const v1, 0x7f080565

    goto :goto_47

    :cond_44
    const v1, 0x7f080564

    :goto_47
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppMenuGuide:Landroidx/preference/Preference;

    if-eqz p1, :cond_52

    const p1, 0x7f08055c

    goto :goto_55

    :cond_52
    const p1, 0x7f08055b

    :goto_55
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_b3

    :cond_59
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_61

    const v1, 0x7f1002ea

    goto :goto_64

    :cond_61
    const v1, 0x7f1002ed

    :goto_64
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHomeGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_6f

    const v1, 0x7f0801ed

    goto :goto_72

    :cond_6f
    const v1, 0x7f0801ec

    :goto_72
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mRecentGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_7d

    const v1, 0x7f0801ef

    goto :goto_80

    :cond_7d
    const v1, 0x7f0801ee

    :goto_80
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mBackGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_8b

    const v1, 0x7f0801e7

    goto :goto_8e

    :cond_8b
    const v1, 0x7f0801e6

    :goto_8e
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_99

    const v1, 0x7f0801e9

    goto :goto_9c

    :cond_99
    const v1, 0x7f0801e8

    :goto_9c
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadSupportDock()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mDockGuidePad:Landroidx/preference/Preference;

    if-eqz p1, :cond_ad

    const p1, 0x7f0801eb

    goto :goto_b0

    :cond_ad
    const p1, 0x7f0801ea

    :goto_b0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method private updateNavigationPosition()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$-Mt5E8isZy43Cq2h4bjEJ8JlFn0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$-Mt5E8isZy43Cq2h4bjEJ8JlFn0;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$69l7GXAfu-sS3baSPrgWJdc8Hmw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$69l7GXAfu-sS3baSPrgWJdc8Hmw;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updatePreferenceCategoryVisibility(Landroidx/preference/PreferenceCategory;)V
    .locals 3

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationSettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationSettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    :goto_24
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void

    :cond_28
    :goto_28
    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-nez v4, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategoryPad:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_20

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-eqz v4, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMutilFingerSlide:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_33

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-eqz v4, :cond_33

    move v4, v3

    goto :goto_34

    :cond_33
    move v4, v2

    :goto_34
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    if-nez v0, :cond_41

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v4, :cond_41

    move v4, v3

    goto :goto_42

    :cond_41
    move v4, v2

    :goto_42
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_56

    if-nez v0, :cond_56

    move v4, v3

    goto :goto_57

    :cond_56
    move v4, v2

    :goto_57
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    if-eqz v4, :cond_68

    if-nez v0, :cond_68

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-nez v4, :cond_68

    move v4, v3

    goto :goto_69

    :cond_68
    move v4, v2

    :goto_69
    invoke-virtual {v1, v4}, Lcom/miui/home/settings/preference/ValuePreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_76

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v4, :cond_76

    move v4, v3

    goto :goto_77

    :cond_76
    move v4, v2

    :goto_77
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_88

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_88

    move v4, v3

    goto :goto_89

    :cond_88
    move v4, v2

    :goto_89
    invoke-virtual {v1, v4}, Landroidx/preference/CheckBoxPreference;->setVisible(Z)V

    iget-boolean v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_9a

    iget-boolean v4, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v4, :cond_9a

    move v4, v3

    goto :goto_9b

    :cond_9a
    move v4, v2

    :goto_9b
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-nez v0, :cond_a7

    move v2, v3

    :cond_a7
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_aa
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationSettingCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceCategoryVisibility(Landroidx/preference/PreferenceCategory;)V

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$m2p71dvVTFE_UV-WOnSwTkd64G8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$m2p71dvVTFE_UV-WOnSwTkd64G8;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$xAb5KoWX48QxNZRanmN5zyJ88hU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$xAb5KoWX48QxNZRanmN5zyJ88hU;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private updateSettingPreferencesCheckedState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$N2tsoMK41PbtkiU8DuKPn52ahRY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$N2tsoMK41PbtkiU8DuKPn52ahRY;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$BJHsAVPn3fvfJ-kg3UJa_Z8E1mk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$BJHsAVPn3fvfJ-kg3UJa_Z8E1mk;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mMutilFingerSlide:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$36qYiXFQqjORMVrLfrrOSrq8B4g;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$36qYiXFQqjORMVrLfrrOSrq8B4g;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    iget-boolean v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$i-VM0y8it5_XhFDiL7t8FtyJDQE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$i-VM0y8it5_XhFDiL7t8FtyJDQE;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    goto :goto_37

    :cond_2d
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$rW9ChfykP8-pQlSEvV20LfTaXYo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$rW9ChfykP8-pQlSEvV20LfTaXYo;-><init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->asyncSetCheckboxPreferenceCheckedStatus(Landroidx/preference/CheckBoxPreference;Ljava/util/function/Supplier;)V

    :goto_37
    return-void
.end method


# virtual methods
.method public initInputApkStatus(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.miui.miinput"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x1

    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_e} :catch_13

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0

    :catch_13
    move-exception p1

    const/4 v0, 0x2

    sput v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public initInputSettingsPreference()V
    .locals 5

    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initInputApkStatus(Landroid/content/Context;)Z

    :cond_9
    sget v0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->sExistInputApk:I

    const/4 v1, 0x1

    const v2, 0x7f1000af

    const v3, 0x7f10025b

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.miui.miinput.keyshortcut.KeyShortcutActivity"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.miui.miinput.disablebutton.AutoDisableScreenButtonsAppListSettingsActivity"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiInputSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_51

    :cond_33
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mShortcutSettings:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.KeyShortcutSettingsFragment"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mAudoDisableScreen:Lcom/miui/home/settings/preference/ValuePreference;

    const-string v1, "com.android.settings.AutoDisableScreenButtonsAppListSettings"

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/util/SettingsIntentUtil;->getMiuiSettingsIntent(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setIntent(Landroid/content/Intent;)V

    :goto_51
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f130020

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseGestureVersion3(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsUseGestureVersion3:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "navigation_guide_category"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "support_gesture_shortcut_settings"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_35

    goto :goto_36

    :cond_35
    move p2, v0

    :goto_36
    iput-boolean p2, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsShowKeyShortcutsEntry:Z

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    iget-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initPreferenceCategoryAndSetVisibility(Z)V

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initSettingPreferences()V

    iget-boolean p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mIsPad:Z

    if-eqz p1, :cond_4e

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferencesForPad()V

    goto :goto_51

    :cond_4e
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->initGuidePreferences()V

    :goto_51
    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateSettingPreferencesCheckedState()V

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onNavBarTypeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->mNavigationPosition:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0}, Lcom/miui/home/settings/preference/ValuePreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->updateNavigationPosition()V

    :cond_e
    return-void
.end method
