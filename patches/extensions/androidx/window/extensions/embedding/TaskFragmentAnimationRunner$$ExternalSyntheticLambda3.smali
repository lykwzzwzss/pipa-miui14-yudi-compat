.class public final synthetic Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    iput p2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$2:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    iget v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$2:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda3;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;->lambda$onAnimationStart$0$androidx-window-extensions-embedding-TaskFragmentAnimationRunner(I[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
