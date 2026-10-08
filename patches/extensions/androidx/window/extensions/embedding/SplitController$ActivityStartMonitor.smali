.class public Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;
.super Landroid/app/Instrumentation$ActivityMonitor;
.source "SplitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActivityStartMonitor"
.end annotation


# instance fields
.field mCurrentIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroidx/window/extensions/embedding/SplitController;


# direct methods
.method protected constructor <init>(Landroidx/window/extensions/embedding/SplitController;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-direct {p0}, Landroid/app/Instrumentation$ActivityMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$smisInPictureInPicture(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1

    :cond_12
    const/4 v0, 0x0

    :cond_13
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_2f

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v0}, Landroidx/window/extensions/embedding/SplitController;->getTaskId(Landroid/app/Activity;)I

    move-result v3

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v4, v2, v3, p2, v0}, Landroidx/window/extensions/embedding/SplitController;->resolveStartActivityIntent(Landroid/window/WindowContainerTransaction;ILandroid/content/Intent;Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    move-object v3, v4

    goto :goto_35

    :cond_2f
    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v3, v2, p2}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$mresolveStartActivityIntentFromNonActivityContext(Landroidx/window/extensions/embedding/SplitController;Landroid/window/WindowContainerTransaction;Landroid/content/Intent;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    :goto_35
    if-eqz v3, :cond_49

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    iget-object v4, v4, Landroidx/window/extensions/embedding/SplitController;->mPresenter:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v4, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const-string v4, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->mCurrentIntent:Landroid/content/Intent;

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_4f

    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1

    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public onStartActivityResult(ILandroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivityResult(ILandroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_25

    if-eqz p1, :cond_25

    const-string v1, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->clearPendingAppearedIntentIfNeeded(Landroid/content/Intent;)V

    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitController$ActivityStartMonitor;->mCurrentIntent:Landroid/content/Intent;

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    throw v1
.end method
