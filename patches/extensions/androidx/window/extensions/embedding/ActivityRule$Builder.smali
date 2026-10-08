.class public final Landroidx/window/extensions/embedding/ActivityRule$Builder;
.super Ljava/lang/Object;
.source "ActivityRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/ActivityRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private mAlwaysExpand:Z

.field private final mIntentPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/ActivityRule;
    .locals 4

    new-instance v0, Landroidx/window/extensions/embedding/ActivityRule;

    iget-object v1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iget-object v2, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mAlwaysExpand:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/extensions/embedding/ActivityRule;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Z)V

    return-object v0
.end method

.method public setShouldAlwaysExpand(Z)Landroidx/window/extensions/embedding/ActivityRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/ActivityRule$Builder;->mAlwaysExpand:Z

    return-object p0
.end method
