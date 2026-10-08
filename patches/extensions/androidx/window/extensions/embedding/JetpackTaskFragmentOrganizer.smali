.class Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;
.super Landroid/window/TaskFragmentOrganizer;
.source "JetpackTaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;
    }
.end annotation


# instance fields
.field mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

.field private final mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

.field final mFragmentInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFragmentParentConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentParentConfigs:Ljava/util/Map;

    iput-object p2, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    return-void
.end method

.method private createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;F)V

    return-void
.end method

.method private createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;F)V
    .locals 2

    new-instance v0, Landroid/window/TaskFragmentCreationParams$Builder;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Landroid/window/TaskFragmentCreationParams$Builder;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v0, p4}, Landroid/window/TaskFragmentCreationParams$Builder;->setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/window/TaskFragmentCreationParams$Builder;->setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/window/TaskFragmentCreationParams$Builder;->setPairedActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/window/TaskFragmentCreationParams$Builder;->setScale(F)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams$Builder;->build()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/window/TaskFragmentCreationParams;)V

    return-void
.end method

.method private createTaskFragmentAndReparentActivity(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/app/Activity;F)V
    .locals 9

    invoke-virtual {p6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v8

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;F)V

    move-object v0, p1

    move-object v1, p2

    invoke-virtual {p1, p2, v8}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)V

    return-void
.end method

.method createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;F)V

    return-void
.end method

.method createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/window/TaskFragmentCreationParams;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1, p2}, Landroid/window/WindowContainerTransaction;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deleteTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->deleteTaskFragment(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method expandActivity(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 9

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    nop

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragmentAndReparentActivity(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/app/Activity;F)V

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method expandTaskFragment(Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroidx/window/extensions/embedding/SplitRule;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V

    return-void
.end method

.method public onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method

.method public onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    :cond_10
    return-void
.end method

.method public onTaskFragmentError(Landroid/os/IBinder;Landroid/window/TaskFragmentInfo;ILjava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v0, :cond_12

    invoke-interface {v0, p2, p3}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onTaskFragmentError(Landroid/window/TaskFragmentInfo;I)V

    :cond_12
    return-void
.end method

.method public onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v1, :cond_10

    invoke-interface {v1, p1}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    :cond_10
    return-void
.end method

.method public onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method public onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentParentConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mCallback:Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    :cond_19
    return-void
.end method

.method resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez p3, :cond_10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p3, v0

    :cond_10
    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroidx/window/extensions/embedding/SplitRule;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_d

    invoke-static {p4}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishSecondaryWithPrimary(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    if-eqz p4, :cond_17

    invoke-static {p4}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishPrimaryWithSecondary(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    if-nez v3, :cond_1c

    if-eqz v1, :cond_28

    :cond_1c
    new-instance v2, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>()V

    move-object v0, v2

    invoke-virtual {v0, v3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->setShouldDelayPrimaryLastActivityRemoval(Z)V

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->setShouldDelaySecondaryLastActivityRemoval(Z)V

    :cond_28
    invoke-virtual {p1, p2, p3, v0}, Landroid/window/WindowContainerTransaction;->setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method startActivityToSide(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/app/Activity;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;I)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->startActivityToSide(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/app/Activity;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;IF)V

    return-void
.end method

.method startActivityToSide(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/app/Activity;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;IF)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move/from16 v12, p10

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v13

    iget-object v0, v8, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p3}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v10, v12}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V

    goto :goto_2b

    :cond_1b
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p10

    move-object/from16 v6, p4

    move/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragmentAndReparentActivity(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/app/Activity;F)V

    :goto_2b
    new-instance v0, Landroid/window/TaskFragmentCreationParams$Builder;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-direct {v0, v1, v11, v13}, Landroid/window/TaskFragmentCreationParams$Builder;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentCreationParams$Builder;->setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/window/TaskFragmentCreationParams$Builder;->setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    move/from16 v2, p11

    invoke-virtual {v0, v2}, Landroid/window/TaskFragmentCreationParams$Builder;->setScale(F)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/window/TaskFragmentCreationParams$Builder;->setPairedPrimaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams$Builder;->build()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/window/TaskFragmentCreationParams;)V

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual {p1, v11, v13, v3, v4}, Landroid/window/WindowContainerTransaction;->startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-object/from16 v5, p9

    invoke-virtual {p0, p1, v10, v11, v5}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroidx/window/extensions/embedding/SplitRule;)V

    return-void
.end method

.method startOverrideSplitAnimation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    invoke-direct {v0, p0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    :cond_b
    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->registerRemoteAnimations(I)V

    return-void
.end method

.method stopOverrideSplitAnimation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->unregisterRemoteAnimations(I)V

    :cond_7
    return-void
.end method

.method public unregisterOrganizer()V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->unregisterAllRemoteAnimations()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mAnimationController:Landroidx/window/extensions/embedding/TaskFragmentAnimationController;

    :cond_a
    invoke-super {p0}, Landroid/window/TaskFragmentOrganizer;->unregisterOrganizer()V

    return-void
.end method

.method updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
