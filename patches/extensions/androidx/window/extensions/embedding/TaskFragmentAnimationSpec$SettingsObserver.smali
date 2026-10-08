.class Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TaskFragmentAnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;


# direct methods
.method constructor <init>(Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;->this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;->this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    iget-object v1, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec$SettingsObserver;->this$0:Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;

    iget v2, v2, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    const-string v3, "transition_animation_scale"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Landroidx/window/extensions/embedding/TaskFragmentAnimationSpec;->mTransitionAnimationScaleSetting:F

    return-void
.end method
