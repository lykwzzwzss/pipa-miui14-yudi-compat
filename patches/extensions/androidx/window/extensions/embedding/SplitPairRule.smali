.class public Landroidx/window/extensions/embedding/SplitPairRule;
.super Landroidx/window/extensions/embedding/SplitRule;
.source "SplitPairRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitPairRule$Builder;
    }
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

.field private final mClearTop:Z

.field private final mFinishPrimaryWithSecondary:I

.field private final mFinishSecondaryWithPrimary:I


# direct methods
.method constructor <init>(FIIIZLjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIIIZ",
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

    invoke-direct {p0, p8, p1, p2}, Landroidx/window/extensions/embedding/SplitRule;-><init>(Ljava/util/function/Predicate;FI)V

    iput-object p6, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Ljava/util/function/Predicate;

    iput-object p7, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    iput p3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    iput p4, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    iput-boolean p5, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitPairRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Ljava/util/function/Predicate;

    iget-object v4, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    iget-object v4, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    iget v4, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    iget v4, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    if-ne v3, v4, :cond_3a

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    iget-boolean v4, v1, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    if-ne v3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    return v0
.end method

.method public getFinishPrimaryWithSecondary()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    return v0
.end method

.method public getFinishSecondaryWithPrimary()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Landroidx/window/extensions/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    add-int/2addr v1, v2

    return v1
.end method

.method public matchesActivityIntentPair(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityIntentPredicate:Ljava/util/function/Predicate;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesActivityPair(Landroid/app/Activity;Landroid/app/Activity;)Z
    .locals 2

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mActivityPairPredicate:Ljava/util/function/Predicate;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldClearTop()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitPairRule{mFinishPrimaryWithSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishPrimaryWithSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFinishSecondaryWithPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mFinishSecondaryWithPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClearTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;->mClearTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
