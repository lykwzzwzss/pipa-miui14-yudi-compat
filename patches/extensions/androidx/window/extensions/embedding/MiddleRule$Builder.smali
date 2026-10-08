.class public final Landroidx/window/extensions/embedding/MiddleRule$Builder;
.super Ljava/lang/Object;
.source "MiddleRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/MiddleRule;
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

.field private mAlwaysMiddle:Z

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

    iput-object p1, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iput-object p2, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public build()Landroidx/window/extensions/embedding/MiddleRule;
    .locals 4

    new-instance v0, Landroidx/window/extensions/embedding/MiddleRule;

    iget-object v1, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mActivityPredicate:Ljava/util/function/Predicate;

    iget-object v2, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mIntentPredicate:Ljava/util/function/Predicate;

    iget-boolean v3, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mAlwaysMiddle:Z

    invoke-direct {v0, v1, v2, v3}, Landroidx/window/extensions/embedding/MiddleRule;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;Z)V

    return-object v0
.end method

.method public setShouldAlwaysMiddle(Z)Landroidx/window/extensions/embedding/MiddleRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/extensions/embedding/MiddleRule$Builder;->mAlwaysMiddle:Z

    return-object p0
.end method
