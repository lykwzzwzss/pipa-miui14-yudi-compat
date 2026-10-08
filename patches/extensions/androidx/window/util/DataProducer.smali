.class public interface abstract Landroidx/window/util/DataProducer;
.super Ljava/lang/Object;
.source "DataProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addDataChangedCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract getData()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract removeDataChangedCallback(Ljava/lang/Runnable;)V
.end method
