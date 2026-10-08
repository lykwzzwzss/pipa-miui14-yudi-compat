.class Landroidx/window/extensions/embedding/TaskFragmentAnimationController;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationController.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TaskFragAnimationCtrl"


# instance fields
.field final mDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mOrganizer:Landroid/window/TaskFragmentOrganizer;

.field private final mRegisterTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteRunner:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;


# direct methods
.method constructor <init>(Landroid/window/TaskFragmentOrganizer;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    invoke-direct {v1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;-><init>()V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRemoteRunner:Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mOrganizer:Landroid/window/TaskFragmentOrganizer;

    new-instance v7, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v7}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v7, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    new-instance v8, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    const/4 v1, 0x6

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x1c

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/4 v1, 0x7

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x1d

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x9

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v1, 0x1e

    invoke-virtual {v7, v1, v0}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method


# virtual methods
.method registerRemoteAnimations(I)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mOrganizer:Landroid/window/TaskFragmentOrganizer;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mDefinition:Landroid/view/RemoteAnimationDefinition;

    invoke-virtual {v0, p1, v1}, Landroid/window/TaskFragmentOrganizer;->registerRemoteAnimations(ILandroid/view/RemoteAnimationDefinition;)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method unregisterAllRemoteAnimations()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->unregisterRemoteAnimations(I)V

    goto :goto_b

    :cond_1f
    return-void
.end method

.method unregisterRemoteAnimations(I)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mOrganizer:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->unregisterRemoteAnimations(I)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationController;->mRegisterTasks:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
