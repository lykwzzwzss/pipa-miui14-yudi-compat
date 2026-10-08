.class public final Lcom/android/server/wm/PipaYudiResources$ScopedResources;
.super Landroid/content/res/Resources;
.source "PipaYudiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PipaYudiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopedResources"
.end annotation


# static fields
.field private static final NAMES:[Ljava/lang/String;


# instance fields
.field private final base:Landroid/content/res/Resources;

.field private final drawables:[I

.field private final isolated:Landroid/content/res/Resources;

.field private final layout:I

.field private final syncedConfiguration:Landroid/content/res/Configuration;

.field private final syncedMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "miui_embedding_right_button"

    const-string v5, "miui_embedding_right_button_dark"

    const-string v0, "miui_embedding_center_divider"

    const-string v1, "miui_embedding_center_divider_dark"

    const-string v2, "miui_embedding_left_button"

    const-string v3, "miui_embedding_left_button_dark"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->drawables:[I

    iput-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    const-string p1, "miui_embedding_divider"

    const-string p2, "layout"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->required(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->layout:I

    const/4 p1, 0x0

    :goto_3e
    iget-object p2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->drawables:[I

    array-length p2, p2

    if-ge p1, p2, :cond_54

    iget-object p2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->drawables:[I

    sget-object v0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "drawable"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->required(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_54
    return-void
.end method

.method private required(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    const-string v1, "local.pipa.yudi"

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_b

    return p2

    :cond_b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private declared-synchronized sync()V
    .locals 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_1d
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->syncedMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    :cond_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x1108015b

    if-lt p1, v0, :cond_1a

    const v1, 0x11080160

    if-gt p1, v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->sync()V

    iget-object p2, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->drawables:[I

    sub-int/2addr p1, v0

    aget p1, v1, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x1108015b

    if-lt p1, v0, :cond_1a

    const v1, 0x11080160

    if-gt p1, v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->sync()V

    iget-object p3, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->drawables:[I

    sub-int/2addr p1, v0

    aget p1, v1, p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1

    const v0, 0x110c0025

    if-ne p1, v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->sync()V

    iget-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->isolated:Landroid/content/res/Resources;

    iget v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->layout:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->base:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method
