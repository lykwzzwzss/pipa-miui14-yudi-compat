.class Landroidx/window/extensions/embedding/MiuiSplitPresenter;
.super Landroidx/window/extensions/embedding/SplitPresenter;
.source "MiuiSplitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/MiuiSplitPresenter$Position;,
        Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;
    }
.end annotation


# static fields
.field static final POSITION_MID:I = 0x3

.field private static final SPLIT_LINE_HALF_WIDTH:I


# instance fields
.field private final mController:Landroidx/window/extensions/embedding/SplitController;

.field private mIsContainerInVideo:Z

.field private mPortraitBounds:Landroid/graphics/Rect;

.field private mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    nop

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x3fb33333    # 1.4f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/SplitController;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitPresenter;-><init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/SplitController;)V

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->NOT_SCALE:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    iput-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mIsContainerInVideo:Z

    iput-object p2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    return-void
.end method

.method private createFragmentOptions(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)Landroid/window/TaskFragmentCreationParams;
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Landroid/window/TaskFragmentCreationParams$Builder;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/window/TaskFragmentCreationParams$Builder;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/window/TaskFragmentCreationParams$Builder;->setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/window/TaskFragmentCreationParams$Builder;->setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/window/TaskFragmentCreationParams$Builder;->setScale(F)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TaskFragmentCreationParams$Builder;->build()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)V
    .locals 7

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedWindowingMode(I)V

    nop

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->createFragmentOptions(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)Landroid/window/TaskFragmentCreationParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerTransaction;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Creating a task fragment that is not registered with controller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroidx/window/extensions/embedding/SplitRule;",
            "Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-static {p1, p3, p5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    :cond_c
    packed-switch p0, :pswitch_data_20

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    :pswitch_15
    invoke-static {p1, p2, p4, p3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getRightContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroidx/window/extensions/embedding/SplitRule;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-static {p1, p2, p4, p3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getLeftContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroidx/window/extensions/embedding/SplitRule;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method static getLeftContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroidx/window/extensions/embedding/SplitRule;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p3}, Landroidx/window/extensions/embedding/SplitRule;->getSplitRatio()F

    move-result v1

    :goto_17
    nop

    sget-object v2, Landroidx/window/extensions/embedding/MiuiSplitPresenter$1;->$SwitchMap$androidx$window$extensions$embedding$MiuiSplitPresenter$ScaleMode:[I

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_9a

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    sget v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_98

    :pswitch_43
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, p1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :pswitch_72
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, p1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_98
    return-object v0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_72
        :pswitch_43
    .end packed-switch
.end method

.method static getMiddleContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Landroidx/window/extensions/embedding/MiuiSplitPresenter$1;->$SwitchMap$androidx$window$extensions$embedding$MiuiSplitPresenter$ScaleMode:[I

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v1, :pswitch_data_8c

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    :pswitch_31
    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p0, p1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    :pswitch_60
    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, p1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_8a
    return-object v0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_31
    .end packed-switch
.end method

.method private getPortraitBounds()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mPortraitBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-boolean v0, Lcom/miui/window/MiuiEmbeddingWindow;->IS_FOLD:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-interface {v0}, Lmiui/window/MiuiEmbeddingWindowStub;->getEmbeddingPortraitBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mPortraitBounds:Landroid/graphics/Rect;

    goto :goto_42

    :cond_14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mPortraitBounds:Landroid/graphics/Rect;

    :goto_42
    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mPortraitBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static getRightContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroidx/window/extensions/embedding/SplitRule;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    invoke-static {}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p3}, Landroidx/window/extensions/embedding/SplitRule;->getSplitRatio()F

    move-result v1

    :goto_17
    nop

    sget-object v2, Landroidx/window/extensions/embedding/MiuiSplitPresenter$1;->$SwitchMap$androidx$window$extensions$embedding$MiuiSplitPresenter$ScaleMode:[I

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    sget v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_95

    :pswitch_41
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_95

    :pswitch_66
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->SPLIT_LINE_HALF_WIDTH:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, p1, p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_95
    return-object v0

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_66
        :pswitch_41
    .end packed-switch
.end method

.method static getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F
    .locals 3

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$1;->$SwitchMap$androidx$window$extensions$embedding$MiuiSplitPresenter$ScaleMode:[I

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_3a

    return v1

    :pswitch_e
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :pswitch_23
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method static intToMode(I)Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;
    .locals 1

    packed-switch p0, :pswitch_data_c

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->NOT_SCALE:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-object v0

    :pswitch_6
    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->SCALE_FIT_HEIGHT:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-object v0

    :pswitch_9
    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->SCALE_FIT_WIDTH:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;F)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 10

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    :goto_11
    if-eqz v0, :cond_27

    if-ne v0, p4, :cond_16

    goto :goto_27

    :cond_16
    invoke-virtual {p0, p1, v0, p3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    goto :goto_5c

    :cond_27
    :goto_27
    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, p2, v1}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setEmbeddingScale(F)V

    invoke-virtual {v0, p5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setCurrentScale(F)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move v8, v2

    move v9, p5

    invoke-direct/range {v3 .. v9}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)V

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, p2, p3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->restrictBoundsIfNeeded(Landroid/app/Activity;Landroid/graphics/Rect;)V

    nop

    :goto_5c
    return-object v0
.end method

.method private restrictBoundsIfNeeded(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 8

    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_18

    return-void

    :cond_18
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v4, v5, :cond_89

    iput v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v7, :cond_9a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9a

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v7}, Landroid/app/WindowConfiguration;->setRotation(I)V

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v7}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    goto :goto_9a

    :cond_89
    iput v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v3, :cond_9a

    if-eq v3, v6, :cond_9a

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/WindowConfiguration;->setRotation(I)V

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v5}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    :cond_9a
    :goto_9a
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    return-void
.end method


# virtual methods
.method createNewMiddleSplitContainer(Landroid/app/Activity;)V
    .locals 11

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v7, v8, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getMiddleContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v7, v8, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v10

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;F)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setMiddleBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->startOverrideSplitAnimation(I)V

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method createNewSplitContainer(Landroid/app/Activity;Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitPairRule;)V
    .locals 23

    move-object/from16 v6, p0

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v13, v0

    invoke-static/range {p1 .. p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getActivitiesMinDimensionsPair(Landroid/app/Activity;Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-object v0, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v15, v12, v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v16

    iget-object v4, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v0, 0x0

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v17

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;F)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v18

    iget-object v4, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v0, 0x1

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v19

    iget-object v0, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v11, p2

    invoke-virtual {v0, v11}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v20

    move-object/from16 v0, v18

    invoke-virtual/range {p3 .. p3}, Landroidx/window/extensions/embedding/SplitPairRule;->shouldClearTop()Z

    move-result v1

    if-eqz v1, :cond_57

    if-eqz v20, :cond_57

    move-object/from16 v0, v20

    move-object/from16 v21, v0

    goto :goto_59

    :cond_57
    move-object/from16 v21, v0

    :goto_59
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;F)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v22

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    iget-object v7, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object v8, v13

    move-object/from16 v9, v18

    move-object/from16 v10, p1

    move-object/from16 v11, v22

    move-object v0, v12

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Landroidx/window/extensions/embedding/SplitController;->registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    invoke-virtual {v6, v13}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method createNewSplitWithEmptySideContainer(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Landroidx/window/extensions/embedding/SplitPairRule;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static/range {p2 .. p3}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v7, v8}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v0, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v10, v11, v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v12

    iget-object v4, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v0, 0x0

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p4

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;F)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v15

    iget-object v0, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6, v8, v15}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/content/Intent;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v16

    iget-object v4, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v0, 0x1

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p4

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v15}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v5

    move-object/from16 v18, v5

    move/from16 v5, v17

    move v6, v12

    invoke-direct/range {v0 .. v6}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;IF)V

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v4, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    iget-object v0, v7, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    return-object v16
.end method

