.class Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;
.super Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.source "TaskFragmentAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplitAdapter"
.end annotation


# instance fields
.field private final mIsLeftHalf:Z

.field private final mWholeAnimationWidth:I


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;ZI)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    iput-boolean p3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mIsLeftHalf:Z

    iput p4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mWholeAnimationWidth:I

    if-eqz p4, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SplitAdapter must provide wholeAnimationWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 10

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mMatrix:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mWholeAnimationWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v3

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v7, v2

    sub-float/2addr v5, v3

    mul-float/2addr v7, v5

    div-float/2addr v7, v6

    sub-float v5, v4, v7

    iget-boolean v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mIsLeftHalf:Z

    if-eqz v6, :cond_3d

    add-float/2addr v0, v5

    goto :goto_3e

    :cond_3d
    sub-float/2addr v0, v5

    :goto_3e
    iget-object v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mMatrix:[F

    invoke-virtual {p1, v6, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v8, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SplitAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v8

    invoke-virtual {p1, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
