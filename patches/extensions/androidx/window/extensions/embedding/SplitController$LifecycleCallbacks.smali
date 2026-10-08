.class public final Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;
.super Landroidx/window/common/EmptyLifecycleCallbacksAdapter;
.source "SplitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "LifecycleCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/extensions/embedding/SplitController;


# direct methods
.method protected constructor <init>(Landroidx/window/extensions/embedding/SplitController;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-direct {p0}, Landroidx/window/common/EmptyLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityConfigurationChanged(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v1, p1}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$monActivityConfigurationChanged(Landroidx/window/extensions/embedding/SplitController;Landroid/app/Activity;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/SplitController;->onActivityCreated(Landroid/app/Activity;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v1, p1}, Landroidx/window/extensions/embedding/SplitController;->onActivityDestroyed(Landroid/app/Activity;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitController;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, p1}, Landroidx/window/extensions/embedding/SplitController;->getTaskFragmentTokenFromActivityClientRecord(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_20

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, p1}, Landroidx/window/extensions/embedding/SplitController;->onActivityCreated(Landroid/app/Activity;)V

    :cond_1e
    monitor-exit v0

    return-void

    :cond_20
    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    iget-object v3, v3, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2a
    if-ltz v3, :cond_61

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitController$LifecycleCallbacks;->this$0:Landroidx/window/extensions/embedding/SplitController;

    iget-object v4, v4, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/extensions/embedding/TaskContainer;

    iget-object v4, v4, Landroidx/window/extensions/embedding/TaskContainer;->mContainers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3e
    if-ltz v5, :cond_5e

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v6, v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->hasActivity(Landroid/os/IBinder;)Z

    move-result v7

    if-nez v7, :cond_5b

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-virtual {v6, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addPendingAppearedActivity(Landroid/app/Activity;)V

    monitor-exit v0

    return-void

    :cond_5b
    add-int/lit8 v5, v5, -0x1

    goto :goto_3e

    :cond_5e
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_61
    monitor-exit v0

    return-void

    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    throw v1
.end method
