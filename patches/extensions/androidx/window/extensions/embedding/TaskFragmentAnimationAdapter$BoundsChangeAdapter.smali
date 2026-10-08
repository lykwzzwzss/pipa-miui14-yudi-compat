.class Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;
.super Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.source "TaskFragmentAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundsChangeAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method


# virtual methods
.method onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mMatrix:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v4, v4, v1

    div-float v4, v3, v4

    aput v4, v0, v1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v4, v4, v2

    div-float/2addr v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v6, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v1, v6, v1

    mul-float/2addr v4, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mVecs:[F

    aget v2, v4, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v5

    float-to-int v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$BoundsChangeAdapter;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
