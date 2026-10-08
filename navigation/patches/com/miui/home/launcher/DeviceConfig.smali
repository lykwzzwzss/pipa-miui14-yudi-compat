.class public Lcom/miui/home/launcher/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DeviceConfig$OnDisplayRotationChangedListener;
    }
.end annotation


# static fields
.field public static final PIPA_NAV_PATCH_VERSION:I = 0x300
.field public static final BUILD_REGION:Ljava/lang/String;

.field public static final CURRENT_REGION:Ljava/lang/String;

.field public static final DEVICE:Lcom/miui/home/launcher/DeviceType;

.field public static final HIDE_USER_PRESENT_ANIMATION:Z

.field public static final INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/MainThreadInitializedObject<",
            "Lcom/miui/home/launcher/DeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static INVALIDATE_DEFAULT_SCREEN_ID:J

.field public static final IS_AMX_BUILD:Z

.field public static final IS_FK_BUILD:Z

.field public static final IS_FOLD_DEVICE:Z

.field public static final IS_KDDI_BUILD:Z

.field public static IS_MEITU:Z

.field public static final IS_MIUI_LITE_DEVICE:Z

.field public static final IS_MTK:Z

.field public static final IS_ORANGE_BUILD:Z

.field public static final IS_SB_BUILD:Z

.field public static final IS_SUPPORT_MAGIC_WINDOW:Z

.field public static final IS_SURRPORT_FORCE_TOUCH:Z

.field public static final SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

.field public static TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

.field public static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_LIST_HOTSEATS:Z

.field public static final VENDOR_NAME:Ljava/lang/String;

.field public static final isID:Z

.field public static final isIN:Z

.field public static final isL12AOrL12U:Z

.field public static final isL12AOrL12UOTA:Z

.field private static isThemeCoverCellConfig:Z

.field private static mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

.field private static sAllAppsBackgroundAlpha:I

.field private static sAllAppsCellHeight:I

.field private static sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private static sAllAppsDividerBottom:I

.field private static sAllAppsDividerTop:I

.field private static sApplicationIconContainerHeight:I

.field private static sApplicationIconContainerWidth:I

.field private static sCellCountX:I

.field private static sCellCountXDef:I

.field private static sCellCountXDrawerMode:I

.field private static sCellCountXMax:I

.field private static sCellCountXMin:I

.field private static sCellCountY:I

.field private static sCellCountYDef:I

.field private static sCellCountYMax:I

.field private static sCellCountYMin:I

.field private static sCellHorizontalSpacing:I

.field private static sCellVerticalSpacing:I

.field private static sCellXMigratedFrom:I

.field private static sCellYMigratedFrom:I

.field private static sCheckTitleRunnable:Ljava/lang/Runnable;

.field private static sCurrentScreenCells:Ljava/lang/String;

.field private static sDesignedDefaultScreenId:J

.field private static sDeviceRealHeight:I

.field private static sDeviceRealWidth:I

.field private static final sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static sDisplayListenerRegistered:Z

.field public static sDragIconScaleRatio:F

.field private static sFolderCellHeight:I

.field private static sFolderCellMaxWidth:I

.field private static sFolderRecommendGridPaddingBottom:I

.field private static sFolderWorkingHeight:I

.field private static sHasNavigationBar:Z

.field private static sHideNotch:Z

.field private static sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotseatIconContainerWidth:I

.field private static sHotseatMaxCount:I

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static sIs720Mode:Z

.field private static sIsAccessibilityEnabled:Z

.field private static sIsAppStoreEnabled:Z

.field private static sIsDarkMode:Z

.field private static sIsDefaultIcon:Z

.field private static sIsFixedRotating:Z

.field private static sIsGestureEnable:Z

.field private static sIsHotseatsAppTitleHided:Z

.field private static sIsImmersiveNavigationBar:Z

.field private static sIsInMultiWindowMode:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsInSnapShotMode:Z

.field private static sIsLayoutRtl:Z

.field private static sIsNetWorkConnected:Z

.field private static sIsSearchBarChanged:Z

.field private static sIsShowGestureLine:Z

.field private static sIsShowNotification:Z

.field public static sIsSupportLaunchPairApp:Z

.field public static sIsSupportLaunchPairAppWithLegacyTransition:Z

.field private static sIsSupportMultiWindow:Z

.field private static sIsSupportSearchBar:Z

.field private static sIsTetheringSupported:Z

.field private static sLastConfiguration:Landroid/content/res/Configuration;

.field private static sLastRotation:I

.field private static sLauncherDatabaseName:Ljava/lang/String;

.field private static sMiuiWidgetPaddingTop:I

.field private static final sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

.field private static sMultiWindowModeLauncherHeight:I

.field private static sNeedRecalculateWidgetSpan:Z

.field private static sNeedShowMisplacedTips:Z

.field private static sNotchEditModePaddingTopDelta:I

.field private static sQuickCallCellVerticalSpacing:I

.field public static sQuickEditScreenRatio:F

.field private static sRecommendAppsCount:I

.field public static sRecommendBannerHeight:I

.field public static sRecommendBannerWidth:I

.field public static sRecommendLoadingTitle:Ljava/lang/String;

.field public static sRotatable:Z

.field private static sRotation:I

.field private static final sRotationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/launcher/DeviceConfig$OnDisplayRotationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreenCellsChangedTemporary:Z

.field private static sScreenDensity:F

.field private static sScreenDensityDpi:I

.field private static sScreenOrientationChanged:Z

.field public static sScreenScaleRatio:F

.field private static sScreenSizeChanged:Z

.field private static sScreenSmallestWidth:I

.field private static sSearchBarLightThreshold:F

.field private static sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchBarWidth:I

.field private static sSearchBarWidthDelta:I

.field private static sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sShortcutMenuDisappearThreshold:I

.field private static sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatusBarHeight:I

.field private static sSupportDarkenWallpaper:Z

.field private static sSysUiStatusBarHiddenFlagChanged:Z

.field private static sSystemSupportHotSeatsBlur:Z

.field private static sSystemSupportMultiWindow:Z

.field private static sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sThemeChanged:Z

.field private static sThemeValues:Lmiui/content/res/ThemeValues;

.field private static sUpdateIconPositionForMiui11Upgrade:Z

.field private static sUseOldVersionIcons:Z

.field private static sUseThemeOrOldmanCellCount:Z

.field private static sWidgetCellDefaultHeight:I

.field private static sWidgetCellDefaultWidth:I

