.class public final synthetic Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda1;->f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationRunner$$ExternalSyntheticLambda1;->f$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->loadOpenAnimation(Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method
