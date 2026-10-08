.class Landroidx/window/extensions/embedding/SplitPresenter;
.super Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;
.source "SplitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitPresenter$ResultCode;,
        Landroidx/window/extensions/embedding/SplitPresenter$Position;
    }
.end annotation


# static fields
.field static final POSITION_END:I = 0x1

.field static final POSITION_FILL:I = 0x2

.field static final POSITION_START:I = 0x0

.field private static final RESET_DEFAULT_STATE:I = 0x0

.field private static final RESIZE_TO_EMBED_STATE_1_1:I = 0x2

.field private static final RESIZE_TO_EMBED_STATE_1_2:I = 0x1

.field private static final RESIZE_TO_EMBED_STATE_2_1:I = 0x3

.field private static final RESIZE_TO_LEFT_FULLSCREEN:I = 0x4

.field private static final RESIZE_TO_RIGHT_FULLSCREEN:I = 0x5

.field static final RESULT_EXPANDED:I = 0x1

.field static final RESULT_EXPAND_FAILED_NO_TF_INFO:I = 0x2

.field static final RESULT_NOT_EXPANDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplitPresenter"

.field private static mMiuiEmbedState:I


# instance fields
.field private embeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroidx/window/extensions/embedding/SplitController;

.field private mForceUpdate:Z

.field private final mLock:Ljava/lang/Object;

.field private mMainTaskFragmentToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroidx/window/extensions/embedding/SplitPresenter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/SplitController;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;)V

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.ss.android.lark.kami"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mAppList:Ljava/util/ArrayList;

    new-instance v0, Landroidx/window/extensions/embedding/SplitPresenter$1;

    invoke-direct {v0, p0}, Landroidx/window/extensions/embedding/SplitPresenter$1;-><init>(Landroidx/window/extensions/embedding/SplitPresenter;)V

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->embeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitPresenter;->registerOrganizer()V

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitController;->getGlobalLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static boundsSmallerThanMinDimensions(Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_18

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method static getActivitiesMinDimensionsPair(Landroid/app/Activity;Landroid/app/Activity;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/app/Activity;)Landroid/util/Size;

    move-result-object v1

    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/app/Activity;)Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/app/Activity;)Landroid/util/Size;

    move-result-object v1

    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getMinDimensions(Landroid/content/Intent;)Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Landroidx/window/extensions/embedding/SplitRule;",
            "Landroid/app/Activity;",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-static {p1, p2, p4}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p3}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3b

    :cond_11
    invoke-static {p3, p2}, Landroidx/window/extensions/embedding/SplitPresenter;->isLtr(Landroid/content/Context;Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    invoke-static {}, Landroidx/window/extensions/embedding/SplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23

    invoke-static {}, Landroidx/window/extensions/embedding/SplitPresenter;->getOverrideSplitRatio()F

    move-result v1

    goto :goto_27

    :cond_23
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitRule;->getSplitRatio()F

    move-result v1

    :goto_27
    nop

    packed-switch p0, :pswitch_data_42

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    return-object v2

    :pswitch_31
    invoke-static {p1, v1, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getSecondaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    :pswitch_36
    invoke-static {p1, v1, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getPrimaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    :cond_3b
    :goto_3b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method private static getLeftContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static getMinDimensions(Landroid/app/Activity;)Landroid/util/Size;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v3, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static getMinDimensions(Landroid/content/Intent;)Landroid/util/Size;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1e

    return-object v0

    :cond_1e
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_23

    return-object v0

    :cond_23
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v4, :cond_28

    return-object v0

    :cond_28
    new-instance v0, Landroid/util/Size;

    iget v5, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v6, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-direct {v0, v5, v6}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static getNonEmbeddedActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_16
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method static getOverrideSplitRatio()F
    .locals 2

    sget v0, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const v0, 0x3e99999a    # 0.3f

    return v0

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const v0, 0x3f333333    # 0.7f

    return v0

    :cond_16
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getPrimaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    .locals 1

    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getLeftContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_e

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getRightContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method private static getRightContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static getSecondaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    .locals 1

    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getRightContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_e

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getLeftContainerBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method private static isLtr(Landroid/content/Context;Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitRule;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1c

    :pswitch_9
    return v2

    :pswitch_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_19

    move v1, v2

    :cond_19
    return v1

    :pswitch_1a
    return v1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static isMultiWindowModeInTask(I)Z
    .locals 3

    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForTask()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isMiuiMultiRootTaskWindowingMode(I)Z

    move-result v2

    return v2
.end method

.method private prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 11

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

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
    invoke-virtual {p0, p1, v0, p3}, Landroidx/window/extensions/embedding/SplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    goto :goto_50

    :cond_27
    :goto_27
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, p2, v1}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, v1}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, p3

    move v8, v2

    move-object v9, v10

    invoke-virtual/range {v3 .. v9}, Landroidx/window/extensions/embedding/SplitPresenter;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;)V

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3, v10}, Landroid/window/WindowContainerTransaction;->reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    nop

    :goto_50
    return-object v0
