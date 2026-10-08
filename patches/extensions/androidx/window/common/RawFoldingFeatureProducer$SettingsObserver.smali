.class final Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RawFoldingFeatureProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/common/RawFoldingFeatureProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/common/RawFoldingFeatureProducer;


# direct methods
.method constructor <init>(Landroidx/window/common/RawFoldingFeatureProducer;)V
    .locals 1

    iput-object p1, p0, Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;->this$0:Landroidx/window/common/RawFoldingFeatureProducer;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;->this$0:Landroidx/window/common/RawFoldingFeatureProducer;

    invoke-static {v0}, Landroidx/window/common/RawFoldingFeatureProducer;->-$$Nest$fgetmDisplayFeaturesUri(Landroidx/window/common/RawFoldingFeatureProducer;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;->this$0:Landroidx/window/common/RawFoldingFeatureProducer;

    invoke-static {v0}, Landroidx/window/common/RawFoldingFeatureProducer;->access$000(Landroidx/window/common/RawFoldingFeatureProducer;)V

    :cond_11
    return-void
.end method
