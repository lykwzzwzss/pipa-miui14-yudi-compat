.class public Landroidx/window/extensions/embedding/MiddleRule;
.super Landroidx/window/extensions/embedding/EmbeddingRule;
.source "MiddleRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/MiddleRule$Builder;
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

.field private final mIntentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldAlwaysMiddle:Z


# direct methods
.method constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/MiddleRule;->mActivityPredicate:Ljava/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/MiddleRule;->mIntentPredicate:Ljava/util/function/Predicate;

    iput-boolean p3, p0, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/extensions/embedding/MiddleRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/MiddleRule;

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    iget-boolean v4, v1, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Landroidx/window/extensions/embedding/MiddleRule;->mActivityPredicate:Ljava/util/function/Predicate;

    iget-object v4, v1, Landroidx/window/extensions/embedding/MiddleRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroidx/window/extensions/embedding/MiddleRule;->mIntentPredicate:Ljava/util/function/Predicate;

    iget-object v4, v1, Landroidx/window/extensions/embedding/MiddleRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiddleRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiddleRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    add-int/2addr v0, v2

    return v0
.end method

.method public matchesActivity(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiddleRule;->mActivityPredicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesIntent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/MiddleRule;->mIntentPredicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldAlwaysMiddle()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiddleRule{mShouldAlwaysMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/window/extensions/embedding/MiddleRule;->mShouldAlwaysMiddle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
