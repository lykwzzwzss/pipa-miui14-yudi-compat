.class public Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;
.super Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;
.source "MiuiEmbeddingAnimationSpec.java"


# static fields
.field private static final CHANGE_ANIMATION_DURATION:I = 0x205

.field private static final CHANGE_ANIMATION_FADE_DURATION:I = 0x50

.field private static final CHANGE_ANIMATION_FADE_OFFSET:I = 0x1e

.field private static final MOVE_EASE_ANIMATION_DURATION:I = 0x190

.field private static final MOVE_EXIT_ANIMATION_DURATION:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "MiuiEmbeddingAnimationSpec"


# instance fields
.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

.field private final mMoveEnterInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

.field private final mMoveExitInterpolator:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/miui/window/anim/PhysicBasedInterpolator;

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Lcom/miui/window/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    new-instance v0, Lcom/miui/window/anim/PhysicBasedInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Lcom/miui/window/anim/PhysicBasedInterpolator;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEnterInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveExitInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
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

    iget-object v14, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v12, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v14, 0x50

    invoke-virtual {v12, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v14, 0x1e

    invoke-virtual {v12, v14, v15}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v14, v8, v8, v9, v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iget-object v15, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v16, v12

    const-wide/16 v11, 0x205

    invoke-virtual {v14, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v10, v11, v12, v15, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v11, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v13, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v13, v5, v7, v6, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    move-object v7, v13

    const-wide/16 v12, 0x190

    invoke-virtual {v7, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v11, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v15, Landroid/view/animation/TranslateAnimation;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-direct {v15, v12, v13, v13, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v12, v15

    move v13, v5

    move/from16 v17, v6

    const-wide/16 v5, 0x190

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

    const-wide/16 v4, 0x190

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

    iget v1, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

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

    iget-object v3, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x190

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

    iget v3, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

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

    iget-object v3, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x190

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

    iget v3, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v2
.end method

.method protected loadCloseAnimation(Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 12

    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v0, :cond_23

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    invoke-direct {v4, v3, v5, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v4

    iget-object v4, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveExitInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_62

    :cond_23
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v1, v4

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f7ae148    # 0.98f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f7ae148    # 0.98f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v5, v1

    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6, v3}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;-><init>(FF)V

    move-object v3, v5

    move-object v5, v1

    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v3, v1

    :goto_62
    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, p0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v3
.end method

.method protected loadOpenAnimation(Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    iget-object v4, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    const-wide/16 v5, 0x190

    const/4 v7, 0x0

    if-eqz v2, :cond_27

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    int-to-float v9, v3

    invoke-direct {v8, v9, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v7, v8

    iget-object v8, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEnterInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_64

    :cond_27
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v3, v8

    new-instance v15, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f7ae148    # 0.98f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f7ae148    # 0.98f

    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v14, v8

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v9, v3

    check-cast v9, Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;

    const v10, 0x3e99999a    # 0.3f

    invoke-direct {v9, v7, v10}, Lcom/miui/window/anim/MiuiEmbeddingWindowDimmer;-><init>(FF)V

    move-object v7, v9

    move-object v9, v3

    check-cast v9, Landroid/view/animation/AnimationSet;

    invoke-virtual {v9, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v9, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mMoveEaseInterpolator:Lcom/miui/window/anim/PhysicBasedInterpolator;

    invoke-virtual {v3, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v7, v3

    :goto_64
    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, v1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v3, v5, v6, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v3, v0, Lcom/miui/window/anim/MiuiEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v7
.end method
