.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionController$TransitContainerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TYPE_ACTIVITY:I = 0x1

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_TASK:I = 0x3

.field private static final TYPE_TASK_FRAGMENT:I = 0x2


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTransitionWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_86

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_86

    :cond_11
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {p1, p2, v8}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v9

    invoke-static {p3}, Lcom/android/server/wm/AppTransitionController;->isTaskAnimationOld(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {v1, v0, v9, v2}, Lcom/android/server/wm/AppTransitionStub;->switchTransitType(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowManagerService;)V

    :cond_2a
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->sendTasksAppeared()V

    :cond_45
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/AppTransition;->setLastAppTransitionTarget(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    const/4 v2, 0x0

    :goto_4d
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_70

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_70
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransition(II)V

    :cond_85
    return-void

    :cond_86
    :goto_86
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;IZ",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3e

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    move-object v11, p2

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2e
    move-object v11, p2

    move-object v4, v3

    move-object/from16 v5, p5

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3e
    move-object v2, p1

    move-object v11, p2

    return-void
.end method

.method private static canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_21

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_27
    if-ltz v1, :cond_3d

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_43
    if-ltz v1, :cond_59

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    :cond_59
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p4, p3, p5, v0}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p4, p3, p5, v1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p4, p3, p5, v1}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method private findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_29
    if-ltz v1, :cond_6b

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3b

    const/4 v0, 0x0

    goto :goto_6b

    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_6a

    :cond_48
    if-eqz v0, :cond_4e

    if-eq v0, v3, :cond_4e

    const/4 v0, 0x0

    goto :goto_6b

    :cond_4e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_56

    const/4 v0, 0x0

    goto :goto_6b

    :cond_56
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    iget v6, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v5, v6, :cond_66

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_66

    const/4 v0, 0x0

    goto :goto_6b

    :cond_66
    move-object v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_6a
    :goto_6a
    const/4 v0, 0x0

    :cond_6b
    :goto_6b
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method static findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method private findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/window/ITaskFragmentOrganizer;

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;-><init>([Landroid/window/ITaskFragmentOrganizer;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_22

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x6b97e41c

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v0, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    return-object v0

    :cond_23
    aget-object v0, v1, v3

    return-object v0
.end method

.method private static getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_c

    move-object/from16 v2, p0

    goto :goto_e

    :cond_c
    move-object/from16 v2, p1

    :goto_e
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_18

    move v3, v5

    goto :goto_19

    :cond_18
    move v3, v4

    :goto_19
    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_31

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v8

    if-nez v8, :cond_2e

    const/4 v3, 0x0

    goto :goto_31

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_31
    :goto_31
    const/4 v6, 0x0

    :goto_32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v6, v7, :cond_7c

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v10

    if-eqz v10, :cond_79

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_4d

    if-eqz v3, :cond_79

    :cond_4d
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v10, :cond_79

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v11

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x754ced9f

    const/16 v15, 0x3c

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v10, v9, v4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v9, v5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v9, v8

    const/4 v8, 0x0

    invoke-static {v13, v14, v15, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_7c
    if-eqz v0, :cond_81

    move-object/from16 v6, p1

    goto :goto_83

    :cond_81
    move-object/from16 v6, p0

    :goto_83
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const/4 v9, 0x0

    :goto_89
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v9, v10, :cond_a2

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    :goto_95
    if-eqz v10, :cond_9f

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    goto :goto_95

    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto :goto_89

    :cond_a2
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_ac
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_146

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    invoke-static {v11}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v14

    if-eqz v14, :cond_ca

    goto :goto_ac

    :cond_ca
    if-eqz v12, :cond_13a

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v14

    if-eqz v14, :cond_13a

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canBeAnimationTarget()Z

    move-result v14

    if-eqz v14, :cond_13a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_e6

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v14, :cond_13a

    :cond_e6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v14

    if-eqz v14, :cond_ed

    goto :goto_13a

    :cond_ed
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f4

    const/4 v13, 0x0

    :cond_f4
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_113

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    if-eqz v14, :cond_113

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_113

    const/4 v13, 0x0

    :cond_113
    const/4 v14, 0x0

    :goto_114
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_13b

    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    invoke-static {v15}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v16

    if-nez v16, :cond_137

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    :cond_12e
    if-eq v15, v11, :cond_137

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_137

    const/4 v13, 0x0

    :cond_137
    :goto_137
    add-int/lit8 v14, v14, 0x1

    goto :goto_114

    :cond_13a
    :goto_13a
    const/4 v13, 0x0

    :cond_13b
    if-eqz v13, :cond_141

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_144

    :cond_141
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :goto_144
    goto/16 :goto_ac

    :cond_146
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v11, :cond_161

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x57116af2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v4

    aput-object v12, v8, v5

    const/4 v5, 0x0

    invoke-static {v13, v14, v4, v5, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_161
    return-object v9
.end method

.method static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method private static getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    if-eqz p1, :cond_f

    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_f
    return-object v0
.end method

.method private getOldWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v5

    if-nez v5, :cond_43

    if-eq v1, v4, :cond_29

    const/4 v5, 0x3

    if-ne v1, v5, :cond_44

    :cond_29
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_43
    goto :goto_45

    :cond_44
    move v4, v3

    :goto_45
    move v3, v4

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-nez v4, :cond_53

    if-nez v3, :cond_51

    goto :goto_53

    :cond_51
    move-object v4, v0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v4, 0x0

    :goto_54
    return-object v4
.end method

.method private static getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_2b

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_28

    if-eqz p1, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_28

    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v4

    if-le v4, v0, :cond_28

    move v0, v4

    move-object v1, v3

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_2b
    return-object v1
.end method

.method static getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppTransition;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_16

    if-eqz v3, :cond_16

    move v5, v7

    goto :goto_17

    :cond_16
    move v5, v6

    :goto_17
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v8

    if-eqz v8, :cond_21

    if-eqz v3, :cond_21

    move v8, v7

    goto :goto_22

    :cond_21
    move v8, v6

    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    move-result v9

    const/4 v10, 0x6

    packed-switch v9, :pswitch_data_22c

    const/4 v9, -0x1

    if-nez p6, :cond_227

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->removeSplitTaskShotIfNeed()Z

    move-result v11

    if-eqz v11, :cond_51

    move-object/from16 v13, p3

    goto/16 :goto_229

    :pswitch_3b
    const/16 v6, 0x17

    return v6

    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_47

    const/16 v10, 0x16

    goto :goto_48

    :cond_47
    nop

    :goto_48
    return v10

    :pswitch_49
    if-eqz v5, :cond_4e

    const/16 v6, 0x15

    goto :goto_50

    :cond_4e
    const/16 v6, 0x14

    :goto_50
    return v6

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v12

    invoke-virtual {v0, v10}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9f

    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->skipAppTransitionAnimationForEmbeddingDivider()Z

    move-result v7

    if-eqz v7, :cond_70

    return v9

    :cond_70
    nop

    move-object/from16 v13, p3

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    packed-switch v6, :pswitch_data_236

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSIT_CHANGE with unrecognized changing type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_99
    const/16 v7, 0x1b

    return v7

    :pswitch_9c
    const/16 v7, 0x1e

    return v7

    :cond_9f
    move-object/from16 v13, p3

    and-int/lit8 v14, v11, 0x10

    if-eqz v14, :cond_a8

    const/16 v6, 0x1a

    return v6

    :cond_a8
    if-nez v12, :cond_ab

    return v6

    :cond_ab
    invoke-static {v12}, Lcom/android/server/wm/AppTransition;->isNormalTransit(I)Z

    move-result v14

    if-eqz v14, :cond_10a

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v7

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v9, v16

    :goto_bf
    if-ltz v9, :cond_d8

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v18

    if-nez v18, :cond_d5

    const/4 v14, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v18

    if-eqz v18, :cond_d5

    const/4 v15, 0x0

    :cond_d5
    add-int/lit8 v9, v9, -0x1

    goto :goto_bf

    :cond_d8
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v10, v17

    :goto_e5
    if-ltz v10, :cond_f8

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v17

    if-eqz v17, :cond_f5

    const/4 v9, 0x0

    goto :goto_f8

    :cond_f5
    add-int/lit8 v10, v10, -0x1

    goto :goto_e5

    :cond_f8
    :goto_f8
    if-eqz v9, :cond_ff

    if-eqz v14, :cond_ff

    const/16 v6, 0x19

    return v6

    :cond_ff
    if-eqz v15, :cond_10a

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10a

    const/16 v6, 0x18

    return v6

    :cond_10a
    invoke-static {v1, v6}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    invoke-static {v2, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    const/4 v14, 0x0

    if-eqz v8, :cond_131

    if-eqz v5, :cond_131

    sget-boolean v15, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v15, :cond_127

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6042b19

    move-object/from16 v19, v14

    check-cast v19, [Ljava/lang/Object;

    invoke-static {v15, v7, v6, v14, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_127
    packed-switch v12, :pswitch_data_23e

    goto :goto_167

    :pswitch_12b
    const/16 v6, 0xf

    return v6

    :pswitch_12e
    const/16 v6, 0xe

    return v6

    :cond_131
    if-eqz v4, :cond_150

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_150

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v7, :cond_150

    const/16 v6, 0xc

    return v6

    :cond_150
    if-eqz v3, :cond_167

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_167

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_167

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v9, v7, :cond_167

    const/16 v6, 0xd

    return v6

    :cond_167
    :goto_167
    const/4 v7, 0x1

    invoke-static {v1, v2, v7}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v15

    invoke-static {v1, v2, v6}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_17d

    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowContainer;

    goto :goto_17f

    :cond_17d
    move-object/from16 v19, v14

    :goto_17f
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_18c

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowContainer;

    goto :goto_18d

    :cond_18c
    nop

    :goto_18d
    invoke-static/range {v19 .. v19}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    invoke-static {v14}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v21

    if-eqz v21, :cond_1a1

    if-ne v6, v3, :cond_1a1

    const/16 v3, 0xa

    return v3

    :cond_1a1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1ae

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1ae

    const/16 v3, 0xb

    return v3

    :cond_1ae
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v22

    if-eqz v22, :cond_1d1

    const/4 v3, 0x3

    if-ne v6, v3, :cond_1c6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1c3

    const/16 v3, 0x10

    goto :goto_1c5

    :cond_1c3
    const/16 v3, 0x8

    :goto_1c5
    return v3

    :cond_1c6
    const/4 v3, 0x1

    if-ne v6, v3, :cond_1cb

    const/4 v3, 0x6

    return v3

    :cond_1cb
    const/4 v3, 0x2

    if-ne v6, v3, :cond_1d2

    const/16 v3, 0x1c

    return v3

    :cond_1d1
    const/4 v3, 0x2

    :cond_1d2
    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v18

    if-eqz v18, :cond_20d

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1de

    const/16 v3, 0x9

    return v3

    :cond_1de
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e4

    const/16 v3, 0x1d

    return v3

    :cond_1e4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_20a

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v3, v17

    :goto_1ef
    if-ltz v3, :cond_206

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_201

    const/4 v1, 0x7

    return v1

    :cond_201
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v18

    goto :goto_1ef

    :cond_206
    move/from16 v18, v1

    const/4 v1, -0x1

    return v1

    :cond_20a
    move/from16 v18, v1

    goto :goto_20f

    :cond_20d
    move/from16 v18, v1

    :goto_20f
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v1

    if-eqz v1, :cond_225

    invoke-virtual {v15}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_225

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_225

    const/16 v1, 0x12

    return v1

    :cond_225
    const/4 v1, 0x0

    return v1

    :cond_227
    move-object/from16 v13, p3

    :goto_229
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_22c
    .packed-switch 0x7
        :pswitch_49
        :pswitch_3e
        :pswitch_3b
    .end packed-switch

    :pswitch_data_236
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_99
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_12b
        :pswitch_12e
        :pswitch_12b
    .end packed-switch
.end method

.method private static getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v0, 0x3

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v0, 0x2

    return v0

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v0
.end method

.method private getUnHierarchicalAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p3, :cond_9

    move-object v1, p1

    goto :goto_a

    :cond_9
    move-object v1, p2

    :goto_a
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private handleChangingApps(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_34

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0xb2054f0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_34
    return-void
.end method

.method private handleClosingApps()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_9c

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x2f5c2e52

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v7, v8, v6, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v4, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is in small window mode, don\'t close it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_45
    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_5a

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_5a

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_5a
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v7, 0x68

    invoke-virtual {v4, v7}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiThumbnail:Z

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_8b

    :cond_73
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v7, 0x6a

    invoke-virtual {v4, v7}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiThumbnail:Z

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    :cond_8b
    :goto_8b
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_9c
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 6

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_37

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v3, :cond_37

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_37

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_37

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    :cond_37
    const/16 v3, 0x15

    if-eq p1, v0, :cond_3d

    if-ne p1, v3, :cond_57

    :cond_3d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_47

    move v3, v2

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4e

    move v4, v2

    goto :goto_4f

    :cond_4e
    move v4, v1

    :goto_4f
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_54

    move v1, v2

    :cond_54
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    :cond_57
    return-void
.end method

.method private handleOpeningApps()V
    .locals 13

    const-string v0, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v1, "handleAppTransitionReady"

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_15
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_d4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_39

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x610e94b5

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v6, v12, v7

    invoke-static {v9, v10, v7, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    :cond_4d
    iget-object v9, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v9, "WindowManager"

    if-eqz v7, :cond_66

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_6b
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c6

    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_7a

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v9, 0x67

    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v7

    if-eqz v7, :cond_91

    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityThumbnail:Z

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_a7

    :cond_91
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v9, 0x69

    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppTransition;->needCreateMiuiActivityThumbnail(I)Z

    move-result v7

    if-eqz v7, :cond_a7

    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mMiuiThumbnailAppTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mIsMiuiActivityScaledThumbnail:Z

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    :cond_a7
    :goto_a7
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_c2

    :cond_b5
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v7

    if-eqz v7, :cond_c2

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachCrossProfileAppsThumbnailAnimation()V

    :cond_c2
    :goto_c2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    :catchall_c6
    move-exception v7

    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_d3

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    throw v7

    :cond_d4
    return-void
.end method

.method static isTaskAnimationOld(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xb

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/Task;

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$5(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$6(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$7(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$findTaskFragmentOrganizer$2([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    aget-object v2, p0, v1

    if-eqz v2, :cond_1e

    aget-object v2, p0, v1

    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v1, 0x1

    return v1

    :cond_1e
    aput-object v0, p0, v1

    return v1
.end method

.method static synthetic lambda$handleAppTransitionReady$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleAppTransitionReady$1(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$3(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputForAnimation(Z)V

    return-void
.end method

.method static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$4(Lcom/android/server/wm/Task;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$transitionGoodToGoForTaskFragments$8(Lcom/android/server/wm/TaskFragment;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x59800c97

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v2

    :cond_1e
    return v1
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v2, :cond_48

    if-ge v5, v0, :cond_1d

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    :cond_1d
    if-ge v5, v1, :cond_28

    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    :cond_28
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    :goto_30
    nop

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_45

    invoke-interface {p3, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    if-le v7, v3, :cond_45

    move v3, v7

    move-object v4, v8

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_48
    return-object v4
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_6

    goto :goto_26

    :cond_6
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    move-object v0, v1

    goto :goto_26

    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    if-nez v1, :cond_26

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    :cond_26
    :goto_26
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    :cond_2f
    return-void
.end method

.method private overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/AppTransitionController;->transitionMayContainNonAppWindows(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionController;->findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getRemoteAnimationDefinition(Landroid/window/ITaskFragmentOrganizer;I)Landroid/view/RemoteAnimationDefinition;

    move-result-object v5

    goto :goto_23

    :cond_22
    move-object v5, v4

    :goto_23
    nop

    if-eqz v5, :cond_2f

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    goto :goto_34

    :cond_2f
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v4

    :goto_34
    nop

    if-nez v8, :cond_38

    return v2

    :cond_38
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_58

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x29e1972c

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-static {v11, v12, v2, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_58
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getTaskFragmentOrganizerUid(Landroid/window/ITaskFragmentOrganizer;)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->isFullyTrustedEmbedding(I)Z

    move-result v11

    xor-int/2addr v11, v10

    iget-object v12, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v12

    if-eqz v11, :cond_93

    if-eqz v12, :cond_93

    new-instance v13, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;

    invoke-direct {v13, v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v12, v13}, Lcom/android/server/wm/RemoteAnimationController;->setOnRemoteAnimationReady(Ljava/lang/Runnable;)V

    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_93

    iget v13, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v13, v13

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v4, v2

    const/4 v0, 0x0

    const v2, 0x7d327001

    invoke-static {v15, v2, v10, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_93
    return v10
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    int-to-long v8, v2

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v10, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x79ee0313

    const/16 v13, 0x3d

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v11, v12, v13, v6, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    :cond_47
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_77

    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayRotation;->needsUpdate()Z

    move-result v8

    if-eqz v8, :cond_77

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_76

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x2572bb7a

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_76
    return v7

    :cond_77
    const/4 v8, 0x0

    :goto_78
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_14b

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_93

    move-object/from16 v20, v2

    move/from16 v18, v3

    move v3, v4

    goto/16 :goto_13f

    :cond_93
    iget-boolean v12, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_9e

    move-object/from16 v20, v2

    move/from16 v18, v3

    move v3, v4

    goto/16 :goto_13f

    :cond_9e
    const/16 v12, 0x8

    invoke-virtual {v11, v4, v12}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v12

    if-eqz v12, :cond_b6

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_b5

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x13442ff4

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v7, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b5
    return v7

    :cond_b6
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v12, :cond_103

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-boolean v14, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-boolean v15, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iget-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v16

    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v7

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v4, v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v19, 0x2

    aput-object v21, v4, v19

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x3

    aput-object v21, v4, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v17, 0x4

    aput-object v21, v4, v17

    const/16 v21, 0x5

    aput-object v13, v4, v21

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const v5, 0x11488da1

    const/16 v7, 0x3fc

    invoke-static {v3, v5, v7, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_109

    :cond_103
    move-object/from16 v20, v2

    move/from16 v18, v3

    const/16 v17, 0x4

    :goto_109
    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_115

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v2

    if-nez v2, :cond_115

    const/4 v2, 0x1

    goto :goto_116

    :cond_115
    const/4 v2, 0x0

    :goto_116
    if-nez v2, :cond_122

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v3, :cond_122

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v3, :cond_122

    const/4 v3, 0x0

    return v3

    :cond_122
    if-eqz v2, :cond_12d

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13f

    :cond_12d
    const/4 v3, 0x2

    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_136

    const/4 v13, 0x1

    goto :goto_138

    :cond_136
    move/from16 v13, v17

    :goto_138
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13f
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    move/from16 v3, v18

    move-object/from16 v2, v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_78

    :cond_14b
    move-object/from16 v9, p1

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_16d

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_16b

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x3c25e891

    const/4 v4, 0x0

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16c

    :cond_16b
    const/4 v5, 0x0

    :goto_16c
    return v5

    :cond_16d
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_199

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_197

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1698204e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_198

    :cond_197
    const/4 v6, 0x0

    :goto_198
    return v6

    :cond_199
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_1ae

    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_1ac

    goto :goto_1ae

    :cond_1ac
    move v5, v6

    goto :goto_1af

    :cond_1ae
    :goto_1ae
    nop

    :goto_1af
    return v5
.end method

.method private transitionGoodToGoForTaskFragments()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1a
    if-ltz v2, :cond_30

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_39
    if-ltz v2, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    :cond_4f
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_58
    if-ltz v2, :cond_6e

    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    :cond_6e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_73
    const/4 v3, 0x0

    if-ltz v2, :cond_8e

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    if-nez v4, :cond_7f

    goto :goto_8b

    :cond_7f
    new-instance v5, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_8b

    return v3

    :cond_8b
    :goto_8b
    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    :cond_8e
    invoke-static {}, Lcom/android/server/wm/AppTransitionStub;->get()Lcom/android/server/wm/AppTransitionStub;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-interface {v2, v4}, Lcom/android/server/wm/AppTransitionStub;->deferTransitionForMultiWindow(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_9d

    return v3

    :cond_9d
    return v1
.end method

.method private transitionMayContainNonAppWindows(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private unfreezeEmbeddedChangingWindows()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_24
    return-void
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0
.end method

.method handleAppTransitionReady()V
    .locals 25

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_258

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_258

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGoForTaskFragments()Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_258

    :cond_27
    const-wide/16 v8, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xf3d8ebc

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v10, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_65
    if-ge v2, v0, :cond_77

    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_77
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v13

    const/4 v0, 0x0

    :goto_80
    if-ge v0, v13, :cond_98

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_95

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_98
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_ca

    :cond_c8
    move v0, v10

    goto :goto_cb

    :cond_ca
    :goto_ca
    move v0, v11

    :goto_cb
    move v14, v0

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v0, v14}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v6

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v0, v14}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v5

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->getOldWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v20

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    move/from16 v21, v2

    invoke-static/range {v15 .. v21}, Lcom/android/server/wm/AppTransitionController;->getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I

    move-result v15

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v10, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/16 v16, 0x2

    if-eqz v0, :cond_15c

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v4, v14

    iget-object v8, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v11, v10

    const/16 v21, 0x1

    aput-object v0, v11, v21

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v11, v16

    const/16 v24, 0x3

    aput-object v8, v11, v24

    const/16 v24, 0x4

    aput-object v9, v11, v24

    const/16 v24, 0x5

    aput-object v19, v11, v24

    move-object/from16 v20, v0

    move-wide/from16 v22, v2

    const/16 v0, 0x31

    const/4 v2, 0x0

    const v10, -0x808c946

    invoke-static {v1, v10, v0, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15c
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v6, v5, v0}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v8

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v8

    move-object v4, v6

    move-object v9, v5

    move-object v10, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    nop

    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    nop

    invoke-static {v9, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v11}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    invoke-direct {v7, v15, v8}, Lcom/android/server/wm/AppTransitionController;->overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_197

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->unfreezeEmbeddedChangingWindows()V

    invoke-direct {v7, v11, v15, v8}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V

    :cond_197
    invoke-direct {v7, v9}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1a6

    invoke-direct {v7, v10}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    goto :goto_1a6

    :cond_1a4
    move v6, v0

    goto :goto_1a7

    :cond_1a6
    :goto_1a6
    const/4 v6, 0x1

    :goto_1a7
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v20, v8

    move-object v8, v3

    move-object v3, v9

    move-object/from16 v22, v9

    move-object v9, v4

    move v4, v15

    move-object/from16 v23, v10

    move-object v10, v5

    move-object/from16 v5, v19

    :try_start_1be
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    invoke-direct {v7, v15}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(I)V

    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v0, :cond_1dc

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    if-eqz v0, :cond_1dc

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hideFloatWindows(Z)V

    :cond_1dc
    invoke-virtual {v12, v15, v10, v9, v8}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    invoke-virtual {v12, v15, v10}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;)I

    move-result v1

    invoke-direct {v7, v15, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_1f0
    .catchall {:try_start_1be .. :try_end_1f0} :catchall_24f

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    nop

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/PreloadStateManagerStub;->checkEnableAudio()V

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return-void

    :catchall_24f
    move-exception v0

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0

    :cond_258
    :goto_258
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_53

    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    return v0

    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_34

    return v0

    :cond_34
    goto :goto_21

    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_50

    return v0

    :cond_50
    goto :goto_3d

    :cond_51
    const/4 v0, 0x1

    return v0

    :cond_53
    :goto_53
    return v0
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method
