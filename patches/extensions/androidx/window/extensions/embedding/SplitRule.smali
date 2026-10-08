.class public abstract Landroidx/window/extensions/embedding/SplitRule;
.super Landroidx/window/extensions/embedding/EmbeddingRule;
.source "SplitRule.java"


# static fields
.field public static final FINISH_ADJACENT:I = 0x2

.field public static final FINISH_ALWAYS:I = 0x1

.field public static final FINISH_NEVER:I


# instance fields
.field private final mLayoutDirection:I

.field private final mParentWindowMetricsPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitRatio:F


# direct methods
.method constructor <init>(Ljava/util/function/Predicate;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/WindowMetrics;",
            ">;FI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/window/extensions/embedding/EmbeddingRule;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    iput p2, p0, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    iput p3, p0, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public checkParentMetrics(Landroid/view/WindowMetrics;)Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/SplitRule;

    iget v3, v1, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    iget v4, p0, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    iget-object v4, v1, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, p0, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    iget v4, v1, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    return v0
.end method

.method public getSplitRatio()F
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    const/high16 v1, 0x41880000    # 17.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitRule;->mParentWindowMetricsPredicate:Ljava/util/function/Predicate;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitRule{mSplitRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitRule;->mSplitRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitRule;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
