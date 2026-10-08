.class final Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;
.super Landroidx/window/common/EmptyLifecycleCallbacksAdapter;
.source "WindowLayoutComponentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/layout/WindowLayoutComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifyOnConfigurationChanged"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/extensions/layout/WindowLayoutComponentImpl;


# direct methods
.method private constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;->this$0:Landroidx/window/extensions/layout/WindowLayoutComponentImpl;

    invoke-direct {p0}, Landroidx/window/common/EmptyLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V

    return-void
.end method

.method private onDisplayFeaturesChangedIfListening(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;->this$0:Landroidx/window/extensions/layout/WindowLayoutComponentImpl;

    invoke-static {v1, v0}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->-$$Nest$misListeningForLayoutChanges(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_14
    iget-object v1, p0, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;->this$0:Landroidx/window/extensions/layout/WindowLayoutComponentImpl;

    invoke-static {v1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl;->-$$Nest$monDisplayFeaturesChanged(Landroidx/window/extensions/layout/WindowLayoutComponentImpl;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public onActivityConfigurationChanged(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/window/common/EmptyLifecycleCallbacksAdapter;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;->onDisplayFeaturesChangedIfListening(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/window/common/EmptyLifecycleCallbacksAdapter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponentImpl$NotifyOnConfigurationChanged;->onDisplayFeaturesChangedIfListening(Landroid/app/Activity;)V

    return-void
.end method
