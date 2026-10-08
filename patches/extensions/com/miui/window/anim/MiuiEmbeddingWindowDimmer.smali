.class public Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;
.super Landroid/view/animation/Animation;
.source "MiuiEmbeddingWindowDimmer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiEmbeddingWindowDimmer"


# instance fields
.field private isVisible:Z

.field private mAlpha:F

.field private mDimLayer:Landroid/view/SurfaceControl;

.field private final mFromAlpha:F

.field private final mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mAlpha:F

    iput p1, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mFromAlpha:F

    iput p2, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mToAlpha:F

    return-void
.end method

.method private dimAbove(Landroid/view/SurfaceControl$Transaction;FLandroid/view/SurfaceControl;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_a

    invoke-direct {p0, p3}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->makeDimLayer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    :cond_a
    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_16

    const-string v0, "MiuiEmbeddingWindowDimmer"

    const-string v1, "[dimAbove] make dimLayer failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const v1, 0x7fffffff

    if-eqz p3, :cond_1f

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_22

    :cond_1f
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_22
    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput p2, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->isVisible:Z

    return-void
.end method

.method private makeColorLayer(Ljava/lang/String;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 2

    if-eqz p2, :cond_1d

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeDimLayer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[makeDimLayer] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -MiuiEmbeddingWindowDimmer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiEmbeddingWindowDimmer"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->makeColorLayer(Ljava/lang/String;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method private setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->isVisible:Z

    if-nez v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mFromAlpha:F

    iget v1, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mAlpha:F

    return-void
.end method

.method public getDimLayer()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public startDim(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[startDim] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiEmbeddingWindowDimmer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mFromAlpha:F

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;FLandroid/view/SurfaceControl;)V

    return-void
.end method

.method public stepDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mAlpha:F

    invoke-direct {p0, p1, v0}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    return-void
.end method

.method public stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stopDim] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiEmbeddingWindowDimmer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->isVisible:Z

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    :cond_34
    return-void
.end method
