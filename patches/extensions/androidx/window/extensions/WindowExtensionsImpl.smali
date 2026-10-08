.class public Landroidx/window/extensions/WindowExtensionsImpl;
.super Ljava/lang/Object;
.source "WindowExtensionsImpl.java"

# interfaces
.implements Landroidx/window/extensions/WindowExtensions;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile mSplitController:Landroidx/window/extensions/embedding/SplitController;

.field private volatile mWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mSplitController:Landroidx/window/extensions/embedding/SplitController;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mSplitController:Landroidx/window/extensions/embedding/SplitController;

    if-nez v1, :cond_23

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isAppSelfAdaptEmbeddingExit()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    move-result-object v1

    iput-object v1, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mSplitController:Landroidx/window/extensions/embedding/SplitController;

    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mSplitController:Landroidx/window/extensions/embedding/SplitController;

    return-object v0
.end method

.method public getVendorApiLevel()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    if-nez v1, :cond_16

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;

    invoke-direct {v2, v1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    iget-object v0, p0, Landroidx/window/extensions/WindowExtensionsImpl;->mWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    return-object v0
.end method
