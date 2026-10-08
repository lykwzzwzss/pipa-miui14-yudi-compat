.class public Landroidx/window/extensions/embedding/MiuiSplitController;
.super Landroidx/window/extensions/embedding/SplitController;
.source "MiuiSplitController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiSplitController"

.field private static final sSystemSplitRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowRepeatPage:Z

.field mEnabled:Z

.field final mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/window/extensions/embedding/MiuiSplitController;->sSystemSplitRules:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mAllowRepeatPage:Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    check-cast v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    iput-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;

    invoke-direct {v2, p0}, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;-><init>(Landroidx/window/extensions/embedding/SplitController;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerMiuiActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;

    invoke-direct {v2, p0}, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;-><init>(Landroidx/window/extensions/embedding/SplitController;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method public static hasSystemRules()Z
    .locals 1

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitController;->sSystemSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isLaunchingTheSameActivity(Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitContainer;)Z
    .locals 3

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method


# virtual methods
.method protected addSystemRulesStub()V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mSplitRules:Ljava/util/List;

    sget-object v1, Landroidx/window/extensions/embedding/MiuiSplitController;->sSystemSplitRules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected checkForMiddleStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 12

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/MiuiSplitController;->getSplitRules()Ljava/util/List;

    move-result-object v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_11

    move v9, v10

    goto :goto_12

    :cond_11
    move v9, v11

    :goto_12
    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Landroidx/window/extensions/embedding/MiuiSplitController;->shouldContainerBeMiddle(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;ILandroid/app/Activity;Landroid/content/Intent;Ljava/util/List;Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->createNewMiddleSplitContainer(Landroid/app/Activity;)V

    return v10

    :cond_25
    return v11
.end method

.method protected checkSideBySideStub()Z
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mTaskContainers:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForTask()I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isMiuiMultiRootTaskWindowingMode(I)Z

    move-result v1

    return v1
.end method

.method getContainerRequestedOrientation(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I
    .locals 2

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method protected interceptExpandStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isUnfinishedMiddleContainer()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_27

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getContainerRequestedOrientation(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    return v1

    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method isPortrait(Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_11

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

.method protected resolveActivityBelowStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 4

    if-nez p3, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0, p3}, Landroidx/window/extensions/embedding/MiuiSplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitController;->hasSystemRules()Z

    move-result v1

    if-eqz v1, :cond_57

    if-eqz p1, :cond_57

    if-ne v0, p1, :cond_57

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne v2, v0, :cond_57

    iget-boolean v2, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mAllowRepeatPage:Z

    if-nez v2, :cond_39

    invoke-direct {p0, p2, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->isLaunchingTheSameActivity(Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_39
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->isPlaceholderContainer()Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_3f
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v2

    return-object v2

    :cond_57
    return-object p3
.end method

.method resolveStartActivityIntent(Landroid/window/WindowContainerTransaction;ILandroid/content/Intent;Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroidx/window/extensions/embedding/MiuiSplitController;->shouldExpand(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/window/extensions/embedding/MiuiSplitController;->createEmptyExpandedContainer(Landroid/window/WindowContainerTransaction;Landroid/content/Intent;ILandroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz p4, :cond_16

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p4, p3, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-eqz v1, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/MiuiSplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    goto :goto_22

    :cond_21
    move-object v2, v0

    :goto_22
    if-nez v2, :cond_25

    return-object v0

    :cond_25
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    if-eq v3, p4, :cond_35

    invoke-virtual {p0, p1, v3, p3, v4}, Landroidx/window/extensions/embedding/MiuiSplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    if-eqz v5, :cond_35

    return-object v5

    :cond_35
    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/MiuiSplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v5

    if-nez v5, :cond_3c

    return-object v0

    :cond_3c
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    if-ne v6, v2, :cond_47

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    goto :goto_4b

    :cond_47
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    :goto_4b
    nop

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_59

    if-eq v7, p4, :cond_59

    invoke-virtual {p0, p1, v7, p3, v4}, Landroidx/window/extensions/embedding/MiuiSplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0

    :cond_59
    return-object v0
.end method

.method public setAllowRepeatPage(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mAllowRepeatPage:Z

    return-void
.end method

.method public setScaleMode(I)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-static {p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->intToMode(I)Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->setScaleMode(Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)V

    return-void
.end method

.method public setSystemRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitController;->sSystemSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_2d

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method shouldContainerBeExpanded(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitController;->interceptExpandStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method shouldContainerBeMiddle(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;ILandroid/app/Activity;Landroid/content/Intent;Ljava/util/List;Landroid/app/Activity;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/embedding/TaskFragmentContainer;",
            "Landroid/graphics/Rect;",
            "I",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;",
            "Landroid/app/Activity;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitController;->hasSystemRules()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return v4

    :cond_e
    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v3

    if-nez v3, :cond_108

    sget-boolean v3, Lmiui/window/MiuiEmbeddingWindowStub;->IS_FOLD:Z

    if-eqz v3, :cond_1a

    goto/16 :goto_108

    :cond_1a
    if-eqz p2, :cond_107

    if-nez v0, :cond_20

    goto/16 :goto_107

    :cond_20
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task id is Invalid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MiuiSplitController"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_40
    if-eqz p1, :cond_49

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v3

    if-eqz v3, :cond_49

    return v4

    :cond_49
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v3

    if-nez v3, :cond_106

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isInSplitScreen()Z

    move-result v3

    if-eqz v3, :cond_65

    goto/16 :goto_106

    :cond_65
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v5, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v7, v3

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v5, v7

    const/4 v7, 0x1

    if-lez v3, :cond_81

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v5, v8

    if-gez v3, :cond_81

    move v3, v7

    goto :goto_82

    :cond_81
    move v3, v4

    :goto_82
    if-nez v2, :cond_98

    if-eqz v3, :cond_98

    if-eqz p8, :cond_98

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ActivityClient;->isInNewProcess(Landroid/os/IBinder;)Z

    move-result v8

    if-nez v8, :cond_98

    move v4, v7

    goto :goto_99

    :cond_98
    nop

    :goto_99
    if-eqz p6, :cond_105

    if-eqz v3, :cond_105

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_105

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v9, v8, Landroidx/window/extensions/embedding/MiddleRule;

    if-nez v9, :cond_b2

    goto :goto_a1

    :cond_b2
    move-object v9, v8

    check-cast v9, Landroidx/window/extensions/embedding/MiddleRule;

    invoke-virtual {v9}, Landroidx/window/extensions/embedding/MiddleRule;->shouldAlwaysMiddle()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-virtual {v9, v0}, Landroidx/window/extensions/embedding/MiddleRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_cc

    if-eqz v1, :cond_ca

    invoke-virtual {v9, v1}, Landroidx/window/extensions/embedding/MiddleRule;->matchesIntent(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_ca

    goto :goto_cc

    :cond_ca
    const/4 v4, 0x0

    goto :goto_104

    :cond_cc
    :goto_cc
    const/4 v4, 0x1

    goto :goto_105

    :cond_ce
    if-nez v2, :cond_e0

    invoke-virtual {v9, v0}, Landroidx/window/extensions/embedding/MiddleRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_de

    if-eqz v1, :cond_e0

    invoke-virtual {v9, v1}, Landroidx/window/extensions/embedding/MiddleRule;->matchesIntent(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_e0

    :cond_de
    const/4 v4, 0x0

    goto :goto_105

    :cond_e0
    if-eqz v2, :cond_104

    invoke-virtual {v9, v2}, Landroidx/window/extensions/embedding/MiddleRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v10

    if-eqz v10, :cond_104

    invoke-virtual {v9, v0}, Landroidx/window/extensions/embedding/MiddleRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_104

    invoke-virtual/range {p7 .. p7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    invoke-static {v10}, Landroid/app/WindowConfiguration;->isMiuiMultiRootTaskWindowingMode(I)Z

    move-result v11

    if-nez v11, :cond_104

    const/4 v4, 0x1

    goto :goto_105

    :cond_104
    :goto_104
    goto :goto_a1

    :cond_105
    :goto_105
    return v4

    :cond_106
    :goto_106
    return v4

    :cond_107
    :goto_107
    return v4

    :cond_108
    :goto_108
    return v4
.end method

.method updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 12

    if-eqz p2, :cond_115

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_115

    :cond_a
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/MiuiSplitController;->launchPlaceholderIfNecessary(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    invoke-static {p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz v10, :cond_22

    invoke-virtual {p0, v10}, Landroidx/window/extensions/embedding/MiuiSplitController;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    move-object v8, v2

    goto :goto_23

    :cond_22
    move-object v8, v1

    :goto_23
    if-eqz v10, :cond_2d

    invoke-virtual {v10}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    :cond_2d
    move-object v11, v1

    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/MiuiSplitController;->getContainerRequestedOrientation(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/MiuiSplitController;->getSplitRules()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, v0

    move-object v5, v10

    invoke-virtual/range {v1 .. v9}, Landroidx/window/extensions/embedding/MiuiSplitController;->shouldContainerBeMiddle(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;ILandroid/app/Activity;Landroid/content/Intent;Ljava/util/List;Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getMiddleBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4e

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v2, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateMiddleBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v1

    :cond_4e
    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V

    if-eqz v11, :cond_62

    invoke-virtual {v11, v1}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v2

    iget-object v3, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v3, p1, p2, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    :cond_62
    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getEmbeddingScale()F

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateScale(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V

    return-void

    :cond_70
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/MiuiSplitController;->shouldContainerBeExpanded(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    :cond_85
    return-void

    :cond_86
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/MiuiSplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v1

    if-nez v1, :cond_8d

    return-void

    :cond_8d
    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->isTopMostSplit(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v2

    if-nez v2, :cond_94

    return-void

    :cond_94
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v2

    if-nez v2, :cond_114

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a9

    goto :goto_114

    :cond_a9
    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitController;->hasSystemRules()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    if-nez v4, :cond_d7

    :cond_cb
    if-eqz v3, :cond_107

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    if-eqz v4, :cond_107

    :cond_d7
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    instance-of v5, v4, Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    if-eqz v5, :cond_ee

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->recordContainerInVideo()V

    :cond_ee
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/window/extensions/embedding/MiuiSplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForTask()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFreeFormWindowingMode(I)Z

    move-result v5

    if-nez v5, :cond_107

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isMiuiSplitScreenWindowingMode(I)Z

    move-result v5

    if-nez v5, :cond_107

    return-void

    :cond_107
    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/MiuiSplitController;->dismissPlaceholderIfNecessary(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v2

    if-eqz v2, :cond_10e

    return-void

    :cond_10e
    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitController;->mPresenter:Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v2, v1, p2, p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateSplitContainer(Landroidx/window/extensions/embedding/SplitContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_114
    :goto_114
    return-void

    :cond_115
    :goto_115
    return-void
.end method
