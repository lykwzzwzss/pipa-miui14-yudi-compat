.class public Landroidx/window/extensions/layout/FoldingFeature;
.super Ljava/lang/Object;
.source "FoldingFeature.java"

# interfaces
.implements Landroidx/window/extensions/layout/DisplayFeature;


# static fields
.field public static final STATE_FLAT:I = 0x1

.field public static final STATE_HALF_OPENED:I = 0x2

.field public static final TYPE_FOLD:I = 0x1

.field public static final TYPE_HINGE:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mState:I

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/window/extensions/layout/FoldingFeature;->validateFeatureBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    iput p2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    iput p3, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    return-void
.end method

.method private static hashBounds(Landroid/graphics/Rect;)I
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d
    const-string v0, "HALF_OPENED"

    return-object v0

    :pswitch_20
    const-string v0, "FLAT"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d
    const-string v0, "HINGE"

    return-object v0

    :pswitch_20
    const-string v0, "FOLD"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private static validateFeatureBounds(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounds must be non zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounding rectangle must start at the top or left window edge for folding features"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroidx/window/extensions/layout/FoldingFeature;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroidx/window/extensions/layout/FoldingFeature;

    iget v2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    iget v3, v0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget v2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    iget v3, v0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget-object v1, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroidx/window/extensions/layout/FoldingFeature;->hashBounds(Landroid/graphics/Rect;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mType:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtensionDisplayFoldFeature { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/layout/FoldingFeature;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v1

    invoke-static {v1}, Landroidx/window/extensions/layout/FoldingFeature;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/layout/FoldingFeature;->mState:I

    invoke-static {v1}, Landroidx/window/extensions/layout/FoldingFeature;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
