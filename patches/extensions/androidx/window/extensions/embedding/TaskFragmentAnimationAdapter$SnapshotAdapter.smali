.class Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;
.super Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.source "TaskFragmentAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnapshotAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;)V
    .locals 1

    iget-object v0, p2, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mMatrix:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter$SnapshotAdapter;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
