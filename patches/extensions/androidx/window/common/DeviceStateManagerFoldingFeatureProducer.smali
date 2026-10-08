.class public final Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;
.super Landroidx/window/util/BaseDataProducer;
.source "DeviceStateManagerFoldingFeatureProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/window/util/BaseDataProducer<",
        "Ljava/util/List<",
        "Landroidx/window/common/CommonFoldingFeature;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDeviceState:I

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

.field private final mRawFoldSupplier:Landroidx/window/util/DataProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/util/DataProducer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mUHYvznL1w5mxlMURyrqUZhoHpE(Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/window/util/BaseDataProducer;->notifyDataChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/window/util/DataProducer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/window/util/DataProducer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/window/util/BaseDataProducer;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mCurrentDeviceState:I

    new-instance v0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda0;-><init>(Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;)V

    iput-object v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    iput-object p2, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mRawFoldSupplier:Landroidx/window/util/DataProducer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    if-ge v3, v1, :cond_4c

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_33

    goto :goto_49

    :cond_33
    :try_start_33
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_40} :catch_47

    nop

    iget-object v8, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_49

    :catch_47
    move-exception v6

    nop

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_4c
    iget-object v1, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_65

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_65
    return-void
.end method

.method private globalHingeState()I
    .locals 3

    iget-object v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mCurrentDeviceState:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getData()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Landroidx/window/common/CommonFoldingFeature;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->globalHingeState()I

    move-result v0

    iget-object v1, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mRawFoldSupplier:Landroidx/window/util/DataProducer;

    invoke-interface {v1}, Landroidx/window/util/DataProducer;->getData()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2c

    :cond_1d
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Landroidx/window/common/CommonFoldingFeature;->parseListFromString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    :cond_2c
    :goto_2c
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method synthetic lambda$new$0$androidx-window-common-DeviceStateManagerFoldingFeatureProducer(I)V
    .locals 0

    iput p1, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mCurrentDeviceState:I

    invoke-virtual {p0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->notifyDataChanged()V

    return-void
.end method

.method protected onListenersChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/window/util/BaseDataProducer;->onListenersChanged(Ljava/util/Set;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mRawFoldSupplier:Landroidx/window/util/DataProducer;

    new-instance v1, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda1;-><init>(Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;)V

    invoke-interface {v0, v1}, Landroidx/window/util/DataProducer;->removeDataChangedCallback(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_14
    iget-object v0, p0, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;->mRawFoldSupplier:Landroidx/window/util/DataProducer;

    new-instance v1, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer$$ExternalSyntheticLambda1;-><init>(Landroidx/window/common/DeviceStateManagerFoldingFeatureProducer;)V

    invoke-interface {v0, v1}, Landroidx/window/util/DataProducer;->addDataChangedCallback(Ljava/lang/Runnable;)V

    :goto_1e
    return-void
.end method
