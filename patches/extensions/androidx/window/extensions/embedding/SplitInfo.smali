.class public Landroidx/window/extensions/embedding/SplitInfo;
.super Ljava/lang/Object;
.source "SplitInfo.java"


# instance fields
.field private final mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

.field private final mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

.field private final mSplitRatio:F


# direct methods
.method public constructor <init>(Landroidx/window/extensions/embedding/ActivityStack;Landroidx/window/extensions/embedding/ActivityStack;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iput p3, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/extensions/embedding/SplitInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/window/extensions/embedding/SplitInfo;

    iget v3, v1, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    iget v4, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v4, v1, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v3, v4}, Landroidx/window/extensions/embedding/ActivityStack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    iget-object v4, v1, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v3, v4}, Landroidx/window/extensions/embedding/ActivityStack;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0
.end method

.method public getPrimaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    return-object v0
.end method

.method public getSecondaryActivityStack()Landroidx/window/extensions/embedding/ActivityStack;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    return-object v0
.end method

.method public getSplitRatio()F
    .locals 1

    iget v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/ActivityStack;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/ActivityStack;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    const/high16 v3, 0x41880000    # 17.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitInfo{mPrimaryActivityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mPrimaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecondaryActivityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSecondaryActivityStack:Landroidx/window/extensions/embedding/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSplitRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/extensions/embedding/SplitInfo;->mSplitRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
