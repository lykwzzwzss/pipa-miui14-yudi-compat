.class public final Landroidx/window/extensions/embedding/SplitPairRule$Builder;
.super Ljava/lang/Object;
.source "SplitPairRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitPairRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mActivityIntentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityPairPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClearTop:Z

.field private mFinishPrimaryWithSecondary:I

.field private mFinishSecondaryWithPrimary:I

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

.field private mSplitRatio:F


# direct methods
.method public constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/util/Pair<",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            ">;>;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityPairPredicate:Ljava/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/SplitPairRule;
    .locals 10

    new-instance v9, Landroidx/window/extensions/embedding/SplitPairRule;

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mSplitRatio:F

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mLayoutDirection:I

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishPrimaryWithSecondary:I

    iget v4, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishSecondaryWithPrimary:I

    iget-boolean v5, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mClearTop:Z

    iget-object v6, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityPairPredicate:Ljava/util/function/Predicate;

    iget-object v7, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    iget-object v8, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/window/extensions/embedding/SplitPairRule;-><init>(FIIIZLjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    return-object v9
.end method

.method public setFinishPrimaryWithSecondary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishPrimaryWithSecondary:I

    return-object p0
.end method

.method public setFinishSecondaryWithPrimary(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mFinishSecondaryWithPrimary:I

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mLayoutDirection:I

    return-object p0
.end method

.method public setShouldClearTop(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mClearTop:Z

    return-object p0
.end method

.method public setShouldFinishPrimaryWithSecondary(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setShouldFinishSecondaryWithPrimary(Z)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSplitRatio(F)Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/extensions/embedding/SplitPairRule$Builder;->mSplitRatio:F

    return-object p0
.end method
