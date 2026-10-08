.class public final Landroidx/window/util/ExtensionHelper;
.super Ljava/lang/Object;
.source "ExtensionHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static isZero(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static rotateBounds(Landroid/graphics/Rect;III)V
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    packed-switch p3, :pswitch_data_38

    return-void

    :pswitch_6
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    :pswitch_19
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    return-void

    :pswitch_24
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :pswitch_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_37
        :pswitch_24
        :pswitch_19
        :pswitch_6
    .end packed-switch
.end method

.method public static rotateRectToDisplayRotation(ILandroid/graphics/Rect;)V
    .locals 7

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_13

    const/4 v5, 0x3

    if-ne v2, v5, :cond_12

    goto :goto_13

    :cond_12
    move v3, v4

    :cond_13
    :goto_13
    if-eqz v3, :cond_18

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1a

    :cond_18
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_1a
    if-eqz v3, :cond_1f

    iget v6, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_21

    :cond_1f
    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_21
    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-static {p1, v5, v6, v2}, Landroidx/window/util/ExtensionHelper;->rotateBounds(Landroid/graphics/Rect;III)V

    return-void
.end method

.method public static transformToWindowSpaceRect(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 3

    invoke-static {p0}, Landroidx/window/util/ExtensionHelper;->getWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_a
    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_14
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
