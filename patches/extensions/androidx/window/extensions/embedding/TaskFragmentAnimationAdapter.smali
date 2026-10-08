.class Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;,
        Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;,
        Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;
    }
.end annotation


# static fields
.field private static final LAYER_NO_OVERRIDE:I = -0x1


# instance fields
.field final mAnimation:Landroid/view/animation/Animation;

.field private mDimmerAnimation:Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

.field private mIsFirstFrame:Z

.field final mLeash:Landroid/view/SurfaceControl;

.field final mMatrix:[F

.field private mOverrideLayer:I

.field final mRect:Landroid/graphics/Rect;

.field final mTarget:Landroid/view/RemoteAnimationTarget;

.field final mTransformation:Landroid/view/animation/Transformation;

.field final mVecs:[F


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V
    .locals 1

    iget-object v0, p2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mMatrix:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mVecs:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mIsFirstFrame:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mOverrideLayer:I

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iput-object p2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method final getDurationHint()J
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method final onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method final onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 4

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mIsFirstFrame:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    iget v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mOverrideLayer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_1d
    sget-boolean v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->USE_MIUI_EMBEDDING_ANIMATION:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-static {v0, p1, v1}, Lcom/miui/window/anim/DimmerAnimationUtils;->startDim(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mDimmerAnimation:Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mIsFirstFrame:Z

    :cond_2e
    sget-boolean v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->USE_MIUI_EMBEDDING_ANIMATION:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mDimmerAnimation:Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    invoke-static {v0, p2, p3, p1, v1}, Lcom/miui/window/anim/DimmerAnimationUtils;->stopDim(Landroid/view/animation/Animation;JLandroid/view/SurfaceControl$Transaction;Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;)V

    :cond_39
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mMatrix:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mMatrix:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    sget-boolean v6, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->USE_MIUI_EMBEDDING_ANIMATION:Z

    if-eqz v6, :cond_76

    iget-object v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mDimmerAnimation:Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    invoke-static {p1, v5, v6}, Lcom/miui/window/anim/DimmerAnimationUtils;->stepDim(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;)V

    :cond_76
    return-void
.end method

.method final overrideLayer(I)V
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->mOverrideLayer:I

    return-void
.end method
