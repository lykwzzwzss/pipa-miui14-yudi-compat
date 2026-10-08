.class Lcom/miui/window/MiuiEmbeddingWindowImpl;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowImpl.java"


# static fields
.field private static ENABLED:Z

.field static IS_FOLD_SCREEN_DEVICE:Z

.field static IS_TABLET:Z


# instance fields
.field private mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.config.miui_activity_embedding_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->ENABLED:Z

    const-string v0, "ro.config.fold"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->IS_FOLD_SCREEN_DEVICE:Z

    const-string v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "ro.config.tablet"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    sput-boolean v1, Lcom/miui/window/MiuiEmbeddingWindowImpl;->IS_TABLET:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miui_embedding_window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/window/IMiuiEmbeddingWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/window/IMiuiEmbeddingWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    return-void
.end method


# virtual methods
.method enable()Z
    .locals 1

    sget-boolean v0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->ENABLED:Z

    return v0
.end method

.method getEmbeddingPortraitBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/miui/window/MiuiEmbeddingWindow;->IS_FOLD:Z

    if-nez v0, :cond_a

    goto :goto_16

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    invoke-interface {v0}, Lcom/miui/window/IMiuiEmbeddingWindow;->getEmbeddingPortraitBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :cond_16
    :goto_16
    return-object v1
.end method

.method initSystemRules()V
    .locals 4

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_12
    iget-object v2, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    invoke-interface {v2, v0}, Lcom/miui/window/IMiuiEmbeddingWindow;->getSystemEmbeddedRules(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_1a

    move-object v1, v2

    goto :goto_1e

    :catch_1a
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1e
    invoke-static {v1, v0}, Lcom/miui/window/SplitRuleUtils;->parseSystemRules(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    move-result-object v3

    check-cast v3, Landroidx/window/extensions/embedding/MiuiSplitController;

    invoke-virtual {v3, v2}, Landroidx/window/extensions/embedding/MiuiSplitController;->setSystemRules(Ljava/util/List;)V

    :cond_31
    return-void
.end method

.method isAppNeedRelaunch(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->isAppNeedRelaunch(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSensor(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->isDisableSensor(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method isUsingCameraWhenEmbedded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->isUsingCameraWhenEmbedded(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCameraStateChanged(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/miui/window/IMiuiEmbeddingWindow;->notifyCameraStateChanged(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public overrideDisplayRotation(Landroid/view/DisplayInfo;)Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/window/MiuiEmbeddingWindowImpl;->isUsingCameraWhenEmbedded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput v1, p1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v0, 0x1

    return v0

    :cond_15
    return v1
.end method

.method sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z
    .locals 4

    if-eqz p2, :cond_4a

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4a

    :cond_9
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    move-object v1, v0

    :cond_26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    const/4 v2, 0x1

    return v2

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    return v0
.end method

.method setEmbeddingHomePage(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/window/MiuiEmbeddingWindowImpl;->mRemote:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->setEmbeddingHomePage(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method shouldReportConfigChange(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_11

    goto :goto_26

    :cond_11
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_25
    return v1

    :cond_26
    :goto_26
    return v1
.end method
