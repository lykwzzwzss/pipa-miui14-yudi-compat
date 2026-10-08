.class public final Lcom/android/server/wm/PipaYudiResources$ScopedContext;
.super Landroid/content/ContextWrapper;
.source "PipaYudiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PipaYudiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopedContext"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private final resources:Lcom/android/server/wm/PipaYudiResources$ScopedResources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    const-class v1, Landroid/content/res/AssetManager;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addAssetPath"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/server/wm/PipaYudiResources$ScopedResources;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->resources:Lcom/android/server/wm/PipaYudiResources$ScopedResources;

    return-void

    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->resources:Lcom/android/server/wm/PipaYudiResources$ScopedResources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->inflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->inflater:Landroid/view/LayoutInflater;

    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->inflater:Landroid/view/LayoutInflater;

    return-object p1

    :cond_1d
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validate()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->resources:Lcom/android/server/wm/PipaYudiResources$ScopedResources;

    const v1, 0x110c0025

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    const v0, 0x1108015b

    :goto_f
    const v1, 0x11080160

    if-gt v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->resources:Lcom/android/server/wm/PipaYudiResources$ScopedResources;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/PipaYudiResources$ScopedResources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method