.end method

.method static shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method static shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroidx/window/extensions/embedding/SplitRule;",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/view/WindowMetrics;

    new-instance v1, Landroid/view/WindowInsets;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p0, v1}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-static {v0}, Lcom/miui/window/SplitRuleUtils;->shouldeSideBySide(Landroid/view/WindowMetrics;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p1, v0}, Landroidx/window/extensions/embedding/SplitRule;->checkParentMetrics(Landroid/view/WindowMetrics;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    sget v1, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4f

    const/4 v3, 0x5

    if-ne v1, v3, :cond_27

    goto :goto_4f

    :cond_27
    invoke-virtual {p1}, Landroidx/window/extensions/embedding/SplitRule;->getSplitRatio()F

    move-result v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->getPrimaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {p0, v1, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->getSecondaryBounds(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v5

    if-nez p2, :cond_37

    return v3

    :cond_37
    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/Size;

    invoke-static {v4, v6}, Landroidx/window/extensions/embedding/SplitPresenter;->boundsSmallerThanMinDimensions(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v6

    if-nez v6, :cond_4d

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/util/Size;

    invoke-static {v5, v6}, Landroidx/window/extensions/embedding/SplitPresenter;->boundsSmallerThanMinDimensions(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result v6

    if-nez v6, :cond_4d

    move v2, v3

    goto :goto_4e

    :cond_4d
    nop

    :goto_4e
    return v2

    :cond_4f
    :goto_4f
    return v2
.end method

.method static shouldShowSideBySide(Landroidx/window/extensions/embedding/SplitContainer;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/window/extensions/embedding/SplitContainer;->getMinDimensionsPair()Landroid/util/Pair;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;ZLandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;ZLandroid/window/WindowContainerTransaction;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p1, p2, p0, p3, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->finish(ZLandroidx/window/extensions/embedding/SplitPresenter;Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitController;)V

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitController;->getTopActiveContainer(I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v1, p3, v0}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    :cond_16
    return-void
.end method

.method createNewSplitContainer(Landroid/app/Activity;Landroid/app/Activity;Landroidx/window/extensions/embedding/SplitPairRule;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v10, v0

    invoke-virtual/range {p0 .. p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-static/range {p1 .. p2}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivitiesMinDimensionsPair(Landroid/app/Activity;Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object v12

    const/4 v0, 0x0

    invoke-static {v0, v11, v9, v7, v12}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v13

    const/4 v0, 0x0

    invoke-direct {v6, v10, v7, v13, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v14

    const/4 v0, 0x1

    invoke-static {v0, v11, v9, v7, v12}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v15

    iget-object v0, v6, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v8}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v5

    move-object v0, v14

    if-eqz v5, :cond_3d

    invoke-virtual/range {p3 .. p3}, Landroidx/window/extensions/embedding/SplitPairRule;->shouldClearTop()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v14, v5}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isAbove(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_3a
    move-object v0, v5

    move-object v4, v0

    goto :goto_3e

    :cond_3d
    move-object v4, v0

    :goto_3e
    invoke-direct {v6, v10, v8, v15, v4}, Landroidx/window/extensions/embedding/SplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v17, v4

    move-object/from16 v4, p3

    move-object/from16 v18, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    iget-object v0, v6, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    invoke-virtual {v6, v10}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method createNewSplitWithEmptySideContainer(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/content/Intent;Landroidx/window/extensions/embedding/SplitPairRule;)Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-virtual {v6, v7}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-static/range {p2 .. p3}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v0, v9, v8, v7, v10}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v0, 0x0

    move-object/from16 v12, p1

    invoke-direct {v6, v12, v7, v11, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->prepareContainerForActivity(Landroid/window/WindowContainerTransaction;Landroid/app/Activity;Landroid/graphics/Rect;Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v14

    iget-object v0, v6, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v15, p3

    invoke-virtual {v0, v15, v7, v14}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/content/Intent;Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v16

    const/4 v0, 0x1

    invoke-static {v0, v9, v8, v7, v10}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, v6, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v14}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

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

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitPresenter;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    move-object v2, v13

    move-object/from16 v3, v16

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    iget-object v0, v6, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->registerSplit(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V

    return-object v16
.end method

.method createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/window/TaskFragmentCreationParams;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p2}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Landroid/window/TaskFragmentCreationParams;->getInitialBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedWindowingMode(I)V

    invoke-super {p0, p1, p2}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->createTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/window/TaskFragmentCreationParams;)V

    return-void

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Creating a task fragment that is not registered with controller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method expandSplitContainerIfNeeded(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/SplitContainer;Landroid/app/Activity;Landroid/app/Activity;Landroid/content/Intent;)I
    .locals 3

    if-nez p4, :cond_d

    if-eqz p5, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either secondaryActivity or secondaryIntent must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    invoke-virtual {p0, p3}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p4, :cond_18

    invoke-static {p3, p4}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivitiesMinDimensionsPair(Landroid/app/Activity;Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_1c

    :cond_18
    invoke-static {p3, p5}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    :goto_1c
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p3}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-static {v2}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v2, 0x0

    return v2

    :cond_33
    :goto_33
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    if-nez v2, :cond_48

    goto :goto_60

    :cond_48
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->expandTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_60
    :goto_60
    const/4 v2, 0x2

    return v2
.end method

.method getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_d
    invoke-static {p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getNonEmbeddedActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method interceptBackPressed(Landroid/app/Activity;Z)Z
    .locals 7

    sget v0, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    if-nez v0, :cond_b

    goto/16 :goto_b4

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    if-eqz p2, :cond_66

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    sput v1, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    iput-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction;->requestRestoreMiuiEmbedState()Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset miui embed state for app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SplitPresenter"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_66
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v2, p1}, Landroidx/window/extensions/embedding/SplitController;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_6f

    return v1

    :cond_6f
    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v4, v2}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-nez v4, :cond_78

    return v1

    :cond_78
    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    const/4 v5, 0x1

    if-eqz p2, :cond_a8

    sput v1, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    iput-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v4}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/window/extensions/embedding/SplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction;->requestRestoreMiuiEmbedState()Landroid/window/WindowContainerTransaction;

    iput-boolean v5, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    iget-object v6, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v6, v3, v4}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iput-boolean v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    invoke-virtual {p0, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_a8
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v3

    if-nez v3, :cond_b3

    return v5

    :cond_b3
    return v1

    :cond_b4
    :goto_b4
    return v1
.end method

.method isMiuiFullScreenOrToDefault()Z
    .locals 2

    sget v0, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onMiuiEmbedStateChanged(Landroid/os/IBinder;I)V
    .locals 9

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p2, :cond_b4

    const/4 v1, 0x5

    if-le p2, v1, :cond_a

    goto/16 :goto_b4

    :cond_a
    :try_start_a
    sget v2, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    if-ne p2, v2, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    sput p2, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    const-string v2, "SplitPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miui embed state changed, embedState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_78

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    iget-object v1, v1, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_46

    iget-object v5, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    iget-object v5, v5, Landroidx/window/extensions/embedding/SplitController;->mTaskContainers:Landroid/util/SparseArray;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/window/extensions/embedding/TaskContainer;

    goto :goto_47

    :cond_46
    move-object v5, v4

    :goto_47
    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v6

    goto :goto_4f

    :cond_4e
    move-object v6, v4

    :goto_4f
    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    iput-boolean v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v5}, Landroidx/window/extensions/embedding/SplitController;->updateAnimationOverride(Landroidx/window/extensions/embedding/TaskContainer;)V

    invoke-virtual {v5}, Landroidx/window/extensions/embedding/TaskContainer;->getTopTaskFragmentContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/window/extensions/embedding/SplitPresenter;->updateContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iput-boolean v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    :cond_6d
    iput-object v4, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActivityThread;->setMiuiEmbeddingHandler(Landroid/app/ActivityThread$MiuiEmbeddingHandler;)V

    monitor-exit v0

    return-void

    :cond_78
    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v4, p1}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v4

    if-eq p2, v3, :cond_a9

    const/4 v5, 0x2

    if-eq p2, v5, :cond_a9

    const/4 v5, 0x3

    if-ne p2, v5, :cond_87

    goto :goto_a9

    :cond_87
    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v3, v4}, Landroidx/window/extensions/embedding/SplitController;->getActiveSplitForContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/SplitContainer;

    move-result-object v3

    if-eqz v3, :cond_9c

    if-ne p2, v1, :cond_99

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->cleanupContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;Z)V

    goto :goto_9c

    :cond_99
    invoke-virtual {p0, v4}, Landroidx/window/extensions/embedding/SplitPresenter;->updateContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    :cond_9c
    :goto_9c
    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->embeddingHandler:Landroid/app/ActivityThread$MiuiEmbeddingHandler;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->setMiuiEmbeddingHandler(Landroid/app/ActivityThread$MiuiEmbeddingHandler;)V

    monitor-exit v0

    return-void

    :cond_a9
    :goto_a9
    if-eqz v4, :cond_b2

    iput-boolean v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    invoke-virtual {p0, v4}, Landroidx/window/extensions/embedding/SplitPresenter;->updateContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    iput-boolean v2, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mForceUpdate:Z

    :cond_b2
    monitor-exit v0

    return-void

    :cond_b4
    :goto_b4
    monitor-exit v0

    return-void

    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_a .. :try_end_b8} :catchall_b6

    throw v1
.end method

.method resetMiuiEmbedStateIfNeeded(ZZLandroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 5

    sget v0, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    if-nez v0, :cond_9

    goto :goto_5f

    :cond_9
    invoke-virtual {p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    sput v2, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->requestRestoreMiuiEmbedState()Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_25
    if-eqz p1, :cond_5e

    if-eqz p2, :cond_5e

    invoke-virtual {p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v0

    invoke-static {v0}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_5e

    :cond_34
    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/window/extensions/embedding/SplitController;->getTopActiveContainer(I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_41

    return-void

    :cond_41
    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    sput v2, Landroidx/window/extensions/embedding/SplitPresenter;->mMiuiEmbedState:I

    iput-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mMainTaskFragmentToken:Landroid/os/IBinder;

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->requestRestoreMiuiEmbedState()Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_5d
    return-void

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    :goto_5f
    return-void
.end method

.method resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForTask()I

    move-result v1

    invoke-virtual {v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_30

    instance-of v2, p0, Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    if-eqz v2, :cond_30

    move-object v2, p0

    check-cast v2, Landroidx/window/extensions/embedding/MiuiSplitPresenter;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter;->shouldUpdateConfiguration()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isMiuiHoverWindowingMode(I)Z

    move-result v2

    if-nez v2, :cond_30

    return-void

    :cond_30
    invoke-virtual {v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedBounds(Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V

    return-void

    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Resizing a task fragment that is not registered with controller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/window/extensions/embedding/SplitPresenter;->resizeTaskFragment(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerTransaction;",
            "Landroidx/window/extensions/embedding/TaskFragmentContainer;",
            "Landroidx/window/extensions/embedding/TaskFragmentContainer;",
            "Landroidx/window/extensions/embedding/SplitRule;",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p4, p5}, Landroidx/window/extensions/embedding/SplitPresenter;->shouldShowSideBySide(Landroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v1

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitPresenter;->isMultiWindowModeInTask(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_21

    :cond_15
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, p4}, Landroidx/window/extensions/embedding/SplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroidx/window/extensions/embedding/SplitRule;)V

    goto :goto_29

    :cond_21
    :goto_21
    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroidx/window/extensions/embedding/SplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/os/IBinder;Landroidx/window/extensions/embedding/SplitRule;)V

    :goto_29
    return-void
.end method

.method startActivityToSide(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;Z)V
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    invoke-virtual/range {p0 .. p1}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-static/range {p1 .. p2}, Landroidx/window/extensions/embedding/SplitPresenter;->getActivityIntentMinDimensionsPair(Landroid/app/Activity;Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v15

    const/4 v0, 0x0

    invoke-static {v0, v14, v13, v12, v15}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v10

    const/4 v0, 0x1

    invoke-static {v0, v14, v13, v12, v15}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v16

    iget-object v0, v11, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v12}, Landroidx/window/extensions/embedding/SplitController;->getContainerWithActivity(Landroid/app/Activity;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v1, v11, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;I)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_2f

    :cond_2d
    move-object/from16 v17, v0

    :goto_2f
    invoke-virtual/range {v17 .. v17}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskId()I

    move-result v9

    iget-object v0, v11, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move v4, v9

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitController;->newContainer(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/Activity;ILandroidx/window/extensions/embedding/TaskFragmentContainer;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v18

    iget-object v0, v11, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, v9}, Landroidx/window/extensions/embedding/SplitController;->getTaskContainer(I)Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v19

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v7, v0

    iget-object v0, v11, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    move-object v1, v7

    move-object/from16 v2, v17

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

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move/from16 v21, v9

    move-object/from16 v9, p4

    move-object/from16 v22, v10

    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Landroidx/window/extensions/embedding/SplitPresenter;->startActivityToSide(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/app/Activity;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/os/Bundle;Landroidx/window/extensions/embedding/SplitRule;I)V

    if-eqz p5, :cond_87

    invoke-virtual/range {v17 .. v17}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/window/WindowContainerTransaction;->requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    :cond_87
    invoke-virtual {v11, v12}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method updateContainer(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V
    .locals 2

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v1, v0, p1}, Landroidx/window/extensions/embedding/SplitController;->updateContainer(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    invoke-virtual {p0, v0}, Landroidx/window/extensions/embedding/SplitPresenter;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method updateEmbeddingScale(Landroidx/window/extensions/embedding/TaskContainer;)V
    .locals 0

    return-void
.end method

.method updateSplitContainer(Landroidx/window/extensions/embedding/SplitContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/window/WindowContainerTransaction;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-static/range {p2 .. p2}, Landroidx/window/extensions/embedding/SplitPresenter;->getParentContainerBounds(Landroidx/window/extensions/embedding/TaskFragmentContainer;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSplitRule()Landroidx/window/extensions/embedding/SplitRule;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTopNonFinishingActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_17

    return-void

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getMinDimensionsPair()Landroid/util/Pair;

    move-result-object v12

    const/4 v0, 0x0

    invoke-static {v0, v8, v9, v11, v12}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v13

    const/4 v1, 0x1

    invoke-static {v1, v8, v9, v11, v12}, Landroidx/window/extensions/embedding/SplitPresenter;->getBoundsForPosition(ILandroid/graphics/Rect;Landroidx/window/extensions/embedding/SplitRule;Landroid/app/Activity;Landroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/embedding/SplitContainer;->isPlaceholderContainer()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->areLastRequestedBoundsEqual(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    move/from16 v16, v0

    invoke-virtual {v6, v7, v10, v13}, Landroidx/window/extensions/embedding/SplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7, v15, v14}, Landroidx/window/extensions/embedding/SplitPresenter;->resizeTaskFragmentIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v10

    move-object v3, v15

    move-object v4, v9

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/window/extensions/embedding/SplitPresenter;->setAdjacentTaskFragments(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;Landroid/util/Pair;)V

    if-eqz v16, :cond_5b

    invoke-virtual {v10}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/window/WindowContainerTransaction;->requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;

    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskContainer()Landroidx/window/extensions/embedding/TaskContainer;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroidx/window/extensions/embedding/TaskContainer;->getWindowingModeForSplitTaskFragment(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v6, v7, v10, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    invoke-virtual {v6, v7, v15, v1}, Landroidx/window/extensions/embedding/SplitPresenter;->updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V

    return-void
.end method

.method protected updateTaskFragmentWindowingModeIfRegistered(Landroid/window/WindowContainerTransaction;Landroidx/window/extensions/embedding/TaskFragmentContainer;I)V
    .locals 1

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/window/extensions/embedding/SplitPresenter;->updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V

    :cond_d
    return-void
.end method

.method updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPresenter;->mController:Landroidx/window/extensions/embedding/SplitController;

    invoke-virtual {v0, p2}, Landroidx/window/extensions/embedding/SplitController;->getContainer(Landroid/os/IBinder;)Landroidx/window/extensions/embedding/TaskFragmentContainer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->isLastRequestedWindowingModeEqual(I)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->setLastRequestedWindowingMode(I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;->updateWindowingMode(Landroid/window/WindowContainerTransaction;Landroid/os/IBinder;I)V

    return-void

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Setting windowing mode for a task fragment that is not registered with controller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
