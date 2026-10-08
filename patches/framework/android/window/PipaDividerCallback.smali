.class public final synthetic Landroid/window/PipaDividerCallback;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/PipaDividerCallback;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput-object p2, p0, Landroid/window/PipaDividerCallback;->f$1:Landroid/os/IBinder;

    iput p3, p0, Landroid/window/PipaDividerCallback;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/window/PipaDividerCallback;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget-object v1, p0, Landroid/window/PipaDividerCallback;->f$1:Landroid/os/IBinder;

    iget v2, p0, Landroid/window/PipaDividerCallback;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskFragmentOrganizer$1;->lambda$onMiuiEmbedStateChanged$6$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;I)V

    return-void
.end method