.method expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/window/extensions/embedding/SplitPresenter;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateScale(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V

    return-void
.end method

.method public recordContainerInVideo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mIsContainerInVideo:Z

    return-void
.end method

.method scaleTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/window/WindowContainerTransaction;->setScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find an existing TaskFragment with fragmentToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setScaleMode(Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-void
.end method

.method public shouldUpdateConfiguration()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mIsContainerInVideo:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mIsContainerInVideo:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Z)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    sget-object v1, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->NOT_SCALE:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    if-ne v0, v1, :cond_e

    invoke-super/range {p0 .. p5}, Landroidx/window/extensions/embedding/SplitPresenter;->startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Z)V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-static/range {p1 .. p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v15

    const/4 v2, 0x0

    iget-object v6, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v5, p4

    move-object v7, v15

    invoke-static/range {v2 .. v7}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v10

    const/4 v2, 0x1

    iget-object v6, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static/range {v2 .. v7}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v16

    iget-object v0, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v12}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v1, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_44

    :cond_42
    move-object/from16 v17, v0

    :goto_44
    invoke-virtual/range {v17 .. v17}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v9

    iget-object v0, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v12, v9}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/content/Intent;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v18

    iget-object v0, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v9}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v19

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v7, v0

    iget-object v0, v11, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object v1, v7

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    invoke-virtual/range {v17 .. v17}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v6, v16

    move-object v12, v7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v20, v9

    move-object/from16 v9, p4

    move-object/from16 v21, v10

    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->startActivityToSide(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/app/Activity;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;I)V

    if-eqz p5, :cond_96

    invoke-virtual/range {v17 .. v17}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/window/WindowContainerTransaction;->requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    :cond_96
    invoke-virtual {v11, v12}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method updateMiddleBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;
    .locals 3

    invoke-static {p1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v0, v1, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getMiddleContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setMiddleBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method updateScale(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    :cond_18
    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getCurrentScale()F

    move-result v1

    cmpl-float v1, v1, p3

    if-nez v1, :cond_21

    return-void

    :cond_21
    invoke-virtual {v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setCurrentScale(F)V

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/window/WindowContainerTransaction;->setScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    return-void

    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Setting windowing mode for a task fragment that is not registered with controller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method updateSplitContainer(Landroidx/window/extensions/embedding/SplitContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/window/WindowContainerTransaction;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_f

    return-void

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getMinDimensionsPair()Landroid/util/Pair;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {v9}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_4a

    :cond_2c
    invoke-direct/range {p0 .. p0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getPortraitBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v0, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v11, v13, v0}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;)F

    move-result v14

    const/4 v0, 0x0

    iget-object v4, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    move-object v1, v11

    move-object v2, v13

    move-object v3, v12

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v15

    const/4 v0, 0x1

    iget-object v4, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mScaleMode:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v13, v0

    goto :goto_58

    :cond_4a
    :goto_4a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v13, v0

    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->isPlaceholderContainer()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x1

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    move/from16 v16, v0

    invoke-virtual {v6, v7, v8, v15}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7, v5, v13}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v8

    move-object v3, v5

    move-object v4, v12

    move-object/from16 v17, v9

    move-object v9, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    if-eqz v16, :cond_91

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/window/WindowContainerTransaction;->requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    :cond_91
    iget-object v0, v6, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual/range {p2 .. p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v6, v7, v8, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    invoke-virtual {v6, v7, v9, v1}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    invoke-virtual {v8}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v14}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateScale(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V

    invoke-virtual {v9}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v14}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->updateScale(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;F)V

    return-void
.end method
