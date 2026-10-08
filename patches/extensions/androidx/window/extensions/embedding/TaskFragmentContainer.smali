.class Landroidx/window/extensions/embedding/TaskFragmentContainer;
.super Ljava/lang/Object;
.source "TaskFragmentContainer.java"


# static fields
.field private static final APPEAR_EMPTY_TIMEOUT_MS:I = 0xbb8

.field static final TAG:Ljava/lang/String; = "TaskFragmentContainer"


# instance fields
.field private final mActivitiesToFinishOnExit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mAppearEmptyTimeout:Ljava/lang/Runnable;

.field private final mContainersToFinishOnExit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroidx/window/extensions/embedding/SplitController;

.field private mCurrentScale:F

.field private mEmbeddingScale:F

.field mInfo:Landroid/window/TaskFragmentInfo;

.field private mIsFinished:Z

.field private final mLastRequestedBounds:Landroid/graphics/Rect;

.field private mLastRequestedWindowingMode:I

.field private mMiddleBounds:Landroid/graphics/Rect;

.field final mPendingAppearedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAppearedIntent:Landroid/content/Intent;

.field private final mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Landroidx/window/extensions/embedding/TaskContainer;Landroidx/window/extensions/embedding/SplitController;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mMiddleBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mCurrentScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mEmbeddingScale:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedWindowingMode:I

    if-nez p1, :cond_30

    if-eqz p2, :cond_35

    :cond_30
    if-eqz p1, :cond_3d

    if-nez p2, :cond_35

    goto :goto_3d

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One and only one of pending activity and intent must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    iput-object p4, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    new-instance v0, Landroid/os/Binder;

    const-string v1, "TaskFragmentContainer"

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    if-eqz p5, :cond_68

    invoke-virtual {p5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    if-ne v0, p3, :cond_60

    iget-object v0, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_99

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pairedPrimaryContainer must be in the same Task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    if-eqz p1, :cond_94

    iget-object v0, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_72
    if-ltz v0, :cond_8c

    iget-object v1, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getPendingAppearedIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_89

    goto :goto_8c

    :cond_89
    add-int/lit8 v0, v0, -0x1

    goto :goto_72

    :cond_8c
    :goto_8c
    iget-object v1, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_99

    :cond_94
    iget-object v0, p3, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_99
    if-eqz p1, :cond_9e

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addPendingAppearedActivity(Landroid/app/Activity;)V

    :cond_9e
    iput-object p2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    return-void
.end method

.method private containersToFinishOnExitToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2d
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishActivities(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-ne v2, p0, :cond_25

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_25
    goto :goto_8

    :cond_26
    if-nez p1, :cond_2c

    invoke-direct {p0, p3, p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finishPlaceholderIfAny(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitPresenter;)V

    return-void

    :cond_2c
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    iget-boolean v2, v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-nez v2, :cond_32

    invoke-virtual {p4, p0, v1}, Landroidx/window/extensions/embedding/SplitController;->shouldRetainAssociatedContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_32

    :cond_49
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3, p4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finish(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V

    goto :goto_32

    :cond_4e
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_59
    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {p4, p0, v2}, Landroidx/window/extensions/embedding/SplitController;->shouldRetainAssociatedActivity(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_59

    :cond_7a
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_59

    :cond_7e
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private finishPlaceholderIfAny(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitPresenter;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    iget-boolean v3, v2, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v3, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, p0, v2}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainers(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitContainer;->isPlaceholderContainer()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-ne v4, v2, :cond_33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    goto :goto_b

    :cond_34
    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v3, p2, p1, v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finish(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V

    goto :goto_3d

    :cond_50
    return-void
.end method

.method private toString(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentContainer{ parentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topNonFinishingActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningActivityCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getRunningActivityCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastRequestedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pendingAppearedActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " containersToFinishOnExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->containersToFinishOnExitToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7b

    :cond_79
    const-string v1, ""

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activitiesToFinishOnExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateActivityClientRecordTaskFragmentToken(Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mTaskFragmentToken:Landroid/os/IBinder;

    :cond_e
    return-void
.end method


# virtual methods
.method addActivityToFinishOnExit(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPendingAppearedActivity(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->hasActivity(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v1, v0}, Landroidx/window/extensions/embedding/TaskContainer;->cleanupPendingAppearedActivity(Landroid/os/IBinder;)V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->updateActivityClientRecordTaskFragmentToken(Landroid/os/IBinder;)V

    return-void
.end method

.method areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z
    .locals 1

    if-nez p1, :cond_a

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method clearPendingAppearedActivities()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-direct {v3, v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->updateActivityClientRecordTaskFragmentToken(Landroid/os/IBinder;)V

    :cond_2a
    goto :goto_13

    :cond_2b
    return-void
.end method

.method clearPendingAppearedIntentIfNeeded(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_7

    goto :goto_b

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    return-void

    :cond_b
    :goto_b
    return-void
.end method

.method collectNonFinishingActivities()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v2}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    goto :goto_11

    :cond_2f
    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v2}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_52

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    goto :goto_35

    :cond_53
    return-object v0
.end method

.method finish(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    :cond_19
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finishActivities(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V

    :cond_1c
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->deleteTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    invoke-virtual {p4, p0}, Landroidx/window/extensions/embedding/SplitController;->removeContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    return-void
.end method

.method getBottomMostActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_13
    return-object v1
.end method

.method getCurrentScale()F
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mCurrentScale:F

    return v0
.end method

.method getInfo()Landroid/window/TaskFragmentInfo;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    return-object v0
.end method

.method getLastRequestedBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLastRequestedWindowingMode()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedWindowingMode:I

    return v0
.end method

.method getMiddleBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mMiddleBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getMinDimensions()Landroid/util/Size;
    .locals 7

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getMinimumHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v4, v3}, Landroidx/window/extensions/embedding/SplitController;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/app/Activity;)Landroid/util/Size;

    move-result-object v5

    if-nez v5, :cond_2f

    goto :goto_16

    :cond_2f
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_16

    :cond_40
    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5a

    invoke-static {v2}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/content/Intent;)Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_5a
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method getPendingAppearedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getRequestedOrientation()I
    .locals 2

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method getRunningActivityCount()I
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getRunningActivityCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    return-object v0
.end method

.method getTaskFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getTaskId()I
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskId()I

    move-result v0

    return v0
.end method

.method getTopNonFinishingActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_18

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_18
    return-object v1
.end method

.method hasActivity(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasAppearedActivity(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method hasPendingAppearedActivity(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAbove(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v1, p1, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    if-ne p0, p1, :cond_b

    return v2

    :cond_b
    invoke-virtual {v0, p0}, Landroidx/window/extensions/embedding/TaskContainer;->indexOf(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I

    move-result v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mTaskContainer:Landroidx/window/extensions/embedding/TaskContainer;

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskContainer;->indexOf(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I

    move-result v1

    if-le v0, v1, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2
.end method

.method isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isFinished()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    return v0
.end method

.method isLastRequestedWindowingModeEqual(I)Z
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedWindowingMode:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isUnfinishedMiddleContainer()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mMiddleBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method isWaitingActivityAppear()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$setInfo$0$androidx-window-extensions-embedding-TaskFragmentContainer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p0}, Landroidx/window/extensions/embedding/SplitController;->onTaskFragmentAppearEmptyTimeout(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    return-void
.end method

.method onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->removePendingAppearedActivity(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeActivityToFinishOnExit(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removePendingAppearedActivity(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetDependencies()V
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mContainersToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mActivitiesToFinishOnExit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method setCurrentScale(F)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mCurrentScale:F

    return-void
.end method

.method setInfo(Landroid/window/TaskFragmentInfo;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mIsFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Landroidx/window/extensions/embedding/TaskFragmentContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer$$ExternalSyntheticLambda0;-><init>(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_29

    :cond_23
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4e

    :cond_29
    :goto_29
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_37
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mAppearEmptyTimeout:Ljava/lang/Runnable;

    :cond_4e
    :goto_4e
    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_8b

    :cond_59
    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    :cond_64
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_72
    if-ltz v1, :cond_8a

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_87
    add-int/lit8 v1, v1, -0x1

    goto :goto_72

    :cond_8a
    return-void

    :cond_8b
    :goto_8b
    return-void
.end method

.method setLastRequestedBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_8

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method setLastRequestedWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mLastRequestedWindowingMode:I

    return-void
.end method

.method setMiddleBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mMiddleBounds:Landroid/graphics/Rect;

    return-void
.end method

.method setPendingAppearedIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedIntent:Landroid/content/Intent;

    return-void
.end method

.method taskInfoActivityCountMatchesCreated()Z
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mPendingAppearedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mInfo:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    nop

    :goto_25
    return v1
.end method

.method toActivityStack()Landroidx/window/extensions/embedding/ActivityStack;
    .locals 3

    new-instance v0, Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->collectNonFinishingActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isEmpty()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/window/extensions/embedding/ActivityStack;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEmbeddingScale()F
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mEmbeddingScale:F

    return v0
.end method

.method setEmbeddingScale(F)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskFragmentContainer;->mEmbeddingScale:F

    return-void
.end method
