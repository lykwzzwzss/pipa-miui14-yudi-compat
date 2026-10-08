.class public final Lcom/android/server/wm/PipaDividerHooks;
.super Ljava/lang/Object;

.method public static updateActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;
    move-result-object v0
    if-eqz v0, :done
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
    move-result-object v0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    move-result-object v1
    if-eqz v1, :done
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    move-result-object v2
    invoke-interface {v0, v1, p0, v2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateResolvedConfigurationForEmbeddingDivider(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    :done
    return-void
.end method

.method public static updateTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/res/Configuration;)V
    .locals 9
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;
    move-result-object v0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    move-result-object v1
    if-eqz v1, :no_organizer
    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;
    move-result-object v1
    :no_organizer
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mWmService:Lcom/android/server/wm/WindowManagerService;
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z
    move-result v2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopRunningPackage()Ljava/lang/String;
    move-result-object v3
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I
    move-result v4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    move-result-object v6
    iget-object v5, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I
    move-result v5
    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->adjustTFConfigForEmbeddingResizing(Landroid/os/IBinder;ZLjava/lang/String;IILandroid/content/res/Configuration;)V
    const/4 v7, 0x6
    if-ne v4, v7, :done
    const/4 v7, 0x1
    if-ne v5, v7, :done
    iget-object v7, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;
    const/4 v8, 0x0
    invoke-virtual {v7, v8}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V
    invoke-virtual {v7, v8}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V
    :done
    return-void
.end method
