.class Landroidx/window/extensions/embedding/SplitContainer;
.super Ljava/lang/Object;
.source "SplitContainer.java"


# instance fields
.field private final mPrimaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

.field private final mSecondaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

.field private final mSplitRule:Landroidx/window/extensions/embedding/SplitRule;


# direct methods
.method constructor <init>(Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroid/app/Activity;Landroidx/window/extensions/embedding/TaskFragmentContainer;Landroidx/window/extensions/embedding/SplitRule;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitContainer;->mPrimaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSecondaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    iput-object p4, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSplitRule:Landroidx/window/extensions/embedding/SplitRule;

    invoke-static {p4}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishPrimaryWithSecondary(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getRunningActivityCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->hasActivity(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p3, p1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    goto :goto_27

    :cond_24
    invoke-virtual {p3, p2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addActivityToFinishOnExit(Landroid/app/Activity;)V

    :cond_27
    :goto_27
    invoke-static {p4}, Landroidx/window/extensions/embedding/SplitContainer;->shouldFinishSecondaryWithPrimary(Landroidx/window/extensions/embedding/SplitRule;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, p3}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->addContainerToFinishOnExit(Landroidx/window/extensions/embedding/TaskFragmentContainer;)V

    :cond_30
    return-void
.end method

.method static getFinishPrimaryWithSecondaryBehavior(Landroidx/window/extensions/embedding/SplitRule;)I
    .locals 1

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->getFinishPrimaryWithSecondary()I

    move-result v0

    return v0

    :cond_c
    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishPrimaryWithSecondary()I

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method static getFinishSecondaryWithPrimaryBehavior(Landroidx/window/extensions/embedding/SplitRule;)I
    .locals 1

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPairRule;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishSecondaryWithPrimary()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method static isStickyPlaceholderRule(Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 1

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p0

    check-cast v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    invoke-virtual {v0}, Landroidx/window/extensions/embedding/SplitPlaceholderRule;->isSticky()Z

    move-result v0

    return v0
.end method

.method static shouldFinishAssociatedContainerWhenAdjacent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method static shouldFinishAssociatedContainerWhenStacked(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static shouldFinishPrimaryWithSecondary(Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 4

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    instance-of v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    move-object v1, p0

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishPrimaryWithSecondary()I

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    if-nez v1, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :cond_1a
    :goto_1a
    return v2
.end method

.method static shouldFinishSecondaryWithPrimary(Landroidx/window/extensions/embedding/SplitRule;)Z
    .locals 4

    instance-of v0, p0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    instance-of v1, p0, Landroidx/window/extensions/embedding/SplitPairRule;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    move-object v1, p0

    check-cast v1, Landroidx/window/extensions/embedding/SplitPairRule;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/SplitPairRule;->getFinishSecondaryWithPrimary()I

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    if-nez v1, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :cond_1a
    :goto_1a
    return v2
.end method


# virtual methods
.method getMinDimensionsPair()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitContainer;->mPrimaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v1}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getMinDimensions()Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSecondaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v2}, Landroidx/window/extensions/embedding/TaskFragmentContainer;->getMinDimensions()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method getPrimaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitContainer;->mPrimaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    return-object v0
.end method

.method getSecondaryContainer()Landroidx/window/extensions/embedding/TaskFragmentContainer;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSecondaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    return-object v0
.end method

.method getSplitRule()Landroidx/window/extensions/embedding/SplitRule;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSplitRule:Landroidx/window/extensions/embedding/SplitRule;

    return-object v0
.end method

.method isPlaceholderContainer()Z
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSplitRule:Landroidx/window/extensions/embedding/SplitRule;

    instance-of v0, v0, Landroidx/window/extensions/embedding/SplitPlaceholderRule;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitContainer{ primaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitContainer;->mPrimaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSecondaryContainer:Landroidx/window/extensions/embedding/TaskFragmentContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " splitRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitContainer;->mSplitRule:Landroidx/window/extensions/embedding/SplitRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
