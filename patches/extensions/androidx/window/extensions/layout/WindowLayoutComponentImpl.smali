.class public Landroidx/window/extensions/layout/WindowLayoutComponentImpl;
.super Ljava/lang/Object;
.source "WindowLayoutComponentImpl.java"

# interfaces
.implements Landroidx/window/extensions/layout/WindowLayoutComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SampleExtension"


# instance fields
.field private final mFoldingFeatureProducer:Landroidx/window/util/DataProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/util/DataProducer<",
            "Ljava/util/List<",
            "Landroidx/window/common/CommonFoldingFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWindowLayoutChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XkTA_n58b4Cw9wT3LKS4oQrPVvA(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->onDisplayFeaturesChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misListeningForLayoutChanges(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;Landroid/os/IBinder;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->isListeningForLayoutChanges(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDisplayFeaturesChanged(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->onDisplayFeaturesChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged-IA;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Landroidx/window/common/RawFoldingFeatureProducer;

    invoke-direct {v0, p1}, Landroidx/window/common/RawFoldingFeatureProducer;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;

    invoke-direct {v1, p1, v0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;-><init>(Landroid/content/Context;Landroidx/window/util/DataProducer;)V

    iput-object v1, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mFoldingFeatureProducer:Landroidx/window/util/DataProducer;

    new-instance v2, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V

    invoke-interface {v1, v2}, Landroidx/window/util/DataProducer;->addDataChangedCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private convertToExtensionState(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDisplayFeatures(Landroid/app/Activity;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/layout/DisplayFeature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_17

    const-string v2, "SampleExtension"

    const-string v3, "This sample doesn\'t support display features on secondary displays"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_17
    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->isTaskInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-object v0

    :cond_1e
    iget-object v2, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mFoldingFeatureProducer:Landroidx/window/util/DataProducer;

    invoke-interface {v2}, Landroidx/window/util/DataProducer;->getData()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/common/CommonFoldingFeature;

    invoke-virtual {v4}, Landroidx/window/common/CommonFoldingFeature;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->convertToExtensionState(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_4b

    goto :goto_34

    :cond_4b
    invoke-virtual {v4}, Landroidx/window/common/CommonFoldingFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/window/util/ExtensionHelper;->rotateRectToDisplayRotation(ILandroid/graphics/Rect;)V

    invoke-static {p1, v6}, Landroidx/window/util/ExtensionHelper;->transformToWindowSpaceRect(Landroid/app/Activity;Landroid/graphics/Rect;)V

    invoke-direct {p0, v6}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->isRectZero(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6b

    new-instance v7, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-virtual {v4}, Landroidx/window/common/CommonFoldingFeature;->getType()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Landroidx/window/extensions/layout/FoldingFeature;-><init>(Landroid/graphics/Rect;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6b
    goto :goto_34

    :cond_6c
    return-object v0
.end method

.method private getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/extensions/layout/WindowLayoutInfo;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->getDisplayFeatures(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-direct {v1, v0}, Landroidx/window/extensions/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private isListeningForLayoutChanges(Landroid/os/IBinder;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->getActivitiesListeningForLayoutChanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    goto :goto_8

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private isRectZero(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isTaskInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 8

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v6}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne v7, v3, :cond_2f

    move-object v4, v6

    goto :goto_30

    :cond_2f
    goto :goto_19

    :cond_30
    :goto_30
    if-nez v4, :cond_33

    return v1

    :cond_33
    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RecentTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    return v1
.end method

.method private onDisplayFeaturesChanged()V
    .locals 3

    invoke-virtual {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->getActivitiesListeningForLayoutChanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/extensions/layout/WindowLayoutInfo;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->updateWindowLayout(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    goto :goto_8

    :cond_1c
    return-void
.end method


# virtual methods
.method public addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->onDisplayFeaturesChanged()V

    return-void
.end method

.method getActivitiesListeningForLayoutChanges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected hasListeners()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public removeWindowLayoutInfoListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->onDisplayFeaturesChanged()V

    return-void
.end method

.method updateWindowLayout(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->mWindowLayoutChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    if-eqz v0, :cond_d

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
