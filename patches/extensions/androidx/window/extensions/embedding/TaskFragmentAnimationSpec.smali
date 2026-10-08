.class public Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CHANGE_ANIMATION_DURATION:I = 0x205

.field private static final CHANGE_ANIMATION_FADE_DURATION:I = 0x50

.field private static final CHANGE_ANIMATION_FADE_OFFSET:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TaskFragAnimationSpec"

.field public static final USE_MIUI_EMBEDDING_ANIMATION:Z


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field protected mTransitionAnimationScaleSetting:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub;->get()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    invoke-interface {v0}, Lmiui/window/MiuiEmbeddingWindowStub;->enable()Z

    move-result v0

    sput-boolean v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->USE_MIUI_EMBEDDING_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v2, 0x0

    const-string v3, "TaskFragAnimationSpec"

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    const v1, 0x10c001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10500af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const-string v3, "transition_animation_scale"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    nop

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;

    invoke-direct {v3, p0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;-><init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static createNoopAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;
    .locals 2

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_9
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v1
.end method


# virtual methods
.method protected createChangeBoundsChangeAnimations(Landroid/view/RemoteAnimationTarget;)[Landroid/view/animation/Animation;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v8, v7, v5

    div-float v9, v7, v6

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    invoke-direct {v12, v7, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v14, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v12, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v14, 0x50

    invoke-virtual {v12, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v14, 0x1e

    invoke-virtual {v12, v14, v15}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v14, v8, v8, v9, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iget-object v15, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v16, v12

    const-wide/16 v11, 0x205

    invoke-virtual {v14, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v10, v15, v13, v11, v12}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v11, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v13, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v13, v5, v7, v6, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    move-object v7, v13

    const-wide/16 v12, 0x205

    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v12, Landroid/view/animation/TranslateAnimation;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v15, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    int-to-float v13, v13

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15, v15, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move v13, v5

    move/from16 v17, v6

    const-wide/16 v5, 0x205

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v6, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v15, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v15, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const-wide/16 v4, 0x205

    invoke-virtual {v15, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    move-object/from16 v18, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v11, v4, v5, v1, v2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v1, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/animation/Animation;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    return-object v1
.end method

.method protected createChangeBoundsCloseAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;
    .locals 7

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_10
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x205

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v2
.end method

.method protected createChangeBoundsOpenAnimation(Landroid/view/RemoteAnimationTarget;)Landroid/view/animation/Animation;
    .locals 7

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_10
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x205

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v3, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v2
.end method

.method protected loadCloseAnimation(Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 6

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    move v0, v1

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_10

    const v2, 0x10a00b5

    goto :goto_13

    :cond_10
    const v2, 0x10a00b6

    :goto_13
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v1
.end method

.method protected loadOpenAnimation(Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 6

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    move v0, v1

    iget-object v1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_10

    const v2, 0x10a00b7

    goto :goto_13

    :cond_10
    const v2, 0x10a00b8

    :goto_13
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v1
.end method
