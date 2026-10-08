.class Landroidx/window/extensions/embedding/SplitPresenter$1;
.super Ljava/lang/Object;
.source "SplitPresenter.java"

# interfaces
.implements Landroid/app/ActivityThread$MiuiEmbeddingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/extensions/embedding/SplitPresenter;


# direct methods
.method constructor <init>(Landroidx/window/extensions/embedding/SplitPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPresenter$1;->this$0:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptBackPressedForEmbedding(Landroid/app/Activity;Z)Z
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter$1;->this$0:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->-$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitPresenter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter$1;->this$0:Landroidx/window/extensions/embedding/SplitPresenter;

    invoke-virtual {v1, p1, p2}, Landroidx/window/extensions/embedding/SplitPresenter;->interceptBackPressed(Landroid/app/Activity;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
