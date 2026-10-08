.class Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "TaskFragmentAnimationRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskFragAnimationRunner"


# instance fields
.field private final mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

.field private mAnimator:Landroid/animation/Animator;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$5sRBDj-rzg4Ve2Be60E1TQXw9KQ(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->cancelAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimator(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "androidx.window.extensions.embedding"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mHandler:Landroid/os/Handler;

    sget-boolean v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->USE_MIUI_EMBEDDING_ANIMATION:Z

    if-eqz v2, :cond_20

    new-instance v2, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;

    invoke-direct {v2, v1}, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    goto :goto_27

    :cond_20
    new-instance v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-direct {v2, v1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    :goto_27
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private createAnimationAdapters(I[Landroid/view/RemoteAnimationTarget;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/view/RemoteAnimationTarget;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;",
            ">;"
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled transit type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    invoke-direct {p0, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createChangeAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_21
    invoke-direct {p0, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createCloseAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_26
    invoke-direct {p0, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createOpenAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x6 -> :sswitch_26
        0x7 -> :sswitch_21
        0x8 -> :sswitch_26
        0x9 -> :sswitch_21
        0x1c -> :sswitch_26
        0x1d -> :sswitch_21
        0x1e -> :sswitch_1c
    .end sparse-switch
.end method

.method private createAnimator(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/Animator;
    .locals 7

    nop

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createAnimationAdapters(I[Landroid/view/RemoteAnimationTarget;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->getDurationHint()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_b

    :cond_20
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3e

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;

    invoke-direct {v4, p0, v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;Ljava/util/List;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createChangeAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_55

    aget-object v4, p1, v3

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    if-eqz v5, :cond_30

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-virtual {v5, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->createChangeBoundsChangeAnimations(Landroid/view/RemoteAnimationTarget;)[Landroid/view/animation/Animation;

    move-result-object v5

    iget-object v7, v4, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v7, :cond_25

    new-instance v7, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;

    aget-object v8, v5, v2

    invoke-direct {v7, v8, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    new-instance v7, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;

    aget-object v6, v5, v6

    invoke-direct {v7, v6, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_30
    iget-boolean v5, v4, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    if-eqz v5, :cond_39

    invoke-static {v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->createNoopAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;

    move-result-object v5

    goto :goto_4a

    :cond_39
    iget v5, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v5, v6, :cond_44

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-virtual {v5, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->createChangeBoundsCloseAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;

    move-result-object v5

    goto :goto_4a

    :cond_44
    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-virtual {v5, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->createChangeBoundsOpenAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;

    move-result-object v5

    :goto_4a
    new-instance v6, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    invoke-direct {v6, v5, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_55
    return-object v0
.end method

.method private createCloseAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda0;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createOpenCloseAnimationAdapters([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/BiFunction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createOpenAnimationAdapters([Landroid/view/RemoteAnimationTarget;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimationSpec:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda1;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createOpenCloseAnimationAdapters([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/BiFunction;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createOpenCloseAnimationAdapter(Landroid/view/RemoteAnimationTarget;Ljava/util/function/BiFunction;Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/RemoteAnimationTarget;",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/RemoteAnimationTarget;",
            "Landroid/graphics/Rect;",
            "Landroid/view/animation/Animation;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;"
        }
    .end annotation

    invoke-interface {p2, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1f

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_1f

    new-instance v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-direct {v2, v0, p1, v3, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;ZI)V

    return-object v2

    :cond_1f
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_36

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_36

    new-instance v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-direct {v2, v0, p1, v3, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;ZI)V

    return-object v2

    :cond_36
    new-instance v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    invoke-direct {v2, v0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    return-object v2
.end method

.method private createOpenCloseAnimationAdapters([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/BiFunction;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/RemoteAnimationTarget;",
            "Z",
            "Ljava/util/function/BiFunction<",
            "Landroid/view/RemoteAnimationTarget;",
            "Landroid/graphics/Rect;",
            "Landroid/view/animation/Animation;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    array-length v4, p1

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_33

    aget-object v6, p1, v5

    iget v7, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_30

    :cond_28
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_33
    const/16 v4, 0x3e8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0, v7, p3, v2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/view/RemoteAnimationTarget;Ljava/util/function/BiFunction;Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    move-result-object v8

    if-eqz p2, :cond_56

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->overrideLayer(I)V

    move v4, v9

    :cond_56
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0, v7, p3, v3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/view/RemoteAnimationTarget;Ljava/util/function/BiFunction;Landroid/graphics/Rect;)Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    move-result-object v8

    if-nez p2, :cond_76

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->overrideLayer(I)V

    move v4, v9

    :cond_76
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_7a
    return-object v5
.end method

.method static synthetic lambda$createAnimator$1(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 5

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_9

    :cond_1d
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private startAnimation(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_10

    const-string v0, "TaskFragAnimationRunner"

    const-string v1, "start new animation when the previous one is not finished yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createAnimator(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationStart$0$androidx-window-extensions-embedding-TaskFragmentAnimationRunner(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->startAnimation(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public onAnimationCancelled(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda4;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    array-length v0, p3

    if-nez v0, :cond_11

    array-length v0, p4

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p5}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragment shouldn\'t handle animation withwallpaper or non-app windows."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
