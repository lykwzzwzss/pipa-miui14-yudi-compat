.class public final synthetic Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/window/SplitRuleUtils$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/window/SplitRuleUtils;->lambda$createMiddleRuleForActivity$4(ZLjava/util/ArrayList;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
