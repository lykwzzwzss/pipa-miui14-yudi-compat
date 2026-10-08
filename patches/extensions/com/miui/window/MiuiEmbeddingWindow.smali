.class public Lcom/miui/window/MiuiEmbeddingWindow;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindow.java"

# interfaces
.implements Lmiui/window/MiuiEmbeddingWindowStub;


# instance fields
.field impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-direct {v0}, Lcom/miui/window/MiuiEmbeddingWindowImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    return-void
.end method


# virtual methods
.method public enable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->enable()Z

    move-result v0

    return v0
.end method

.method public getEmbeddingPortraitBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->getEmbeddingPortraitBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public initSystemRules()V
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->initSystemRules()V

    return-void
.end method

.method public isAppNeedRelaunch(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->isAppNeedRelaunch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDisableSensor(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->isDisableSensor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyCameraStateChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->notifyCameraStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public overrideDisplayRotation(Landroid/view/DisplayInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->overrideDisplayRotation(Landroid/view/DisplayInfo;)Z

    move-result v0

    return v0
.end method

.method public sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public setEmbeddingHomePage(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->setEmbeddingHomePage(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public shouldReportConfigChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindow;->impl:Lcom/miui/window/MiuiEmbeddingWindowImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->shouldReportConfigChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method
