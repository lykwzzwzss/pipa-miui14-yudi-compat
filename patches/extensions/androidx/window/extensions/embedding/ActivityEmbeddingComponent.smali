.class public interface abstract Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
.super Ljava/lang/Object;
.source "ActivityEmbeddingComponent.java"


# virtual methods
.method public abstract isActivityEmbedded(Landroid/app/Activity;)Z
.end method

.method public abstract setEmbeddingRules(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSplitInfoCallback(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation
.end method
