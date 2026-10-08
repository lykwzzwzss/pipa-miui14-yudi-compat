.class public interface abstract Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$SingletonHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SPLIT_DARK_COLOR:Ljava/lang/String; = "#323232"

.field public static final DEFAULT_SPLIT_LIGHT_COLOR:Ljava/lang/String; = "#E6E6E6"

.field public static final EMBEDDING_RELAUNCH_DEFAULT:I = 0x0

.field public static final EMBEDDING_RELAUNCH_RELAUNCH:I = 0x2

.field public static final EMBEDDING_RELAUNCH_SKIP_RELAUNCH:I = 0x1

.field public static final SCREEN_ORIENTATION_MIUI_UNSET:I = -0x3


# direct methods
.method public static get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;->isActivityEmbeddingEnable()Z

    move-result v0

    if-eqz v0, :cond_f

    const-class v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    return-object v0

    :cond_f
    new-instance v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$1;

    invoke-direct {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public adaptEmbeddingWindowNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskFragmentStub;Landroid/window/ClientWindowFrames;Lcom/android/server/wm/WindowState;Z)V
    .locals 0

    return-void
.end method

.method public adaptRequestedOrientation(Lcom/android/server/wm/WindowContainer;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public canResumeTop(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public computeTfConfig(Lcom/android/server/wm/TaskFragmentStub;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public enable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoUIRule(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getEmbeddedOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRelaunchState(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleAppsFrame(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public getSplitLineDarkColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "#323232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSplitLineLightColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "#E6E6E6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTaskFragmentStub(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentStub;
    .locals 1

    new-instance v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub$2;-><init>(Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;)V

    return-object v0
.end method

.method public handleBeforeBindApplication(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    return-void
.end method

.method public initWindowHandle([Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isActivityEmbedded(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActivityInFixedOrientation(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAppNeedRelaunch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAppShowDialog(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAppSupportCameraPreview(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSensor(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddedOnScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingEnabledForPackageIncludeAdaptApp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingWindowFullscreen(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMiddleTransition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiIgnoreOrientationRequestDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiSizeCompatEnableInTablet(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedPreventRotation(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCameraPreviewInFixOri(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingCameraWhenEmbedded(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityRotationChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public onActivityStateChange(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public onFreeFormStateChange(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public onTaskFragmentParentRotationChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWindowsVisible(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public overrideOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public resizeSpecialVideoInEmbedded(Lcom/android/server/wm/TaskFragmentStub;Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setEmbeddedEnable(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPendingFreeFormPackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRequestedOrientation(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public shouldAddWindowExtension(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .locals 0

    return-void
.end method

.method public shouldBeAllPortrait(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisableFixedOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisableFixedOrientation(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldRelaunchInEmbeddedWindow(IILcom/android/server/wm/ActivityRecord;)I
    .locals 0

    return p2
.end method

.method public shouldRelaunchInFixedOrientation(IILcom/android/server/wm/ActivityRecord;)I
    .locals 0

    return p2
.end method

.method public shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipCompatMode(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldTfStartChangeTransition(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipChangeTransition(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragmentStub;Lcom/android/server/wm/TaskFragmentStub;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipSnapshotFreeze(Lcom/android/server/wm/SurfaceFreezer$Freezable;Landroid/graphics/Rect;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mStub:Lcom/android/server/wm/TaskFragmentStub;

    invoke-interface {p0, v0, p2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipSnapshotFreeze(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public skipSnapshotFreeze(Lcom/android/server/wm/TaskFragmentStub;Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    return-void
.end method

.method public updateEmbeddedConfiguration(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public updateTouchableRegion(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    return-void
.end method

.method public wmSetResumedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public adjustTFConfigForEmbeddingResizing(Landroid/os/IBinder;ZLjava/lang/String;IILandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method


.method public isEmbeddingDividerEnabledForSelfAdaptApp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


.method public isInFullScreenMiuiEmbedState(Landroid/os/IBinder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


.method public removeOrganizerForEmbeddingDivider(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method


.method public resetMiuiEmbedStateIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 0

    return-void
.end method


.method public skipAppTransitionAnimationForEmbeddingDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


.method public updateConfigurationForEmbeddingDivider(Landroid/content/res/Configuration;Z)V
    .locals 0

    return-void
.end method


.method public updateEmbeddingStateIfNeed(Lcom/android/server/wm/WindowState;)V
    .locals 0

    return-void
.end method


.method public updateResolvedConfigurationForEmbeddingDivider(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method


.method public isFixedOrientationScale(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
