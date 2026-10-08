.class public Landroidx/window/extensions/embedding/SplitPlaceholderRule;
.super Landroidx/window/extensions/embedding/SplitRule;
.source "SplitPlaceholderRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitPlaceholderRule$Builder;
    }
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

.field private final mFinishPrimaryWithSecondary:I

.field private final mIntentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSticky:Z

.field private final mPlaceholderIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;FIZILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "FIZI",
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

    invoke-direct {p0, p8, p2, p3}, Landroidx/window/extensions/embedding/SplitRule;-><init>(Ljava/util/function/Predicate;FI)V

    iput-boolean p4, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    iput p5, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    iput-object p6, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    iput-object p7, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Ljava/util/function/Predicate;

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-super {p0, p1}, Landroidx/window/extensions/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    iget-boolean v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    iget-boolean v3, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    iget v3, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    if-eq v2, v3, :cond_22

    return v1

    :cond_22
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    iget-object v3, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    :cond_2d
    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Ljava/util/function/Predicate;

    iget-object v3, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    :cond_38
    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    iget-object v2, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getFinishPrimaryWithSecondary()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    return v0
.end method

.method public getPlaceholderIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Landroidx/window/extensions/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mPlaceholderIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    add-int/2addr v1, v2

    return v1
.end method

.method public isSticky()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    return v0
.end method

.method public matchesActivity(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesIntent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitPlaceholderRule{mActivityPredicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSticky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mIsSticky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFinishPrimaryWithPlaceholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->mFinishPrimaryWithSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
