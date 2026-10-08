.class Landroidx/window/extensions/embedding/TaskContainer;
.super Ljava/lang/Object;
.source "TaskContainer.java"


# instance fields
.field final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmbeddingScale:F

.field final mFinishedContainer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mSplitContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTaskId:I

.field private mWindowingMode:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mEmbeddingScale:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mSplitContainers:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mFinishedContainer:Ljava/util/Set;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    iput p1, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskId:I

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Task id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method cleanupPendingAppearedActivity(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->removePendingAppearedActivity(Landroid/os/IBinder;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method getEmbeddingScale()F
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mEmbeddingScale:F

    return v0
.end method

.method getTaskBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getTaskId()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskId:I

    return v0
.end method

.method getTopNonFinishingActivity()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    return-object v0
.end method

.method getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I
    .locals 2

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskContainer;->isInPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_23

    :cond_f
    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x6

    goto :goto_22

    :cond_20
    :goto_20
    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    :goto_22
    return v0

    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method getWindowingModeForTask()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    return v0
.end method

.method indexOf(Landroidx/window/extensions/embedding/TaskFragmentContainer;)I
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mFinishedContainer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isInPictureInPicture()Z
    .locals 2

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTaskBoundsInitialized()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWindowingModeInitialized()Z
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->onActivityDestroyed(Landroid/os/IBinder;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method setEmbeddingScale(F)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskContainer;->mEmbeddingScale:F

    return-void
.end method

.method setTaskBounds(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskContainer;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method setWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskContainer;->mWindowingMode:I

    return-void
.end method
