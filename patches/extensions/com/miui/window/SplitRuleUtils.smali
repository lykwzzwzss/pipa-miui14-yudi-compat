.class public Lcom/miui/window/SplitRuleUtils;
.super Ljava/lang/Object;
.source "SplitRuleUtils.java"


# static fields
.field private static final ACCOUNT_LOGIN:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.ui.account.AccountLoginActivity"

.field public static final ACTIVITY_RULE:Ljava/lang/String; = "activityRule"

.field private static final ALLOW_REPEAT_PAGE:Ljava/lang/String; = "allowRepeatPage"

.field public static final ANY:Ljava/lang/String; = "*"

.field private static final CLEAR_TOP:Ljava/lang/String; = "clearTop"

.field private static DEFAULT_SPLIT_MIN_SMALLEST_WIDTH:F = 0.0f

.field private static DEFAULT_SPLIT_MIN_WIDTH:F = 0.0f

.field public static final DEFAULT_SPLIT_RATIO:F = 0.5f

.field public static final ENABLED:Ljava/lang/String; = "enable"

.field public static final FINISH_ADJACENT:I = 0x2

.field public static final FINISH_NEVER:I = 0x0

.field private static final FINISH_PRIMARY_WITH_SECONDARY:Ljava/lang/String; = "finishPrimaryWithSecondary"

.field private static final FINISH_SECONDARY_WITH_PRIMARY:Ljava/lang/String; = "finishSecondaryWithPrimary"

.field public static final INDEX_ONE:I = 0x1

.field public static final INDEX_THREE:I = 0x3

.field public static final INDEX_TWO:I = 0x2

.field public static final INDEX_ZERO:I = 0x0

.field private static final MIDDLE_RULE:Ljava/lang/String; = "middleRules"

.field public static final PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field private static final SCALE_MODE:Ljava/lang/String; = "scaleMode"

.field public static final SF_FORCE_RESUME_ON_FOCUS:Ljava/lang/String; = "forceResumeOnFocus"

.field public static final SF_IGNORE_ACTIVITY_BELOW_WHEN_JUDGE_MIDDLE:Ljava/lang/String; = "ignoreActivityBelowWhenJudgeMiddle"

.field public static final SF_REUSE_PRE_CONTAINER:Ljava/lang/String; = "reusePreContainer"

.field public static final SF_USE_SAME_TFC_ONCREATE_IN_PORTRAIT:Ljava/lang/String; = "useSameTfcOnCreateInPortrait"

.field public static final SPECIAL_FLAGS:Ljava/lang/String; = "specialFlags"

.field public static final SPLIT:Ljava/lang/String; = ":"

.field private static final SPLIT_MIN_SMALLEST_WIDTH:Ljava/lang/String; = "splitMinSmallestWidth"

.field private static final SPLIT_MIN_WIDTH:Ljava/lang/String; = "splitMinWidth"

.field public static final SPLIT_PAIR_RULE:Ljava/lang/String; = "splitPairRule"

.field private static final SPLIT_RATIO:Ljava/lang/String; = "splitRatio"

.field private static final TAG:Ljava/lang/String; = "SplitRuleUtils"

.field private static final TB_WELCOME:Ljava/lang/String; = "com.taobao.tao.welcome.Welcome"

.field private static final TRANSITION_RULE:Ljava/lang/String; = "transitionRules"

.field private static final WX_ENTRY:Ljava/lang/String; = "WXEntryActivity"

.field private static ds:F

