.class public Landroidx/window/extensions/embedding/SplitController;
.super Ljava/lang/Object;
.source "SplitController.java"

# interfaces
.implements Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;
.implements Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;,
        Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;,
        Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;
    }
.end annotation


# static fields
.field private static INSTANCE:Landroidx/window/extensions/embedding/SplitController; = null

.field static final TAG:Ljava/lang/String; = "SplitController"


# instance fields
.field private mEmbeddingCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastReportedSplitStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

.field protected final mSplitRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/window/extensions/embedding/TaskContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monActivityConfigurationChanged(Landroidx/window/extensions/embedding/SplitController;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveStartActivityIntentFromNonActivityContext(Landroidx/window/extensions/embedding/SplitController;Landroid/window/WindowContainerTransaction;Landroid/content/Intent;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitController;->resolveStartActivityIntentFromNonActivityContext(Landroid/window/WindowContainerTransaction;Landroid/content/Intent;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisInPictureInPicture(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLastReportedSplitStates:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;-><init>(Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor-IA;)V

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;->-$$Nest$fgetmHandler(Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-direct {v1, v0, p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;-><init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/SplitController;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    return-void

    :cond_39
    new-instance v1, Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-direct {v1, v0, p0}, Landroidx/window/extensions/embedding/SplitPresenter;-><init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/SplitController;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;

    invoke-direct {v3, p0}, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;-><init>(Landroidx/window/extensions/embedding/SplitController;)V

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    new-instance v3, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;

    invoke-direct {v3, p0}, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;-><init>(Landroidx/window/extensions/embedding/SplitController;)V

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method private allActivitiesCreated()Z
    .locals 6

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_30

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v2, v2, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->taskInfoActivityCountMatchesCreated()Z

    move-result v5

    if-nez v5, :cond_2c

    const/4 v1, 0x0

    return v1

    :cond_2c
    goto :goto_18

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_30
    return v1
.end method

.method private static canReuseContainer(Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 2

    invoke-static {p0}, Landroidx/window/extensions/embedding/SplitController;->isContainerReusableRule(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitController;->isContainerReusableRule(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPairRule;

    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-static {v0, v1}, Landroidx/window/extensions/embedding/SplitController;->haveSamePresentation(Landroidx/window/extensions/embedding/SplitPairRule;Landroidx/window/extensions/embedding/SplitPairRule;)Z

    move-result v0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupForEnterPip(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 7

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    if-eq v5, p2, :cond_30

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    if-eq v5, p2, :cond_30

    goto :goto_17

    :cond_30
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    if-ne v5, p2, :cond_3e

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    goto :goto_42

    :cond_3e
    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    :goto_42
    nop

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->removeContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_56

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->removeActivityToFinishOnExit(Landroid/app/Activity;)V

    :cond_56
    goto :goto_17

    :cond_57
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->resetDependencies()V

    iget-object v3, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {p0, p1, v4}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    goto :goto_63

    :cond_73
    return-void
.end method

.method private cleanupTaskFragment(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_37

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v2, v1, Landroidx/window/extensions/embedding/TaskContainer;->mFinishedContainer:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->stopOverrideSplitAnimation(I)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_36
    return-void

    :cond_37
    return-void
.end method

.method private expandActivity(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->shouldContainerBeExpanded(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->expandTaskFragment(Landroid/os/IBinder;)V

    goto :goto_25

    :cond_14
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->expandActivity(Landroid/os/IBinder;Landroid/app/Activity;)V

    :goto_25
    return-void
.end method

.method private getActiveSplitStates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_7a

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v2, v2, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    goto :goto_75

    :cond_3e
    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->toActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->toActivityStack()Landroidx/window/extensions/embedding/ActivityStack;

    move-result-object v6

    new-instance v7, Landroidx/window/extensions/embedding/SplitInfo;

    invoke-static {v4}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v8

    invoke-static {v8}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v8

    if-nez v8, :cond_6d

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitRule;->getSplitRatio()F

    move-result v8

    goto :goto_6e

    :cond_6d
    const/4 v8, 0x0

    :goto_6e
    invoke-direct {v7, v5, v6, v8}, Landroidx/window/extensions/embedding/SplitInfo;-><init>(Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/ActivityStack;F)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_75
    :goto_75
    const/4 v3, 0x0

    return-object v3

    :cond_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_7a
    return-object v0
.end method

.method public static getInstance()Landroidx/window/extensions/embedding/SplitController;
    .locals 1

    sget-object v0, Landroidx/window/extensions/embedding/SplitController;->INSTANCE:Landroidx/window/extensions/embedding/SplitController;

    if-nez v0, :cond_19

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroidx/window/extensions/embedding/MiuiSplitController;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/MiuiSplitController;-><init>()V

    sput-object v0, Landroidx/window/extensions/embedding/SplitController;->INSTANCE:Landroidx/window/extensions/embedding/SplitController;

    goto :goto_19

    :cond_12
    new-instance v0, Landroidx/window/extensions/embedding/SplitController;

    invoke-direct {v0}, Landroidx/window/extensions/embedding/SplitController;-><init>()V

    sput-object v0, Landroidx/window/extensions/embedding/SplitController;->INSTANCE:Landroidx/window/extensions/embedding/SplitController;

    :cond_19
    :goto_19
    sget-object v0, Landroidx/window/extensions/embedding/SplitController;->INSTANCE:Landroidx/window/extensions/embedding/SplitController;

    return-object v0
.end method

.method private getPlaceholderRule(Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPlaceholderRule;
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    if-nez v2, :cond_17

    goto :goto_6

    :cond_17
    move-object v2, v1

    check-cast v2, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    invoke-virtual {v2, p1}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v2

    :cond_21
    goto :goto_6

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSplitRule(Landroid/app/Activity;Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitPairRule;

    if-nez v2, :cond_17

    goto :goto_6

    :cond_17
    move-object v2, v1

    check-cast v2, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p1, p2}, Landroidx/window/extensions/embedding/SplitPairRule;->matchesActivityPair(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v3, :cond_2c

    invoke-virtual {v2, p1, v3}, Landroidx/window/extensions/embedding/SplitPairRule;->matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    return-object v2

    :cond_2d
    goto :goto_6

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSplitRule(Landroid/app/Activity;Landroid/content/Intent;)Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v2, v1, Landroidx/window/extensions/embedding/SplitPairRule;

    if-nez v2, :cond_17

    goto :goto_6

    :cond_17
    move-object v2, v1

    check-cast v2, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v2, p1, p2}, Landroidx/window/extensions/embedding/SplitPairRule;->matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v2

    :cond_21
    goto :goto_6

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private static haveSamePresentation(Landroidx/window/extensions/embedding/SplitPairRule;Landroidx/window/extensions/embedding/SplitPairRule;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPairRule;->getSplitRatio()F

    move-result v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitPairRule;->getSplitRatio()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPairRule;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitPairRule;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishPrimaryWithSecondary()I

    move-result v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishPrimaryWithSecondary()I

    move-result v1

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishSecondaryWithPrimary()I

    move-result v0

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishSecondaryWithPrimary()I

    move-result v1

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method public static initSplitController()V
    .locals 0

    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    return-void
.end method

.method private static isContainerReusableRule(Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 2

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitPairRule;->shouldClearTop()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static isInPictureInPicture(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method private static isInPictureInPicture(Landroid/content/res/Configuration;)Z
    .locals 2

    if-eqz p0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static isInPictureInPicture(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method private isNewActivityInSplitWithRuleMatched(Landroid/app/Activity;)Z
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->checkForReuseContainer(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    return v3

    :cond_16
    invoke-virtual {p0, p1, v2}, Landroidx/window/extensions/embedding/SplitController;->isReverseAdaptionCanReuseStub(Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v4

    if-nez v4, :cond_1d

    return v3

    :cond_1d
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-ne v0, v4, :cond_45

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getPendingAppearedIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-direct {p0, p1, v5}, Landroidx/window/extensions/embedding/SplitController;->getSplitRule(Landroid/app/Activity;Landroid/content/Intent;)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v6

    if-eqz v6, :cond_34

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    return v1

    :cond_36
    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-direct {p0, p1, v6}, Landroidx/window/extensions/embedding/SplitController;->getSplitRule(Landroid/app/Activity;Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v7

    if-eqz v7, :cond_43

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    return v1

    :cond_45
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v4

    instance-of v4, v4, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    if-eqz v4, :cond_7b

    nop

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getPlaceholderIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_79

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getPlaceholderIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    goto :goto_79

    :cond_77
    move v1, v3

    goto :goto_7a

    :cond_79
    :goto_79
    nop

    :goto_7a
    return v1

    :cond_7b
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_86

    return v3

    :cond_86
    invoke-direct {p0, v4, p1}, Landroidx/window/extensions/embedding/SplitController;->getSplitRule(Landroid/app/Activity;Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v5

    if-eqz v5, :cond_8d

    goto :goto_8e

    :cond_8d
    move v1, v3

    :goto_8e
    return v1
.end method

.method private onActivityConfigurationChanged(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->updatePipTaskIdStub(I)V

    return-void

    :cond_15
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroidx/window/extensions/embedding/SplitController;->launchPlaceholderIfNecessary(Landroid/app/Activity;Z)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Landroidx/window/extensions/embedding/SplitController;->checkForMiddleStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Z

    return-void
.end method

.method private onTaskConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskContainer;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->isInPictureInPicture()Z

    move-result v1

    invoke-static {p2}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/content/res/Configuration;)Z

    move-result v2

    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/window/extensions/embedding/TaskContainer;->setWindowingMode(I)V

    if-eq v1, v2, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    iget-object v4, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/window/extensions/embedding/TaskContainer;->setTaskBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_30

    if-nez v2, :cond_30

    const/4 v3, 0x1

    :cond_30
    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v4, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->updateEmbeddingScale(Landroidx/window/extensions/embedding/TaskContainer;)V

    if-eqz v3, :cond_3a

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    :cond_3a
    return-void
.end method

.method private putActivitiesIntoSplitIfNecessary(Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 12

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitController;->getSplitRule(Landroid/app/Activity;Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_57

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne v1, v2, :cond_57

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/window/extensions/embedding/SplitController;->canReuseContainer(Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v10

    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne v10, v2, :cond_2e

    return v9

    :cond_2e
    invoke-virtual {v10, p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addPendingAppearedActivity(Landroid/app/Activity;)V

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v11, v2

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v7, 0x0

    move-object v3, v11

    move-object v4, v8

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/window/extensions/embedding/SplitPresenter;->expandSplitContainerIfNeeded(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitContainer;Landroid/app/Activity;Landroid/app/Activity;Landroid/content/Intent;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_57

    nop

    invoke-virtual {v10}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v2, v11}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return v9

    :cond_57
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v2, p1, p2, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->createNewSplitContainer(Landroid/app/Activity;Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitPairRule;)V

    return v9
.end method

.method private removeExistingSecondaryContainers(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 4

    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-ne p2, v1, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v1, v2, v3, p1, p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finish(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V

    return-void

    :cond_18
    :goto_18
    return-void
.end method

.method private resolveStartActivityIntentFromNonActivityContext(Landroid/window/WindowContainerTransaction;Landroid/content/Intent;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    const-string v2, "SplitController"

    const-string v3, "App is calling startActivity from a non-Activity context when it has more than one Task. If the new launch Activity is in a different process, and it is expected to be embedded, please start it from an Activity instead."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_15
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskContainer;->isInPictureInPicture()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_34

    :cond_2b
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v3

    invoke-virtual {p0, p1, v3, p2, v1}, Landroidx/window/extensions/embedding/SplitController;->resolveStartActivityIntent(Landroid/window/WindowContainerTransaction;ILandroid/content/Intent;Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    return-object v1

    :cond_34
    :goto_34
    return-object v1
.end method

.method private startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Ljava/util/function/Consumer;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Landroidx/window/extensions/embedding/SplitRule;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitPresenter;->startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    if-eqz p5, :cond_11

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    :goto_11
    return-void
.end method

.method private supportSplit(Landroidx/window/extensions/embedding/TaskContainer;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->isInPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v3, v2, Landroidx/window/extensions/embedding/SplitRule;

    if-nez v3, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Landroidx/window/extensions/embedding/SplitRule;

    invoke-static {v3, v4}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v3

    invoke-static {v3}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v0, 0x1

    return v0

    :cond_38
    goto :goto_e

    :cond_39
    return v1
.end method

.method private updateCallbackIfNecessary()V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mEmbeddingCallback:Ljava/util/function/Consumer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->allActivitiesCreated()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitStates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mLastReportedSplitStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_2b

    :cond_1b
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mLastReportedSplitStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mLastReportedSplitStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mEmbeddingCallback:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method protected addSystemRules()V
    .locals 0

    return-void
.end method

.method protected checkForMiddleStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkForReuseContainer(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkSideBySideStub()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createEmptyExpandedContainer(Landroid/window/WindowContainerTransaction;Landroid/content/Intent;ILandroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    move-object v1, p4

    goto :goto_12

    :cond_5
    invoke-virtual {p0, p3}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_11

    :cond_10
    move-object v2, v0

    :goto_11
    move-object v1, v2

    :goto_12
    if-nez v1, :cond_15

    return-object v0

    :cond_15
    invoke-virtual {p0, p2, v1, p3}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/content/Intent;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/window/extensions/embedding/SplitPresenter;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method dismissPlaceholderIfNecessary(Landroidx/window/extensions/embedding/SplitContainer;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitContainer;->isPlaceholderContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitContainer;->isStickyPlaceholderRule(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v0

    if-nez v0, :cond_28

    return v1

    :cond_28
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1a

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/Activity;

    :cond_1a
    if-nez v0, :cond_2e

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityClient;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method protected getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    iget-object v1, v1, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v0

    :cond_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_38

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_37
    :goto_37
    return-object v3

    :cond_38
    return-object v0
.end method

.method getActiveSplitForContainers(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;
    .locals 5

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    iget-object v0, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-ne p1, v4, :cond_20

    if-eq p2, v3, :cond_24

    :cond_20
    if-ne p1, v3, :cond_25

    if-ne p2, v4, :cond_25

    :cond_24
    return-object v2

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_33

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v1, v1, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return-object v3

    :cond_2f
    goto :goto_18

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method getContainerWithActivity(ILjava/lang/String;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v2, v1, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_12
    if-ltz v3, :cond_47

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_43

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    return-object v4

    :cond_43
    goto :goto_22

    :cond_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_47
    return-object v0
.end method

.method getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0
.end method

.method getContainerWithActivity(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v1, v1, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_2c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v3, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->hasPendingAppearedActivity(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_29

    return-object v3

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2f
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_37
    if-ltz v0, :cond_5e

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v1, v1, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_49
    if-ltz v2, :cond_5b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v3, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->hasAppearedActivity(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_58

    return-object v3

    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_5e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddingScale(Landroid/app/Activity;)F
    .locals 4

    if-eqz p1, :cond_28

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_28

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskContainer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v2

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskId(Landroid/app/Activity;)I

    move-result v3

    if-ne v2, v3, :cond_25

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getEmbeddingScale()F

    move-result v2

    return v2

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_28
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getGlobalLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getPlaceholderOptions(Landroid/app/Activity;Z)Landroid/os/Bundle;
    .locals 2

    if-nez p2, :cond_15

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_15

    :cond_9
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 9

    invoke-direct {p0, p2, p3}, Landroidx/window/extensions/embedding/SplitController;->getSplitRule(Landroid/app/Activity;Landroid/content/Intent;)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne v1, v2, :cond_37

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/window/extensions/embedding/SplitController;->canReuseContainer(Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v2

    if-nez v2, :cond_24

    if-nez p4, :cond_37

    :cond_24
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/window/extensions/embedding/SplitPresenter;->expandSplitContainerIfNeeded(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitContainer;Landroid/app/Activity;Landroid/app/Activity;Landroid/content/Intent;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_37

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    return-object v2

    :cond_37
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v2, p1, p2, p3, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->createNewSplitWithEmptySideContainer(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Landroidx/window/extensions/embedding/SplitPairRule;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    return-object v2
.end method

.method getSplitRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    return-object v0
.end method

.method getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskContainer;

    return-object v0
.end method

.method getTaskFragmentTokenFromActivityClientRecord(Landroid/app/Activity;)Landroid/os/IBinder;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mTaskFragmentToken:Landroid/os/IBinder;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method getTaskId(Landroid/app/Activity;)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    :goto_f
    return v1
.end method

.method getTopActiveContainer(I)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_34

    iget-object v3, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getRunningActivityCount()I

    move-result v4

    if-gtz v4, :cond_30

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isWaitingActivityAppear()Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_30
    return-object v3

    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_34
    return-object v1
.end method

.method protected interceptExpandStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected interceptUseSameTfcOnCreateInPortraitStub(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActivityEmbedded(Landroid/app/Activity;)Z
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isActivityShowInSplit(Landroid/app/Activity;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v2

    if-nez v2, :cond_f

    return v0

    :cond_f
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getRunningActivityCount()I

    move-result v3

    if-gtz v3, :cond_22

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isWaitingActivityAppear()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_22
    move v3, v4

    goto :goto_25

    :cond_24
    move v3, v0

    :goto_25
    if-nez v3, :cond_28

    return v0

    :cond_28
    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    invoke-static {v2}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v6

    invoke-static {v6}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v6

    if-nez v6, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    return v0
.end method

.method protected isReverseAdaptionCanReuseStub(Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitContainer;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isTopMostSplit(Landroidx/window/extensions/embedding/SplitContainer;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    iget-object v0, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method launchPlaceholderIfNecessary(Landroid/app/Activity;Z)Z
    .locals 12

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->getTopActiveContainer(I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-eq v0, v2, :cond_19

    return v1

    :cond_19
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return v1

    :cond_2a
    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getPlaceholderRule(Landroid/app/Activity;)Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    move-result-object v3

    if-nez v3, :cond_31

    return v1

    :cond_31
    nop

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getPlaceholderIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v11

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v4, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, v3, v11}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    invoke-static {v4}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_64

    :cond_51
    invoke-virtual {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitController;->getPlaceholderOptions(Landroid/app/Activity;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getPlaceholderIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Landroidx/window/extensions/embedding/SplitController;->startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Ljava/util/function/Consumer;Z)V

    const/4 v4, 0x1

    return v4

    :cond_64
    :goto_64
    return v1
.end method

.method protected launchPlaceholderIfNecessary(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v0, v1}, Landroidx/window/extensions/embedding/SplitController;->launchPlaceholderIfNecessary(Landroid/app/Activity;Z)Z

    move-result v1

    return v1
.end method

.method newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 1

    invoke-virtual {p0, p1, p1, p2}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0
.end method

.method newContainer(Landroid/app/Activity;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/Activity;ILandroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0
.end method

.method newContainer(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/Activity;ILandroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 8

    if-eqz p3, :cond_6f

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    new-instance v1, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-direct {v1, p4}, Landroidx/window/extensions/embedding/TaskContainer;-><init>(I)V

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskContainer;

    new-instance v7, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;-><init>(Landroid/app/Activity;Landroid/content/Intent;Landroidx/window/extensions/embedding/TaskContainer;Landroidx/window/extensions/embedding/SplitController;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->isTaskBoundsInitialized()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {p3}, Landroidx/window/extensions/embedding/SplitPresenter;->getNonEmbeddedActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/window/extensions/embedding/TaskContainer;->setTaskBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find bounds from activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplitController"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->isWindowingModeInitialized()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/window/extensions/embedding/TaskContainer;->setWindowingMode(I)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v2, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->updateEmbeddingScale(Landroidx/window/extensions/embedding/TaskContainer;)V

    :cond_6b
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    return-object v1

    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activityInTask must not be null,"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newContainer(Landroid/content/Intent;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/Activity;ILandroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0
.end method

.method onActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->resolveActivityToContainer(Landroid/app/Activity;Z)Z

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    return-void
.end method

.method onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_23

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v2, v0}, Landroidx/window/extensions/embedding/TaskContainer;->onActivityDestroyed(Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_23
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    return-void
.end method

.method public onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 6

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p3}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/window/extensions/embedding/SplitController;->resolveActivityToContainer(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->placeActivityInTopContainer(Landroid/app/Activity;)V

    :cond_13
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    monitor-exit v0

    return-void

    :cond_18
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskContainer;->isInPictureInPicture()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_48

    :cond_25
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroidx/window/extensions/embedding/SplitController;->resolveStartActivityIntent(Landroid/window/WindowContainerTransaction;ILandroid/content/Intent;Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-nez v4, :cond_36

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    move-object v4, v5

    :cond_36
    if-nez v4, :cond_3a

    monitor-exit v0

    return-void

    :cond_3a
    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, p3}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v5, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    monitor-exit v0

    return-void

    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method


.method onTaskFragmentAppearEmptyTimeout(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    return-void
.end method

.method public onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setInfo(Landroid/window/TaskFragmentInfo;)V

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    :cond_1e
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onTaskFragmentError(Landroid/window/TaskFragmentInfo;I)V
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    packed-switch p2, :pswitch_data_50

    :try_start_6
    const-string v1, "SplitController"

    goto :goto_2b

    :pswitch_9
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_18

    goto :goto_4b

    :cond_18
    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setInfo(Landroid/window/TaskFragmentInfo;)V

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->clearPendingAppearedActivities()V

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    goto :goto_4b

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskFragmentError: taskFragmentInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", opType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4d

    throw v1

    :pswitch_data_50
    .packed-switch 0x9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .locals 7

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v3

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setInfo(Landroid/window/TaskFragmentInfo;)V

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->hasRunningActivity()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5a

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isTaskFragmentClearedForPip()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-direct {p0, v2, v1}, Landroidx/window/extensions/embedding/SplitController;->cleanupForEnterPip(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v5, v1, v6, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;ZLandroid/window/WindowContainerTransaction;)V

    goto :goto_72

    :cond_35
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isTaskClearedForReuse()Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v5, v1, v6, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;ZLandroid/window/WindowContainerTransaction;)V

    goto :goto_72

    :cond_41
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isClearedForReorderActivityToFront()Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v5, v1, v6}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    goto :goto_72

    :cond_4d
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isWaitingActivityAppear()Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;ZLandroid/window/WindowContainerTransaction;)V

    goto :goto_72

    :cond_5a
    if-eqz v3, :cond_60

    if-eqz v4, :cond_60

    monitor-exit v0

    return-void

    :cond_60
    if-eqz v4, :cond_6d

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedWindowingMode(I)V

    invoke-direct {p0, v2, v1}, Landroidx/window/extensions/embedding/SplitController;->cleanupForEnterPip(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    goto :goto_72

    :cond_6d
    if-eqz v3, :cond_72

    invoke-virtual {p0, v2, v1}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    :cond_72
    :goto_72
    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v5, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    monitor-exit v0

    return-void

    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v2

    invoke-direct {p0, v2, p2}, Landroidx/window/extensions/embedding/SplitController;->onTaskConfigurationChanged(ILandroid/content/res/Configuration;)V

    invoke-static {p2}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->updateContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_4
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitController;->removeContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    nop

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->getTopActiveContainer(I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-eqz v2, :cond_29

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v3, v2}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v4, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_29
    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    :cond_2c
    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->cleanupTaskFragment(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v1
.end method

.method placeActivityInTopContainer(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-nez v2, :cond_19

    return-void

    :cond_19
    invoke-virtual {v2, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addPendingAppearedActivity(Landroid/app/Activity;)V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v4, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V
    .locals 2

    new-instance v0, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-direct {v0, p2, p3, p4, p5}, Landroidx/window/extensions/embedding/SplitContainer;-><init>(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    instance-of v1, p5, Landroidx/window/extensions/embedding/SplitPairRule;

    if-eqz v1, :cond_15

    move-object v1, p5

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitPairRule;->shouldClearTop()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitController;->removeExistingSecondaryContainers(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    :cond_15
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    iget-object v1, v1, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v4

    :goto_1b
    iget-object v2, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/window/extensions/embedding/TaskContainer;->mFinishedContainer:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/window/extensions/embedding/SplitContainer;

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    :cond_54
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    goto :goto_34

    :cond_58
    iget-object v5, v0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, v0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v6, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->removeContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    goto :goto_63

    :cond_73
    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, v4

    :goto_7d
    invoke-virtual {v5, v1, v3, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->resetMiuiEmbedStateIfNeeded(ZZLandroidx/window/extensions/embedding/TaskFragmentContainer;)V

    return-void
.end method

.method protected resolveActivityBelowStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    return-object p3
.end method

.method resolveActivityToContainer(Landroid/app/Activity;Z)Z
    .locals 9

    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitController;->isInPictureInPicture(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_bf

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_bf

    :cond_f
    if-nez p2, :cond_36

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskFragmentTokenFromActivityClientRecord(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity is in a TaskFragment that is not recorded by the organizer. r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SplitController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    if-nez p2, :cond_3f

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->interceptUseSameTfcOnCreateInPortraitStub(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3f

    return v1

    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->shouldExpand(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->expandActivity(Landroid/app/Activity;)V

    return v1

    :cond_4a
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->launchPlaceholderIfNecessary(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_53

    return v1

    :cond_53
    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->isNewActivityInSplitWithRuleMatched(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5a

    return v1

    :cond_5a
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->checkForMiddleStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_69

    return v1

    :cond_69
    invoke-virtual {p0, v2, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->resolveActivityBelowStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_71

    return v3

    :cond_71
    invoke-direct {p0, v0, p1}, Landroidx/window/extensions/embedding/SplitController;->putActivitiesIntoSplitIfNecessary(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_78

    return v1

    :cond_78
    if-eqz p2, :cond_81

    invoke-direct {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->putActivitiesIntoSplitIfNecessary(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_81

    return v1

    :cond_81
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v5

    if-eqz v5, :cond_be

    invoke-virtual {p0, v5}, Landroidx/window/extensions/embedding/SplitController;->isTopMostSplit(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v6

    if-nez v6, :cond_92

    goto :goto_be

    :cond_92
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    if-ne v6, v4, :cond_9d

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    goto :goto_a1

    :cond_9d
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    :goto_a1
    nop

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_bd

    if-ne v7, p1, :cond_ab

    goto :goto_bd

    :cond_ab
    invoke-direct {p0, v7, p1}, Landroidx/window/extensions/embedding/SplitController;->putActivitiesIntoSplitIfNecessary(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_b2

    return v1

    :cond_b2
    if-eqz p2, :cond_bb

    invoke-direct {p0, p1, v7}, Landroidx/window/extensions/embedding/SplitController;->putActivitiesIntoSplitIfNecessary(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_bb

    goto :goto_bc

    :cond_bb
    move v1, v3

    :goto_bc
    return v1

    :cond_bd
    :goto_bd
    return v3

    :cond_be
    :goto_be
    return v3

    :cond_bf
    :goto_bf
    return v1
.end method

.method resolveStartActivityIntent(Landroid/window/WindowContainerTransaction;ILandroid/content/Intent;Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroidx/window/extensions/embedding/SplitController;->shouldExpand(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/window/extensions/embedding/SplitController;->createEmptyExpandedContainer(Landroid/window/WindowContainerTransaction;Landroid/content/Intent;ILandroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0

    :cond_c
    if-eqz p4, :cond_16

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p4, p3, v1}, Landroidx/window/extensions/embedding/SplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    if-eqz v1, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_5c

    :cond_23
    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    if-eq v3, p4, :cond_37

    invoke-virtual {p0, p1, v3, p3, v4}, Landroidx/window/extensions/embedding/SplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    if-eqz v5, :cond_37

    return-object v5

    :cond_37
    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v5

    if-nez v5, :cond_3e

    return-object v0

    :cond_3e
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    if-ne v6, v2, :cond_49

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    goto :goto_4d

    :cond_49
    invoke-virtual {v5}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    :goto_4d
    nop

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_5b

    if-eq v7, p4, :cond_5b

    invoke-virtual {p0, p1, v7, p3, v4}, Landroidx/window/extensions/embedding/SplitController;->getSecondaryContainerForSplitIfAny(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Z)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    return-object v0

    :cond_5b
    return-object v0

    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public setEmbeddingRules(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitController;->addSystemRules()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_28

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public setSplitInfoCallback(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitController;->mEmbeddingCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController;->updateCallbackIfNecessary()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method shouldContainerBeExpanded(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->interceptExpandStub(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method protected shouldExpand(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mSplitRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/EmbeddingRule;

    instance-of v2, v1, Landroidx/window/extensions/embedding/ActivityRule;

    if-nez v2, :cond_17

    goto :goto_6

    :cond_17
    move-object v2, v1

    check-cast v2, Landroidx/window/extensions/embedding/ActivityRule;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ActivityRule;->shouldAlwaysExpand()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_6

    :cond_21
    const/4 v3, 0x1

    if-eqz p1, :cond_2b

    invoke-virtual {v2, p1}, Landroidx/window/extensions/embedding/ActivityRule;->matchesActivity(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return v3

    :cond_2b
    if-eqz p2, :cond_34

    invoke-virtual {v2, p2}, Landroidx/window/extensions/embedding/ActivityRule;->matchesIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_34

    return v3

    :cond_34
    goto :goto_6

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method shouldRetainAssociatedActivity(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitController;->shouldRetainAssociatedContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    return v1
.end method

.method shouldRetainAssociatedContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 4

    invoke-virtual {p0, p2, p1}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainers(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne p1, v2, :cond_17

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getFinishSecondaryWithPrimaryBehavior(Landroidx/window/extensions/embedding/SplitRule;)I

    move-result v2

    goto :goto_1b

    :cond_17
    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitContainer;->getFinishPrimaryWithSecondaryBehavior(Landroidx/window/extensions/embedding/SplitRule;)I

    move-result v2

    :goto_1b
    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v3

    invoke-static {v3}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-static {v2}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishAssociatedContainerWhenAdjacent(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    :cond_36
    invoke-static {v2}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishAssociatedContainerWhenStacked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method protected updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->isTaskBoundsInitialized()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->isWindowingModeInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_27

    :cond_d
    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/SplitController;->supportSplit(Landroidx/window/extensions/embedding/TaskContainer;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->startOverrideSplitAnimation(I)V

    goto :goto_26

    :cond_1d
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->stopOverrideSplitAnimation(I)V

    :goto_26
    return-void

    :cond_27
    :goto_27
    return-void
.end method

.method updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->launchPlaceholderIfNecessary(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->shouldContainerBeExpanded(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    :cond_1c
    return-void

    :cond_1d
    invoke-virtual {p0, p2}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->isTopMostSplit(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v1

    if-nez v1, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_4d

    :cond_40
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitController;->dismissPlaceholderIfNecessary(Landroidx/window/extensions/embedding/SplitContainer;)Z

    move-result v1

    if-eqz v1, :cond_47

    return-void

    :cond_47
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v1, v0, p2, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->updateSplitContainer(Landroidx/window/extensions/embedding/SplitContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_4d
    :goto_4d
    return-void
.end method

.method protected updatePipTaskIdStub(I)V
    .locals 0

    return-void
.end method
