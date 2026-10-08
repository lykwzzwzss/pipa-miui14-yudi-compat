.class public interface abstract Landroidx/window/extensions/layout/WindowLayoutComponent;
.super Ljava/lang/Object;
.source "WindowLayoutComponent.java"


# virtual methods
.method public abstract addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeWindowLayoutInfoListener(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation
.end method