.field private static sWidgetCellMeasureHeight:I

.field private static sWidgetCellMeasureWidth:I

.field static sWidgetCellMinHeight:I

.field static sWidgetCellMinWidth:I

.field static sWidgetCellPaddingBottom:I

.field static sWidgetCellPaddingTop:I

.field private static sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sWorkspaceCellPaddingSide:I

.field private static sWorkspaceCellPaddingTop:I

.field private static sWorkspaceCellPaddingTopMultiWindow:I

.field private static sWorkspaceCellPaddingTopNotch:I

.field private static sWorkspaceIndicatorMarginBottom:I

.field private static sWorkspaceIndicatorMarginBottomInEditMode:I

.field private static sWorkspaceInvalidateEdgeWidth:I


# instance fields
.field public landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

.field public portraitProfile:Lcom/miui/home/launcher/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    const/4 v0, -0x1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    const/high16 v2, -0x40800000    # -1.0f

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    invoke-static {}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecFactory;->getWidgetSpec()Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    const-string v0, "support_force_touch"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromFeatureParse(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SURRPORT_FORCE_TOUCH:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowNotification:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    const v2, 0x3dcccccd    # 0.1f

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportMultiWindow:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportHotSeatsBlur:Z

    const-string v2, "ro.hardware"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    const-string v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    const-string v2, "ro.miui.customized.region"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    const-string v2, "ro.miui.build.region"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$1;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$1;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$2;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$2;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$3;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$3;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$4;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$4;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "diting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13a

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "plato"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_138

    goto :goto_13a

    :cond_138
    move v2, v1

    goto :goto_13b

    :cond_13a
    :goto_13a
    move v2, v0

    :goto_13b
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12U:Z

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$5;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$5;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isID:Z

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    const-string v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isIN:Z

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12U:Z

    if-eqz v2, :cond_168

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getCurrentPersonalAssistant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_168

    move v2, v0

    goto :goto_169

    :cond_168
    move v2, v1

    :goto_169
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    const-string v2, "fr_orange"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    const-string v2, "jp_kd"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    const-string v2, "jp_sb"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    const-string v2, "in_fk"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const-string v2, "lm_cr"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, "mx_telcel"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    goto :goto_1aa

    :cond_1a8
    move v2, v1

    goto :goto_1ab

    :cond_1aa
    :goto_1aa
    move v2, v0

    :goto_1ab
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v3, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v2, v3, :cond_1c1

    move v2, v0

    goto :goto_1c2

    :cond_1c1
    move v2, v1

    :goto_1c2
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-nez v2, :cond_1ef

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "158858a008ba66436bb1885bbf81de0b"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ef

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "56bfe404f227f116c04043d49233d65d"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    goto :goto_1ef

    :cond_1ed
    move v2, v1

    goto :goto_1f0

    :cond_1ef
    :goto_1ef
    move v2, v0

    :goto_1f0
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->HIDE_USER_PRESENT_ANIMATION:Z

    const-string v2, "ro.config.miui_magic_window_enable"

    invoke-static {v2, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystemProperties(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    const-string v2, "Meitu"

    sget-object v3, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sRotationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/theme/icons_version_1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v0

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->USE_LIST_HOTSEATS:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsFixedRotating:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportLaunchPairApp()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sDisplayListenerRegistered:Z

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$6;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$6;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    new-instance v2, Lmiui/content/res/ThemeValues;

    invoke-direct {v2}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_260

    move v0, v1

    :cond_260
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_268

    move v0, v1

    goto :goto_269

    :cond_268
    const/4 v0, 0x2

    :goto_269
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method static synthetic access$100(I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setRotation(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sRotationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    return p0
.end method

.method public static addDisplayRotationChangedListener(Lcom/miui/home/launcher/DeviceConfig$OnDisplayRotationChangedListener;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sRotationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static backupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    return v3

    :cond_15
    const-string v2, "pref_key_auto_backup_time"

    const-wide/16 v4, -0x1

    invoke-static {p0, v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    cmp-long v0, v6, v4

    if-eqz v0, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v4, v6

    if-gez v0, :cond_4a

    return v2

    :cond_4a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_68

    const-string p1, "pref_key_auto_backup_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onDBBackupFinishedForReorgnize(Landroid/content/Context;)V

    return v2

    :cond_68
    return v3
.end method

.method public static calcAllAppsCellSize(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/DeviceProfile;->calculateAllAppsCellHeight(II)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070577

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getTitleMarginTop()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int p0, v0, v1

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return-void
.end method

.method private static calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultWorkspaceNamePrefix()Ljava/lang/String;

    move-result-object p0

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace_rotatable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7d

    :cond_37
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v1

    if-nez v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "meitu_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_private_model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7d
    :goto_7d
    return-object p0
.end method

.method private static final calcGridSize(Landroid/content/Context;Z)V
    .locals 4

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_27

    :cond_21
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v1

    :goto_27
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingWidth(I)V

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v1, :cond_46

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-nez v1, :cond_46

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    goto :goto_50

    :cond_46
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    :goto_50
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellsCountConfig(Landroid/content/Context;Z)V

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calculateHotseatMaxCount()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setHotseatMaxCount(I)V

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return-void
.end method

.method private static calcHotSeatsHeight(Landroid/content/Context;Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result p1

    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_5f

    :cond_17
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->USE_LIST_HOTSEATS:Z

    if-eqz p1, :cond_23

    const p1, 0x7f0701c6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_54

    :cond_23
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_37

    const p1, 0x7f0701c8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_54

    :cond_37
    const p1, 0x7f0701c7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_54

    :cond_3f
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_4d

    const p1, 0x7f0701c9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_54

    :cond_4d
    const p1, 0x7f0701c5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_54
    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getHotSeatHeightScaleWithoutSearchBar()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p1, p0

    :goto_5f
    return p1
.end method

.method private static calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-eqz p1, :cond_1f

    const p1, 0x7f0704be

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginTop(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result p0

    add-int v1, p1, p0

    :cond_1f
    return v1
.end method

.method private static calcHotSeatsMarginTop(Landroid/content/Context;Z)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_e

    const p1, 0x7f0701d3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_15

    :cond_e
    const p1, 0x7f0701d2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_15
    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getHotSeatMarginScale()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static calcIconSize(Landroid/content/res/Resources;)V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_16

    :cond_e
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    :goto_16
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_26

    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2e

    :cond_26
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    :goto_2e
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    const v1, 0x7f0701da

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    const v1, 0x7f0701db

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return-void
.end method

.method private static final calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f070518

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    return-void
.end method

.method private static calcSearchBarMarginBottom(Landroid/content/Context;Z)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c0

    const v2, 0x7f0704c1

    if-eqz p1, :cond_37

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v1, v0, p0

    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    if-ge v1, p1, :cond_48

    const-string p1, "Launcher.DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please check navigationBar height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_37
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    goto :goto_48

    :cond_43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    :cond_48
    :goto_48
    int-to-float p0, v0

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getSearchBarMarginScale()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static calcSearchBarMarginTop(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0704c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getSearchBarMarginScale()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static calcSearchBarWidth(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    const v2, 0x7f0700ac

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const v1, 0x7f0701d5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2a

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2a
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070137

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr p0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static calculateHotseatMaxCount()I
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    return v0

    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x5

    return v0

    :cond_12
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    div-int/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    div-int v2, v0, v1

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static checkDarkenWallpaperSupport(Landroid/content/Context;)Z
    .locals 7

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_19} :catch_23

    const-wide/32 v5, 0xc08ef42

    cmp-long p0, v3, v5

    if-ltz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_27
    return v2
.end method

.method public static checkIsAccessibilityEnabledAsync()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$mTAX8cV9FrYm0VynwamfDIxfLR0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$mTAX8cV9FrYm0VynwamfDIxfLR0;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsInSnapShotMode()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return-void
.end method

.method static checkIsNetworkConnectedAsync()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportSplitWindow()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->reflectSystemSupportSplitWindow()Z

    move-result v0

    return v0

    :cond_9
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_16
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->reflectSystemSupportSplitWindow()Z

    move-result v0

    return v0
.end method

.method public static checkIsTetheringSupported()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$aTav4r1teYU_X1fuIVcQCVpowSY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$aTav4r1teYU_X1fuIVcQCVpowSY;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSearchBarSupport(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return-void
.end method

.method public static checkSettingTitle()V
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method private static checkSysUiStatusBarHiddenFlagChanged(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/DeviceConfig$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DeviceConfig$7;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSystemIsSupportHotSeatsBlur()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.internal.graphics.drawable.BackgroundBlurDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getBlurVersion"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    const-string v2, "Launcher.DeviceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSystemIsSupportHotSeatsBlur: isSupportHotSeatsBlur = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_36

    move v0, v1

    goto :goto_3e

    :catch_36
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "checkSystemIsSupportHotSeatsBlur: reflect error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return v0
.end method

.method public static checkSystemIsSupportMultiWindow()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "android.util.MiuiMultiWindowUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "supportSplitScreen"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Launcher.DeviceConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSystemIsSupportMultiWindow: isSupportMultiWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "checkSystemIsSupportMultiWindow: reflect error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return v0
.end method

.method public static checkSystemUIFsgVersion()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_20

    return-void

    :cond_20
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static confirmCellsCount(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, "Launcher.DeviceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cellCountX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellCountY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_home_screen_cells_size"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static doLauncherHavePaddingTopForStatusBarAndNotch()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static final finishMigratingDB()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    return-void
.end method

.method public static getAllAppRecommendDividerPaddingBottom()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return v0
.end method

.method public static getAllAppRecommendDividerPaddingTop()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    return v0
.end method

.method public static getAllAppsBackgroundAlpha()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return v0
.end method

.method public static getAllAppsCellHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    return v0
.end method

.method public static getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public static getAllAppsRecommendCount()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return v0
.end method

.method public static getApplicationIconContainerHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return v0
.end method

.method public static getApplicationIconContainerWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    return v0
.end method

.method private static final getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v0

    invoke-static {v1, v2}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v1

    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    if-nez v0, :cond_20

    if-eqz v1, :cond_20

    return-object p1

    :cond_20
    if-eqz v0, :cond_25

    if-nez v1, :cond_25

    return-object p0

    :cond_25
    const/4 v0, 0x0

    aget v1, v3, v0

    aget v4, v2, v0

    if-ne v1, v4, :cond_60

    const/4 v0, 0x1

    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v4, v2, v0

    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_42

    return-object p0

    :cond_42
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v2, v2, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_57

    return-object p1

    :cond_57
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ge v0, v1, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object p0, p1

    :goto_5f
    return-object p0

    :cond_60
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v4, v2, v0

    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_75

    return-object p0

    :cond_75
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v2, v2, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_8a

    return-object p1

    :cond_8a
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-ge v0, v1, :cond_91

    goto :goto_92

    :cond_91
    move-object p0, p1

    :goto_92
    return-object p0
.end method

.method private static getCellConfigXSpKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pref_key_cell_x_no_word"

    goto :goto_b

    :cond_9
    const-string v0, "pref_key_cell_x"

    :goto_b
    return-object v0
.end method

.method private static getCellConfigYSpKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pref_key_cell_y_no_word"

    goto :goto_b

    :cond_9
    const-string v0, "pref_key_cell_y"

    :goto_b
    return-object v0
.end method

.method private static final getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    :cond_21
    return-object v1
.end method

.method public static final getCellCountX()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    return v0
.end method

.method public static final getCellCountXDef(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    return p0
.end method

.method public static getCellCountXDef(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef(Landroid/content/Context;)I

    move-result p0

    goto :goto_d

    :cond_b
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    :goto_d
    return p0
.end method

.method public static getCellCountXDrawerMode()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    return v0
.end method

.method public static getCellCountXMax(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    return p0
.end method

.method public static getCellCountXMin(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    return p0
.end method

.method public static final getCellCountY()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    return v0
.end method

.method public static final getCellCountYDef(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    return p0
.end method

.method public static getCellCountYMax(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return p0
.end method

.method public static getCellCountYMin(Landroid/content/Context;)I
    .locals 0

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    return p0
.end method

.method public static final getCellHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public static getCellHorizontalSpacing()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellVerticalSpacing()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    return v0
.end method

.method public static final getCellWidth()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWidth()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingHeight()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingWidth()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingWidth()I

    move-result v0

    return v0
.end method

.method public static getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;
    .locals 5

    const-string v0, "Launcher.DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingAppDefaultDisappearRect, Rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceRealHeight()I

    move-result v1

    goto :goto_2d

    :cond_29
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceRealWidth()I

    move-result v1

    :goto_2d
    if-eqz v0, :cond_34

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceRealWidth()I

    move-result v0

    goto :goto_38

    :cond_34
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceRealHeight()I

    move-result v0

    :goto_38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, v1

    const/high16 v3, 0x41700000    # 15.0f

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v0, v4

    div-float/2addr v3, v4

    sub-float v4, v1, v3

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    sub-float v4, v0, v3

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v1

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDefaultScreenId()J
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCurrentDefaultScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDefaultScreenIdFromPreference()J
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentScreenCells()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method private static final getDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseNamePrefix()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "_rotatable"

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 3

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getXmlId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_18

    const p1, 0x7f13000f

    goto :goto_1b

    :cond_18
    const p1, 0x7f130022

    :goto_1b
    move v0, p1

    goto :goto_5e

    :cond_1d
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getPadDefaultWorkspaceXmlId()I

    move-result p1

    move v0, p1

    goto :goto_59

    :cond_29
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_59

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    const/4 v1, 0x6

    if-lt p1, v1, :cond_45

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz p1, :cond_40

    const p1, 0x7f13001f

    move v0, p1

    goto :goto_59

    :cond_40
    const p1, 0x7f13000b

    move v0, p1

    goto :goto_59

    :cond_45
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_59

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz p1, :cond_55

    const p1, 0x7f13001e

    move v0, p1

    goto :goto_59

    :cond_55
    const p1, 0x7f130009

    move v0, p1

    :cond_59
    :goto_59
    if-nez v0, :cond_5e

    const v0, 0x7f13000d

    :cond_5e
    :goto_5e
    const-string p1, "Launcher.DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get default workspace name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static declared-synchronized getDesignedDefaultScreenId(Landroid/content/Context;)J
    .locals 7

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget-wide v3, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_69

    monitor-exit v0

    return-wide v1

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_27
    :goto_27
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_61

    :cond_34
    const/4 v5, 0x1

    if-eq v4, v5, :cond_61

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    goto :goto_27

    :cond_3b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_27

    :cond_61
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_63} :catch_65
    .catchall {:try_start_f .. :try_end_63} :catchall_69

    monitor-exit v0

    return-wide v1

    :catch_65
    :try_start_65
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_69

    monitor-exit v0

    return-wide v1

    :catchall_69
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getDeviceHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceHeight()I

    move-result v0

    return v0
.end method

.method public static final getDeviceRealHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealHeight:I

    return v0
.end method

.method public static final getDeviceRealWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealWidth:I

    return v0
.end method

.method public static getDeviceType()Lcom/miui/home/launcher/DeviceType;
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    :cond_7
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    :cond_14
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    return-object v0
.end method

.method public static final getDeviceWidth()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceWidth()I

    move-result v0

    return v0
.end method

.method private static getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "dimen"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move v0, p0

    goto :goto_1b

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static getDragIconScaleRatio()F
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    return v0
.end method

.method public static final getEditModeTopMenuMarginTop()I
    .locals 2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f070125

    goto :goto_1b

    :cond_e
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f070126

    goto :goto_1b

    :cond_18
    const v0, 0x7f070124

    :goto_1b
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getFolderCellHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    return v0
.end method

.method public static getFolderCellMaxWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    return v0
.end method

.method public static getGlobalSwipeUpPackage(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHotSeatsCellContentHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellContentHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellWidth()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsMarginBottom()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getHotseatMaxCount()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    return v0
.end method

.method public static getIterateDirection(Z)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :cond_a
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0
.end method

.method public static getLastRotation()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return v0
.end method

.method public static final getMiuiTitleHeight()I
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v1

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getMiuiWidgetDefaultPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetDefaultPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final getMiuiWidgetPaddingTop()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    return v0
.end method

.method public static final getMiuiWidgetSizeSpec(IIZ)J
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNetWorkConnectedString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNetWorkConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "connected"

    goto :goto_b

    :cond_9
    const-string v0, "no_connected"

    :goto_b
    return-object v0
.end method

.method public static getNotchEditModePaddingTopDelta()I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getNotchHeight(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "com.android.systemui"

    const-string v1, "notch_height"

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$8;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$8;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    array-length v2, v1

    if-nez v2, :cond_14

    goto :goto_44

    :cond_14
    const/4 v2, 0x0

    move-object v3, v0

    :goto_16
    array-length v4, v1

    if-ge v2, v4, :cond_22

    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    const-string v1, "Launcher.DeviceConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find optimal db "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    return-object v0

    :cond_3f
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_45

    return-object p0

    :cond_44
    :goto_44
    return-object v0

    :catch_45
    move-exception p0

    const-string p1, "Launcher.DeviceConfig"

    const-string v1, "find db fail"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getPadDefaultWorkspaceXmlId()I
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getPadPortXmlId()I

    move-result v0

    return v0

    :cond_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getPadLandXmlId()I

    move-result v0

    return v0
.end method

.method private static getPadLandXmlId()I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f13002e

    return v0

    :cond_10
    const v0, 0x7f13002d

    return v0

    :cond_14
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f13002a

    return v0

    :cond_1e
    const v0, 0x7f130029

    return v0
.end method

.method private static getPadPortXmlId()I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f13002c

    return v0

    :cond_10
    const v0, 0x7f13002b

    return v0

    :cond_14
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSecondSpace()Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f130028

    return v0

    :cond_1e
    const v0, 0x7f130027

    return v0
.end method

.method public static getQuickCallCellVerticalSpacing()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    return v0
.end method

.method public static getQuickEditScreenRatio()F
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    return v0
.end method

.method public static getRealScreenHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getRealScreenHeight()I

    move-result v0

    return v0
.end method

.method public static final getRecommendGridPaddingBottom()I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    :goto_a
    return v0
.end method

.method public static getRotation()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method public static final getScreenDensity()F
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    return v0
.end method

.method public static getScreenDensityDpi()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static final getScreenHeight()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenLongSize()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenLongSize()I

    move-result v0

    return v0
.end method

.method public static getScreenShortSize()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenShortSize()I

    move-result v0

    return v0
.end method

.method public static final getScreenWidth()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static getSearchBarHolderVerticalPadding(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1d

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1d
    return p0
.end method

.method public static getSearchBarLightThreshold()F
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    return v0
.end method

.method public static getSearchBarMarginBottom()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_url"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return v0
.end method

.method public static getSearchBarWidthDelta()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return v0
.end method

.method public static getSettingTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "home_title"

    const-string v1, "string"

    const-string v2, "com.android.settings"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "getSettingTitle failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutMenuDisappearThreshold()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    return v0
.end method

.method public static final getStatusBarHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    return v0
.end method

.method public static getSystemUIFsgVersion()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getSystemUiStatusBarHiddenFlag()I
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSysUiStatusBarHiddenFlagChanged:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_9

    :cond_7
    const/high16 v0, 0x100000

    :goto_9
    return v0
.end method

.method public static getThemeValues()Lmiui/content/res/ThemeValues;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    return-object v0
.end method

.method public static getWidgetCellDefaultHeight()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    return v0
.end method

.method public static getWidgetCellDefaultWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    return v0
.end method

.method public static final getWidgetSpanX(IZ)I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->mapFromPxToSpanX(IZ)I

    move-result p0

    return p0
.end method

.method public static final getWidgetSpanY(IZ)I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->mapFromPxToSpanY(IZ)I

    move-result p0

    return p0
.end method

.method public static final getWorkspaceCellPaddingBottom()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceCellPaddingSide()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getWorkspaceCellPaddingSide()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceCellPaddingTop()I
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    return v0

    :cond_d
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getWorkspaceCellPaddingTopNotch()I

    move-result v0

    goto :goto_26

    :cond_20
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getWorkspaceCellPaddingTop()I

    move-result v0

    :goto_26
    return v0

    :cond_27
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceNormalModeCellPaddingTop()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottom()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    return v0
.end method

.method public static final getWorkspaceInvalidateEdgeWidth()I
    .locals 1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    return v0
.end method

.method private static final getWorkspaceNormalModeCellPaddingTop()I
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    return v0

    :cond_9
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    return v0
.end method

.method public static getWorkspacePaddingTop(Landroid/content/Context;)F
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    goto :goto_17

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070511

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_17
    return p0
.end method

.method private static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static hasNavigationBar()Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_5b

    :try_start_8
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDisplayId"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_51} :catch_52

    return v0

    :catch_52
    move-exception v0

    const-string v1, "Launcher.DeviceConfig"

    const-string v3, "hasNavigationBar Q"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    :cond_5b
    :try_start_5b
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_87} :catch_88

    return v0

    :catch_88
    move-exception v0

    const-string v1, "Launcher.DeviceConfig"

    const-string v3, "hasNavigationBar"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_90
    return v2
.end method

.method private ignoreNumOfReadRowsAndCols()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private initDeviceProfile(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/miui/home/launcher/DeviceProfile$Builder;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/DeviceProfile$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealWidth:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealHeight:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealWidth:I

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealHeight:I

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070566

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setWorkspacePaddingTop(I)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v2

    const v3, 0x7f070567

    if-eqz v2, :cond_60

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07056a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_68

    :cond_60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_68
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setWorkspaceCellPaddingSide(I)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setLandscape(Z)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealWidth:I

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sDeviceRealHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07056b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setWorkspacePaddingTop(I)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070569

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_ac

    :cond_a4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_ac
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setWorkspaceCellPaddingSide(I)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setLandscape(Z)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    return-void
.end method

.method public static is720Mode()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    return v0
.end method

.method public static declared-synchronized isAccessibilityEnabled()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAppStoreEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return v0
.end method

.method public static isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.miui.personalassistant.preferences.key_cta_welcome"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq v1, p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z
    .locals 7

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v5

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v6, :cond_22

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v6, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :cond_22
    :goto_22
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-nez v2, :cond_2d

    move v4, v5

    :cond_2d
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_57

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_50

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_4a

    goto :goto_50

    :cond_4a
    const-string v0, "pref_key_use_theme_cells_size"

    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_61

    :cond_50
    :goto_50
    const-string v0, "pref_key_use_theme_cells_size"

    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    goto :goto_69

    :cond_57
    if-ne v0, v1, :cond_63

    if-eq v3, v4, :cond_5c

    goto :goto_63

    :cond_5c
    const-string v0, "pref_key_use_theme_cells_size"

    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_61
    move v0, v5

    goto :goto_69

    :cond_63
    :goto_63
    const-string v0, "pref_key_use_theme_cells_size"

    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    :goto_69
    instance-of v1, p2, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v1, :cond_83

    if-nez v0, :cond_73

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-eqz v1, :cond_74

    :cond_73
    move v5, v6

    :cond_74
    move-object v1, p2

    check-cast v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getLoadResCellConfig()Z

    move-result v2

    if-eq v2, v5, :cond_83

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    invoke-static {p2, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    :cond_83
    return v0
.end method

.method public static isCotaOrangeDevice()Z
    .locals 3

    const-string v0, "OR"

    const-string v1, "persist.sys.cota.carrier"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static isDarkMode()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v0
.end method

.method public static isDarkModeChanged()Z
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v3

    :goto_18
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    if-eq v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v2
.end method

.method public static isDarkenWholeWallpaper(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "darken_wallpaper_under_dark_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDefaultIcon()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return v0
.end method

.method public static isDisableOldQuickSwitch()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isFirstBoot()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstBoot"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    return v0

    :catch_2f
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "isFirstBoot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isFoldDevice()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    return v0
.end method

.method public static isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_OPTION_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchBrowserEnable(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public static isGlobalSearchEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_home_screen_search_bar"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_search_bar_baidu_icon"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static isHasNavigationBar()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    return v0
.end method

.method public static isHideNotch()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    return v0
.end method

.method public static isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHotseatsAppTitleHided()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    return v0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    return v0
.end method

.method public static isInMultiWindowModeCompatAndroidT()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-nez v0, :cond_d

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isInSecondSpace()Z
    .locals 2

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_16

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getSecondSpaceId()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static isInSnapshotMode()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return v0
.end method

.method public static isInSplitSelectState()Z
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    goto :goto_13

    :cond_b
    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "isInSplitSelectState: launcher is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->isInSplitSelectState()Z

    move-result v0

    goto :goto_22

    :cond_1a
    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "isInSplitSelectState: recentsView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public static final isInvalidateCellPosition(IIII)Z
    .locals 0

    add-int/2addr p0, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    if-gt p0, p2, :cond_11

    add-int/2addr p1, p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p0

    if-le p1, p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isIsFixedRotating()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsFixedRotating:Z

    return v0
.end method

.method public static isKeepRecentsViewPortrait()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static isLayoutRtl()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    return v0
.end method

.method public static isLightBgForStatusBar(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_27

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p0

    return p0

    :cond_27
    return v0
.end method

.method public static final isMigratingDBFromOthers()Z
    .locals 2

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    :catch_11
    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "reflect failed when get is miui lite device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isNaturalWidth720p(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getNaturalWidth(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x2d0

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static declared-synchronized isNetWorkConnected()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPhone()Z
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static final isRecommendServerEnable()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRotatable()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return v0
.end method

.method public static final isScreenOrientationChanged()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    return v0
.end method

.method public static final isScreenOrientationLandscape()Z
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenSizeChanged()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    return v0
.end method

.method public static isSearchBarVisibleChanged()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    return v0
.end method

.method public static isShowGestureLine()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    return v0
.end method

.method public static isShowNavigationBar()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isShowNotch()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideNotch()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isShowSearchBar()Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z
    .locals 3

    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    const/high16 v1, 0x41300000    # 11.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_23

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "infinity_display_remove_from_other_personal_settings"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_24

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :cond_24
    :goto_24
    return v1
.end method

.method public static isSupportAndroidTAppPair()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    return v0
.end method

.method public static final isSupportCompleteAnimation()Z
    .locals 2

    const-string v0, "feature_complete_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportHideAndShowStatusBar()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportLaunchPairApp()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityOptions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setEnterAppPairFromShortCut"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    const-string v2, "Launcher.DeviceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportLaunchPairApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2b} :catch_2c

    return v1

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isSupportMultiWindow()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchBar()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return v0
.end method

.method public static isSupportSearchBarLongPress(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_long_press_action"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static isSupportSearchBarTransfer(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0
.end method

.method public static isSupportSearchBarXiaoAi(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_show_xiaoai_icon"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public static isSupportWideColorGamutDevice(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DeviceConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWCGEnabled() isSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "c66ef8e10868698335d019edbc82de9b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "d76169a6ee7af8a191e04d4745fdfe1b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "f1405b8e61bcea02c60bb1d376b3e57b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_44
    if-eqz p0, :cond_48

    const/4 p0, 0x1

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    return p0
.end method

.method public static isSystemSupportHotSeatsBlur()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportHotSeatsBlur:Z

    return v0
.end method

.method public static isSystemSupportMultiWindow()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportMultiWindow:Z

    return v0
.end method

.method public static isTetheringSupported()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return v0
.end method

.method public static isTheSpanXYAvailable(II)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->isTheSpanXYAvailable(II)Z

    move-result p0

    return p0
.end method

.method public static isThemeCoverCellConfig()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    return v0
.end method

.method public static isUseFixedRotationTransform()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isUseGoogleMinusScreen()Z
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    if-eqz v0, :cond_4b

    :cond_e
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantGoogle()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_2c
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_3a
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v0, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    :goto_4c
    return v0
.end method

.method public static isWCGEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_optimize_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Launcher.DeviceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWCGEnabled() colorMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_40

    const-string v1, "default_display_color_mode"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Launcher.DeviceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWCGEnabled() default_display_color_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v2, 0x4

    if-ne v1, v2, :cond_64

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "color_space_mode"

    invoke-static {p0, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v2, "Launcher.DeviceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWCGEnabled() colorSpace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_6c

    goto :goto_65

    :cond_64
    move p0, v0

    :goto_65
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6b

    if-ne p0, v3, :cond_74

    :cond_6b
    return v3

    :catch_6c
    move-exception p0

    const-string v1, "Launcher.DeviceConfig"

    const-string v2, "isWCGEnabled() "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_74
    return v0
.end method

.method public static final isXLargeMode()Z
    .locals 2

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static keepStatusBarShowingForBetterPerformance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_7
    const-string p0, ""

    :goto_9
    return-object p0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$3(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    if-eqz p1, :cond_9

    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$4(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    return-void

    :cond_b
    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$6(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VI9vV1XELYZAayWDaMEzABIxw2s;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VI9vV1XELYZAayWDaMEzABIxw2s;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$ITx2gJSNI_HWtmqfsQWy9u3fVh8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$ITx2gJSNI_HWtmqfsQWy9u3fVh8;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7g8sgpDUoOfHjX_szIL7YhIjRBM;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7g8sgpDUoOfHjX_szIL7YhIjRBM;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$7()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$MeEaghk2acngCaox3Ma8ZoNVrS0;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9jLIzWKN7Cn3cU9-pnFcDwM4Hv4;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9jLIzWKN7Cn3cU9-pnFcDwM4Hv4;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsNetworkConnectedAsync$8()V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsNetWorkConnected(Z)V

    return-void
.end method

.method static synthetic lambda$checkIsTetheringSupported$9()V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ConnectivityHelper;->isTetheringSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return-void
.end method

.method static synthetic lambda$checkSystemUIFsgVersion$10()V
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "systemui_fsg_version"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic lambda$resolveMiuiVersionAndCheckUpgrade$11(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    const-string v0, "ota"

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_f
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;
    .locals 0

    new-instance p0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-direct {p0}, Lcom/miui/home/launcher/DeviceConfig;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$static$1()V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public static loadAllAppsCellCountX(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    goto :goto_1a

    :cond_14
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    :goto_1a
    return-void
.end method

.method private static loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return-void
.end method

.method private static final loadCellsCountConfig(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_79

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_79

    :cond_11
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_30

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_30

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_30

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-eq v3, v4, :cond_30

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    if-eqz v3, :cond_87

    :cond_30
    if-eqz p1, :cond_3a

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_3a

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ne v3, v4, :cond_87

    :cond_3a
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    goto :goto_87

    :cond_79
    :goto_79
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    :cond_87
    :goto_87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_97

    const/4 v3, 0x3

    goto :goto_98

    :cond_97
    const/4 v3, 0x2

    :goto_98
    mul-int/2addr v1, v3

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsRecommendCount(I)V

    if-eqz v0, :cond_a3

    const-string v1, "by_theme"

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    goto :goto_be

    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    :goto_be
    const-string v1, "Launcher.DeviceConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCellsCountConfig ignoreCellCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " useThemeCellsSize = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_f2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07057d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    goto :goto_ff

    :cond_f2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07057c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    :goto_ff
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070565

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_11e

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070570

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_129

    :cond_11e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07056f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_129
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070471

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v0, p1, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_17d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_17f

    :cond_17d
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    :goto_17f
    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070166

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p1

    if-nez p1, :cond_1fd

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v0, v2

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v0, v2

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    :cond_1fd
    const-string p1, "Launcher.DeviceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "widgetCellMeasureWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgetCellMeasureHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcAllAppsCellSize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    return-void
.end method

.method private loadDensity(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return-void
.end method

.method private static loadThemeResource(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0020

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0022

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0021

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_85

    goto :goto_87

    :cond_85
    const/4 p0, 0x0

    goto :goto_88

    :cond_87
    :goto_87
    const/4 p0, 0x1

    :goto_88
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8b

    goto :goto_93

    :catch_8b
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "loadThemeResource error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_93
    return-void
.end method

.method public static mapFromResSizeToDisplaySize(IIZ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->mapFromResSizeToDisplaySize(IIZ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final needHideLockProvider(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static needHideMinusScreen()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5_PLUS:Z

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static final needHideThemeManager(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "needHideThemeManager"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final needRecalculateWidgetSpan()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    return v0
.end method

.method public static needShowCellsEntry(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_19

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_17

    goto :goto_19

    :cond_17
    move v0, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    const-string v1, "pref_key_use_theme_cells_size"

    invoke-static {p0, v1, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz v0, :cond_25

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    :goto_26
    return v2
.end method

.method public static final needShowMisplacedTips()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    return v0
.end method

.method private static reflectSystemSupportSplitWindow()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    const-string v1, "android.util.MiuiMultiWindowUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "isSupportSplitScreenFeature"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v2, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_33

    :cond_1d
    const-string v1, "android.util.MiuiMultiWindowUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "supportSplitScreen"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v2, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_33
    const-string v1, "Launcher.DeviceConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reflectSystemSupportSplitWindow: isReflectSystemSupportSplitWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "reflectSystemSupportSplitWindow: reflect error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return v0
.end method

.method public static removeDisplayRotationChangedListener(Lcom/miui/home/launcher/DeviceConfig$OnDisplayRotationChangedListener;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sRotationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeDownloadInstallInfo(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method public static final removeInvalidateDatabase(Landroid/content/Context;Z)V
    .locals 6

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    :try_start_c
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_81

    if-eqz p1, :cond_23

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_81

    :cond_23
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_86

    aget-object v4, v0, v3

    if-eqz p1, :cond_67

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    const-string v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string v5, "app_category_new.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string v5, "app_status.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string v5, "assistant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string v5, "apps_data.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    :cond_67
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v5

    if-eqz v5, :cond_76

    const-string v5, "mistat.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_7e

    :cond_76
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7e} :catch_82

    :cond_7e
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_81
    :goto_81
    return-void

    :catch_82
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_86
    return-void
.end method

.method public static requestIsAppStoreEnabled()V
    .locals 1

    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->isAppStoreEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return-void
.end method

.method public static resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 3

    const-string v0, "miui_version"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v2, "V11"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "V11"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$hXIhTGiIqZHOu_xKPRMj30cZUa0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$hXIhTGiIqZHOu_xKPRMj30cZUa0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_2b
    const-string v0, "miui_version"

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_3d
    return v0
.end method

.method public static saveCurrentDefaultScreenId(J)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setAllAppsBackgroundAlpha(I)V
    .locals 0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return-void
.end method

.method public static setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static setAllAppsRecommendCount(I)V
    .locals 0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return-void
.end method

.method public static setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setGlobalSearchEnable(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setHotseatMaxCount(I)V
    .locals 0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return-void
.end method

.method public static declared-synchronized setIsAccessibilityEnabled(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setIsFixedRotating(Z)V
    .locals 2

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsFixedRotating:Z

    const-string p0, "Launcher.DeviceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsFixedRotating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsFixedRotating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static declared-synchronized setIsNetWorkConnected(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLastRotation(I)V
    .locals 0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return-void
.end method

.method public static setRotatable(Z)V
    .locals 1

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    goto :goto_17

    :cond_f
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    :goto_17
    return-void
.end method

.method private static setRotation(I)V
    .locals 0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return-void
.end method

.method public static setScreenCells(Landroid/content/Context;II)Z
    .locals 6

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    const-string p0, "Launcher.DeviceConfig"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cellCountX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cellCountY = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2b
    const-string v0, "pref_key_use_theme_cells_size"

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_34

    return v1

    :cond_34
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-lt p1, v0, :cond_50

    if-gt p1, v2, :cond_50

    if-lt p2, v3, :cond_50

    if-le p2, v4, :cond_4e

    goto :goto_50

    :cond_4e
    move v0, v1

    goto :goto_51

    :cond_50
    :goto_50
    move v0, v5

    :goto_51
    if-eqz v0, :cond_54

    return v1

    :cond_54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    return v5
.end method

.method public static setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "use_gesture_version_three"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_b
    return-void
.end method

.method private setWorkspaceCellPadding(Landroid/content/res/Resources;)V
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f070569

    goto :goto_17

    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f070568

    goto :goto_17

    :cond_14
    const v0, 0x7f070567

    :goto_17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    const v0, 0x7f07056b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    const v1, 0x7f070563

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3c

    const v0, 0x7f070581

    goto :goto_3f

    :cond_3c
    const v0, 0x7f070580

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    return-void
.end method

.method public static showBackGestureInEditingMode()Z
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static showFsTransAnimation()Z
    .locals 2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static supportAssistant()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    xor-int/2addr v0, v1

    return v0

    :cond_9
    return v1
.end method

.method public static supportAssistant(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static supportCheckRegionalWallpaper()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportDarkMode()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return v0
.end method

.method public static supportIconTextShadow()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportsMultiWindowAndNotInSecuritySpace()Z
    .locals 2

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-ne v0, v1, :cond_10

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static final tryToMigrateDefaultDatabase(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_76

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_76

    const-string v2, "Launcher.DeviceConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrate db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v2, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v0, 0x0

    aget v0, v1, v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    aget v0, v1, v3

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_76

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    if-nez v0, :cond_76

    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    :cond_76
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_7d

    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    :cond_7d
    return-void
.end method

.method private updateDeviceProfileSize(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v2, v0, v1, p1}, Lcom/miui/home/launcher/DeviceProfile;->updateDeviceSize(IILandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public static updateIconPositionForMiui11Upgrade()Z
    .locals 2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return v0
.end method

.method public static updateIsDefaultIcon(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_default_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return-void
.end method

.method public static updateLastConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9

    if-eqz p0, :cond_9

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_9
    return-void
.end method

.method public static updateSearchBarTransferEnable(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_screen_search_bar_transfer"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1c
    return-void
.end method

.method public static useNavigationBarLayoutMode()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static useOldVersionIcons()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    return v0
.end method

.method public static usingFsGesture()Z
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    return v0
.end method


# virtual methods
.method public Init(Landroid/content/Context;Z)Z
    .locals 7

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    invoke-static {p1}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->setWindowRadius(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadThemeResource(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()Z

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x3

    goto :goto_32

    :cond_31
    const/4 v4, 0x2

    :goto_32
    mul-int/2addr v3, v4

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsRecommendCount(I)V

    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->checkNoWordSettings(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v4, :cond_49

    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    sget-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    :cond_49
    invoke-static {v3, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->enableAndResetCache()V

    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->resetCache()V

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadDensity(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_74

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    goto :goto_76

    :cond_74
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    :goto_76
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-nez v5, :cond_82

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    goto :goto_aa

    :cond_82
    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_8e

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->clearWallpaperSrc()V

    :cond_8e
    if-eqz v6, :cond_93

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    goto :goto_95

    :cond_93
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    :goto_95
    const v6, -0x3fffed7c

    and-int/2addr v5, v6

    if-nez v5, :cond_a5

    if-nez p2, :cond_a5

    sget-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v5, :cond_a5

    if-eqz v0, :cond_a4

    goto :goto_a5

    :cond_a4
    return v1

    :cond_a5
    :goto_a5
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :goto_aa
    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/DeviceConfig;->isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->getInitialDisplaySize()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_c6

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/16 v6, 0x2d0

    if-le v5, v6, :cond_c6

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isNaturalWidth720p(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c6

    move v5, v2

    goto :goto_c7

    :cond_c6
    move v5, v1

    :goto_c7
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    sget-object v5, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v5}, Lcom/miui/home/LauncherDecoupleHelper;->migratePocoData()V

    invoke-static {v3}, Lcom/miui/home/launcher/DeviceConfig;->calcIconSize(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070127

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    const v5, 0x7f070578

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    const v5, 0x7f070511

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    const v5, 0x7f0704b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    const v5, 0x7f07057c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    const v5, 0x7f07057b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    const v5, 0x7f07057f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    const v5, 0x7f07057e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    const v5, 0x7f070582

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v5

    if-eqz v5, :cond_133

    const v5, 0x7f070581

    goto :goto_136

    :cond_133
    const v5, 0x7f070580

    :goto_136
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    const v5, 0x7f070208

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    invoke-static {p1, v3}, Lcom/miui/home/launcher/DeviceConfig;->calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->hasNavigationBar()Z

    move-result v5

    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    const v5, 0x7f090008

    invoke-virtual {v3, v5, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->initDeviceProfile(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    invoke-static {p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1003b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->RECOMMEND_ICON_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->RECOMMEND_ICON_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerHeight:I

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-eqz p2, :cond_1a9

    if-nez v0, :cond_1a9

    sget-object p2, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {p2}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_1ac

    :cond_1a9
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->confirmCellsCount(Landroid/content/Context;)V

    :cond_1ac
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsTetheringSupported()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSettingTitle()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x4a

    int-to-float p2, p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    iget p2, v4, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1d6

    move v1, v2

    :cond_1d6
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704e2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f09000c

    invoke-virtual {p2, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    const/high16 p2, 0x7f090000

    invoke-virtual {v3, p2, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_22d

    invoke-static {}, Lcom/github/promeg/pinyinhelper/Pinyin;->newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/library/utils/CustomPinyinDict;->getInstance()Lcom/miui/home/library/utils/CustomPinyinDict;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    goto :goto_230

    :cond_22d
    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    :goto_230
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkDarkenWallpaperSupport(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->initDataPathFroClipIcon()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemIsSupportMultiWindow()Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportMultiWindow:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemIsSupportHotSeatsBlur()Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSystemSupportHotSeatsBlur:Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportSplitWindow()Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindow:Z

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSysUiStatusBarHiddenFlagChanged(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/util/SmallWindowConfig;->init()V

    invoke-static {}, Lcom/miui/home/launcher/dock/DockGuideUtils;->init()V

    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sDisplayListenerRegistered:Z

    if-nez p2, :cond_281

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sDisplayListenerRegistered:Z

    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setRotation(I)V

    const-string p2, "Launcher.DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, registerDisplayListener, sRotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->isSupportSplitIntents(Landroid/content/ContentResolver;)Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairAppWithLegacyTransition:Z

    return v2
.end method

.method public checkIfIsOrientationChanged(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    if-eq v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_f

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    :cond_f
    return v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    :goto_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_21

    const v0, 0x7f07056a

    goto :goto_24

    :cond_21
    const v0, 0x7f070569

    :goto_24
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;I)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    return-object p1

    :cond_39
    return-object v1
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/DeviceConfig;->ignoreNumOfReadRowsAndCols()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    return-void
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateGestureEnable(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateQuickEditScreenRatio(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v1

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    const v3, 0x7f0704e7

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0704e8

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceProfileSize(Landroid/content/Context;)Z

    move-result v4

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v6, v7}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginTop(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v5}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget v6, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    add-int/2addr v6, v3

    add-int/2addr v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez p2, :cond_105

    if-eqz v4, :cond_104

    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez p2, :cond_104

    goto :goto_105

    :cond_104
    move v1, v2

    :cond_105
    :goto_105
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p2

    sput-object p2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DeviceProfile;->subNavigationBarHeight(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationChanged()Z

    move-result p2

    if-nez p2, :cond_11e

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result p2

    if-eqz p2, :cond_128

    :cond_11e
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    invoke-static {p1, p3}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    :cond_128
    return-void
.end method

.method public setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eq v0, p3, :cond_a

    sput-boolean p3, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    :cond_a
    return-void
.end method

.method public updateGestureEnable(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "force_immersive_nav_bar"

    invoke-static {v0, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v2

    :goto_1e
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_38

    # Dock layout keeps the shown-line profile; SystemUI reads the real setting.
    const/4 p1, 0x0

    if-nez p1, :cond_38

    move p1, v2

    goto :goto_39

    :cond_38
    move p1, v1

    :goto_39
    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz p1, :cond_44

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    if-nez p1, :cond_44

    move v1, v2

    :cond_44
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    return-void
.end method

.method public updateQuickEditScreenRatio(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f09000a

    goto :goto_11

    :cond_e
    const v0, 0x7f090009

    :goto_11
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    return-void
.end method
