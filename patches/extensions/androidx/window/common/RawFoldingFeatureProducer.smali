.class public final Landroidx/window/common/RawFoldingFeatureProducer;
.super Landroidx/window/util/BaseDataProducer;
.source "RawFoldingFeatureProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/window/util/BaseDataProducer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPLAY_FEATURES:Ljava/lang/String; = "display_features"


# instance fields
.field private final mDisplayFeaturesUri:Landroid/net/Uri;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegisteredObservers:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResourceFeature:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayFeaturesUri(Landroidx/window/common/RawFoldingFeatureProducer;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mDisplayFeaturesUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/window/util/BaseDataProducer;-><init>()V

    nop

    const-string v0, "display_features"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mDisplayFeaturesUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;

    invoke-direct {v0, p0}, Landroidx/window/common/RawFoldingFeatureProducer$SettingsObserver;-><init>(Landroidx/window/common/RawFoldingFeatureProducer;)V

    iput-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResourceFeature:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroidx/window/common/RawFoldingFeatureProducer;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/window/common/RawFoldingFeatureProducer;->notifyDataChanged()V

    return-void
.end method

.method private getFeatureString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_features"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResourceFeature:Ljava/lang/String;

    return-object v1

    :cond_11
    return-object v0
.end method

.method private registerObserversIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mRegisteredObservers:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mRegisteredObservers:Z

    iget-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mDisplayFeaturesUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserversIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mRegisteredObservers:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mRegisteredObservers:Z

    iget-object v0, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/window/common/RawFoldingFeatureProducer;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/window/common/RawFoldingFeatureProducer;->getFeatureString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_b
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method protected onListenersChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroidx/window/common/RawFoldingFeatureProducer;->unregisterObserversIfNeeded()V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Landroidx/window/common/RawFoldingFeatureProducer;->registerObserversIfNeeded()V

    :goto_d
    return-void
.end method
