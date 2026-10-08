.class public Lcom/miui/window/anim/DimmerAnimationUtils;
.super Ljava/lang/Object;
.source "DimmerAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDim(Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;
    .locals 3

    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_27

    move-object v0, p0

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    instance-of v2, v1, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    if-eqz v2, :cond_26

    move-object v0, v1

    check-cast v0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->startDim(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-object v0

    :cond_26
    goto :goto_f

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static stepDim(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;)V
    .locals 3

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->getDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p0}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->stepDim(Landroid/view/SurfaceControl$Transaction;)V

    :cond_17
    return-void
.end method

.method public static stopDim(Landroid/view/animation/Animation;JLandroid/view/SurfaceControl$Transaction;Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    if-eqz p4, :cond_d

    invoke-virtual {p4, p3}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    :cond_d
    return-void
.end method
