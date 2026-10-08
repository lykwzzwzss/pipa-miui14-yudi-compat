.class public abstract Landroidx/window/util/BaseDataProducer;
.super Ljava/lang/Object;
.source "BaseDataProducer.java"

# interfaces
.implements Landroidx/window/util/DataProducer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/window/util/DataProducer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/util/BaseDataProducer;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addDataChangedCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/util/BaseDataProducer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroidx/window/util/BaseDataProducer;->onListenersChanged(Ljava/util/Set;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method protected notifyDataChanged()V
    .locals 3

    iget-object v0, p0, Landroidx/window/util/BaseDataProducer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected onListenersChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final removeDataChangedCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/util/BaseDataProducer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/window/util/BaseDataProducer;->mCallbacks:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroidx/window/util/BaseDataProducer;->onListenersChanged(Ljava/util/Set;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
