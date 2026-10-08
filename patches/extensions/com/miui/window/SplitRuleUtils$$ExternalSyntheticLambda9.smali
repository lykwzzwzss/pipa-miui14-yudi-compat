.class public final synthetic Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;->f$0:F

    iput p2, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;->f$1:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;->f$0:F

    iget v1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda9;->f$1:F

    check-cast p1, Landroid/view/WindowMetrics;

    invoke-static {v0, v1, p1}, Lcom/miui/window/SplitRuleUtils;->lambda$getWindowMetrics$9(FFLandroid/view/WindowMetrics;)Z

    move-result p1

    return p1
.end method
