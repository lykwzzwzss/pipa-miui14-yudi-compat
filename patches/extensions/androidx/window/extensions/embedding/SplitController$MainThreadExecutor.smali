.class Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;
.super Ljava/lang/Object;
.source "SplitController.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor-IA;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitController$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
