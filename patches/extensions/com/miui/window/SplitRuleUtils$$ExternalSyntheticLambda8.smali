.class public final synthetic Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/window/SplitRuleUtils;->lambda$createSplitPairRuleForActivities$1(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
