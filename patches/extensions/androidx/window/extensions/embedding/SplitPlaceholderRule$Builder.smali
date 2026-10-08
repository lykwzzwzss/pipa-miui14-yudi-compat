.class public final Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
.super Ljava/lang/Object;
.source "SplitPlaceholderRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitPlaceholderRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mActivityPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishPrimaryWithSecondary:I

.field private final mIntentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSticky:Z

.field private mLayoutDirection:I

.field private final mParentWindowMetricsPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderIntent:Landroid/content/Intent;

.field private mSplitRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mIsSticky:Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mFinishPrimaryWithSecondary:I

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mPlaceholderIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/SplitPlaceholderRule;
    .locals 10

    new-instance v9, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mPlaceholderIntent:Landroid/content/Intent;

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mSplitRatio:F

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mLayoutDirection:I

    iget-boolean v4, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mIsSticky:Z

    iget v5, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mFinishPrimaryWithSecondary:I

    iget-object v6, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iget-object v7, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    iget-object v8, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;-><init>(Landroid/content/Intent;FIZILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    return-object v9
.end method

.method public setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mFinishPrimaryWithSecondary:I

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mLayoutDirection:I

    return-object p0
.end method

.method public setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mSplitRatio:F

    return-object p0
.end method

.method public setSticky(Z)Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;->mIsSticky:Z

    return-object p0
.end method