.field private static tranList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v0, 0x44160000    # 600.0f

    sput v0, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_SMALLEST_WIDTH:F

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(II)F

    move-result v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/miui/window/SplitRuleUtils;->ds:F

    sget-boolean v4, Lmiui/window/MiuiEmbeddingWindowStub;->IS_FOLD:Z

    if-eqz v4, :cond_3a

    sget v4, Lcom/miui/window/SplitRuleUtils;->ds:F

    div-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    sput v4, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_WIDTH:F

    goto :goto_40

    :cond_3a
    sget v4, Lcom/miui/window/SplitRuleUtils;->ds:F

    div-float v4, v3, v4

    sput v4, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_WIDTH:F

    :goto_40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/miui/window/SplitRuleUtils;->tranList:Ljava/util/ArrayList;

    const-string v5, "com.xiaomi.gamecenter.sdk.ui.account.AccountLoginActivity"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createActivityRuleForActivity(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityRule;
    .locals 4

    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroidx/window/extensions/embedding/ActivityRule$Builder;

    invoke-direct {v2, v0, v1}, Landroidx/window/extensions/embedding/ActivityRule$Builder;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/window/extensions/embedding/ActivityRule$Builder;->setShouldAlwaysExpand(Z)Landroidx/window/extensions/embedding/ActivityRule$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ActivityRule$Builder;->build()Landroidx/window/extensions/embedding/ActivityRule;

    move-result-object v2

    return-object v2
.end method

.method static createMiddleRuleForActivity(Ljava/lang/String;Ljava/util/ArrayList;Z)Landroidx/window/extensions/embedding/MiddleRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroidx/window/extensions/embedding/MiddleRule;"
        }
    .end annotation

    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;-><init>(ZLjava/util/ArrayList;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p1, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda6;-><init>(ZLjava/util/ArrayList;Ljava/lang/String;)V

    new-instance v2, Landroidx/window/extensions/embedding/MiddleRule$Builder;

    invoke-direct {v2, v0, v1}, Landroidx/window/extensions/embedding/MiddleRule$Builder;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    invoke-virtual {v2, p2}, Landroidx/window/extensions/embedding/MiddleRule$Builder;->setShouldAlwaysMiddle(Z)Landroidx/window/extensions/embedding/MiddleRule$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/MiddleRule$Builder;->build()Landroidx/window/extensions/embedding/MiddleRule;

    move-result-object v2

    return-object v2
.end method

.method static createPlaceholderForActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Landroidx/window/extensions/embedding/SplitPlaceholderRule;
    .locals 5

    const-string v0, "com.taobao.tao.welcome.Welcome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_e
    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    :goto_13
    new-instance v1, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    invoke-static {p4, p5}, Lcom/miui/window/SplitRuleUtils;->getWindowMetrics(FF)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;-><init>(Landroid/content/Intent;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    invoke-virtual {v3, p3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->build()Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    move-result-object v3

    return-object v3
.end method

.method static createSplitPairRuleForActivities(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;FFFZII)Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "FFFZII)",
            "Landroidx/window/extensions/embedding/SplitPairRule;"
        }
    .end annotation

    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    invoke-static {p5, p6}, Lcom/miui/window/SplitRuleUtils;->getWindowMetrics(FF)Ljava/util/function/Predicate;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    invoke-virtual {v2, p4}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setShouldClearTop(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object v2

    invoke-virtual {v2, p8}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object v2

    invoke-virtual {v2, p9}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->setFinishSecondaryWithPrimary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->build()Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v2

    return-object v2
.end method

.method static getWindowMetrics(FF)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;-><init>(FF)V

    return-object v0
.end method

.method public static isTbWelcome(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.taobao.tao.welcome.Welcome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createActivityRuleForActivity$2(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createActivityRuleForActivity$3(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$createMiddleRuleForActivity$4(ZLjava/util/ArrayList;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 3

    sget-object v0, Lcom/miui/window/SplitRuleUtils;->tranList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_58

    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WXEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_58

    :cond_22
    if-eqz p0, :cond_4b

    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v1

    :cond_33
    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_49
    const/4 v1, 0x1

    :cond_4a
    return v1

    :cond_4b
    invoke-virtual {p3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_58
    :goto_58
    return v1
.end method

.method static synthetic lambda$createMiddleRuleForActivity$5(ZLjava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/miui/window/SplitRuleUtils;->tranList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WXEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_5f

    :cond_29
    if-eqz p0, :cond_52

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    return v1

    :cond_3a
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_50
    const/4 v1, 0x1

    :cond_51
    return v1

    :cond_52
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5f
    :goto_5f
    return v1
.end method

.method static synthetic lambda$createPlaceholderForActivity$6(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_39

    const/4 v1, 0x1

    return v1

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$createPlaceholderForActivity$7(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createPlaceholderForActivity$8(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$createSplitPairRuleForActivities$0(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z
    .locals 5

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SplitRuleUtils"

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t enter split, primary : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " same as secondary."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_40
    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "don\'t enter split, secondary : "

    if-nez v0, :cond_de

    sget-object v0, Lcom/miui/window/SplitRuleUtils;->tranList:Ljava/util/ArrayList;

    iget-object v4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WXEntryActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_de

    :cond_7d
    if-eqz p1, :cond_ae

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is placeholder."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_ae
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "*"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    :cond_da
    const/4 v2, 0x1

    goto :goto_dd

    :cond_dc
    nop

    :goto_dd
    return v2

    :cond_de
    :goto_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is transition activity."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic lambda$createSplitPairRuleForActivities$1(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z
    .locals 5

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "don\'t enter split, secondary : "

    const-string v2, "SplitRuleUtils"

    const/4 v3, 0x0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " component is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2c
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t enter split, primary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " same as secondary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_69
    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    sget-object v0, Lcom/miui/window/SplitRuleUtils;->tranList:Ljava/util/ArrayList;

    iget-object v4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WXEntryActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_105

    :cond_a4
    if-eqz p1, :cond_d5

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is placeholder."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d5
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    const-string v0, "*"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    :cond_101
    const/4 v3, 0x1

    goto :goto_104

    :cond_103
    nop

    :goto_104
    return v3

    :cond_105
    :goto_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is transition activity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method static synthetic lambda$getWindowMetrics$9(FFLandroid/view/WindowMetrics;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-static {p2, p0, p1}, Lcom/miui/window/SplitRuleUtils;->shouldeSideBySide(Landroid/view/WindowMetrics;FF)Z

    move-result v0

    return v0
.end method

.method private static parsePlaceholders(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FFF)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;",
            "Ljava/lang/String;",
            "FFF)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, ","

    move-object v1, p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_52

    aget-object v5, v0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_25

    move-object/from16 v10, p1

    goto :goto_4f

    :cond_25
    aget-object v7, v6, v3

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_39

    move-object/from16 v10, p1

    goto :goto_4f

    :cond_39
    move-object v9, v7

    move-object v10, v8

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v9 .. v14}, Lcom/miui/window/SplitRuleUtils;->createPlaceholderForActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_4d
    move-object/from16 v10, p1

    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_52
    move-object/from16 v10, p1

    return-void
.end method

.method public static parseSystemRules(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/extensions/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz v0, :cond_169

    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_169

    :cond_c
    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "splitPairRule"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "activityRule"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "transitionRules"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "middleRules"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    const-string v6, "placeholder"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "clearTop"

    const/4 v15, 0x1

    invoke-virtual {v0, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    const/high16 v6, 0x3f000000    # 0.5f

    const-string v7, "splitRatio"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v19

    sget v6, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_WIDTH:F

    const-string v7, "splitMinWidth"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v20

    sget v6, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_SMALLEST_WIDTH:F

    const-string v7, "splitMinSmallestWidth"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    const-string v6, "finishPrimaryWithSecondary"

    const/4 v14, 0x0

    invoke-virtual {v0, v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    const-string v6, "finishSecondaryWithPrimary"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    const-string v6, "allowRepeatPage"

    invoke-virtual {v0, v6, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v8, "scaleMode"

    invoke-virtual {v0, v8, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static/range {v17 .. v17}, Lcom/miui/window/SplitRuleUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_88

    aget-object v25, v24, v14

    aget-object v1, v24, v15

    move-object/from16 v8, v25

    move-object v9, v1

    move-object/from16 v10, p1

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v26, v13

    move/from16 v13, v21

    invoke-static/range {v8 .. v13}, Lcom/miui/window/SplitRuleUtils;->createPlaceholderForActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_88
    move/from16 v26, v13

    :goto_8a
    const/4 v8, 0x0

    if-eqz v16, :cond_af

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_91
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ac

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_ab

    invoke-static {v10, v5, v15}, Lcom/miui/window/SplitRuleUtils;->createMiddleRuleForActivity(Ljava/lang/String;Ljava/util/ArrayList;Z)Landroidx/window/extensions/embedding/MiddleRule;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_ab
    goto :goto_91

    :cond_ac
    move/from16 v25, v8

    goto :goto_b1

    :cond_af
    move/from16 v25, v8

    :goto_b1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_b5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_126

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v28, v8

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/miui/window/SplitRuleUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-nez v25, :cond_111

    if-eqz v13, :cond_111

    aget-object v29, v13, v14

    aget-object v30, v13, v15

    array-length v8, v13

    const/4 v9, 0x3

    if-le v8, v9, :cond_e4

    aget-object v8, v13, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v13, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v31, v8

    move/from16 v32, v9

    goto :goto_ec

    :cond_e4
    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v31, v8

    move/from16 v32, v9

    :goto_ec
    move v12, v6

    move-object/from16 v6, v29

    move/from16 v33, v7

    move-object/from16 v7, v30

    move-object v8, v5

    move-object v9, v1

    move/from16 v10, v19

    move/from16 v11, v20

    move v0, v12

    move/from16 v12, v21

    move-object/from16 v34, v13

    move/from16 v13, v18

    move-object/from16 v35, v1

    move v1, v14

    move/from16 v14, v31

    move/from16 v36, v15

    move/from16 v15, v32

    invoke-static/range {v6 .. v15}, Lcom/miui/window/SplitRuleUtils;->createSplitPairRuleForActivities(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;FFFZII)Landroidx/window/extensions/embedding/SplitPairRule;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    :cond_111
    move-object/from16 v35, v1

    move v0, v6

    move/from16 v33, v7

    move-object/from16 v34, v13

    move v1, v14

    move/from16 v36, v15

    :goto_11b
    move v6, v0

    move v14, v1

    move/from16 v7, v33

    move-object/from16 v1, v35

    move/from16 v15, v36

    move-object/from16 v0, p0

    goto :goto_b5

    :cond_126
    move-object/from16 v35, v1

    move v0, v6

    move v1, v14

    if-nez v25, :cond_136

    if-eqz v5, :cond_136

    const/4 v6, 0x0

    invoke-static {v6, v5, v1}, Lcom/miui/window/SplitRuleUtils;->createMiddleRuleForActivity(Ljava/lang/String;Ljava/util/ArrayList;Z)Landroidx/window/extensions/embedding/MiddleRule;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_136
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_154

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_153

    invoke-static {v6}, Lcom/miui/window/SplitRuleUtils;->createActivityRuleForActivity(Ljava/lang/String;)Landroidx/window/extensions/embedding/ActivityRule;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_153
    goto :goto_13a

    :cond_154
    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/MiuiSplitController;

    invoke-virtual {v1, v0}, Landroidx/window/extensions/embedding/MiuiSplitController;->setAllowRepeatPage(Z)V

    invoke-static {}, Landroidx/window/extensions/embedding/SplitController;->getInstance()Landroidx/window/extensions/embedding/SplitController;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/embedding/MiuiSplitController;

    move/from16 v6, v26

    invoke-virtual {v1, v6}, Landroidx/window/extensions/embedding/MiuiSplitController;->setScaleMode(I)V

    return-object v2

    :cond_169
    :goto_169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static shouldeSideBySide(Landroid/view/WindowMetrics;)Z
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isAllowEmbInProtrait()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    sget v1, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_WIDTH:F

    sget v2, Lcom/miui/window/SplitRuleUtils;->DEFAULT_SPLIT_MIN_SMALLEST_WIDTH:F

    invoke-static {p0, v1, v2}, Lcom/miui/window/SplitRuleUtils;->shouldeSideBySide(Landroid/view/WindowMetrics;FF)Z

    move-result v1

    return v1
.end method

.method static shouldeSideBySide(Landroid/view/WindowMetrics;FF)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/miui/window/SplitRuleUtils;->ds:F

    mul-float v2, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(II)F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    return v3
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
