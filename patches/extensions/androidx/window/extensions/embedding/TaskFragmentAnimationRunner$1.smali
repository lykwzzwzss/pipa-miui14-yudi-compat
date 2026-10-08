.class Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationRunner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->createAnimator(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

.field final synthetic val$adapters:Ljava/util/List;

.field final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;Ljava/util/List;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    iput-object p2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->val$adapters:Ljava/util/List;

    iput-object p3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->val$adapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;

    invoke-virtual {v2, v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationAdapter;->onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_1e
    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_28
    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$1;->this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->-$$Nest$fputmAnimator(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
