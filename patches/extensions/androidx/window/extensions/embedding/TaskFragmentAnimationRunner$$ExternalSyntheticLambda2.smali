.class public final synthetic Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda2;->f$1:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->lambda$createAnimator$1(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
