.class public final Lcom/android/server/wm/PipaYudiResources;
.super Ljava/lang/Object;
.source "PipaYudiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PipaYudiResources$ScopedContext;,
        Lcom/android/server/wm/PipaYudiResources$ScopedResources;
    }
.end annotation


# static fields
.field private static final APK:Ljava/lang/String; = "/system_ext/framework/pipa-yudi-res.apk"

.field private static final TAG:Ljava/lang/String; = "PipaYudiCompat"

.field private static failedService:Ljava/lang/Object;

.field private static loggedError:Z

.field private static volatile preparedService:Ljava/lang/Object;

.field private static retryAfter:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "systemMain"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSystemContext"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110c0025

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/wm/PipaYudiResources$ScopedContext;

    aget-object p0, p0, v1

    invoke-direct {v5, v0, p0}, Lcom/android/server/wm/PipaYudiResources$ScopedContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->validate()V

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c1

    const v3, 0x110a0044

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c1

    const v3, 0x110a0045

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAYOUT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " IDS=0x110a0044,0x110a0045 DRAWABLES=6"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "RESOURCE_PROBE=PASS"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_b9
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Base resources changed"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_c1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Divider view contract mismatch"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static prepare(Ljava/lang/Object;)V
    .locals 7

    if-eqz p0, :cond_84

    sget-object v0, Lcom/android/server/wm/PipaYudiResources;->preparedService:Ljava/lang/Object;

    if-eq p0, v0, :cond_84

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.wm.MiuiEmbeddingWindowService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_84

    :cond_17
    const-class v0, Lcom/android/server/wm/PipaYudiResources;

    monitor-enter v0

    :try_start_1a
    sget-object v1, Lcom/android/server/wm/PipaYudiResources;->preparedService:Ljava/lang/Object;

    if-ne p0, v1, :cond_20

    monitor-exit v0

    return-void

    :cond_20
    sget-object v1, Lcom/android/server/wm/PipaYudiResources;->failedService:Ljava/lang/Object;

    if-ne p0, v1, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/wm/PipaYudiResources;->retryAfter:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_81

    return-void

    :cond_30
    const/4 v1, 0x1

    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mContext"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_44} :catch_66
    .catch Ljava/lang/LinkageError; {:try_start_31 .. :try_end_44} :catch_66
    .catchall {:try_start_31 .. :try_end_44} :catchall_81

    if-nez v3, :cond_48

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_81

    return-void

    :cond_48
    :try_start_48
    instance-of v4, v3, Lcom/android/server/wm/PipaYudiResources$ScopedContext;

    if-nez v4, :cond_60

    new-instance v4, Lcom/android/server/wm/PipaYudiResources$ScopedContext;

    const-string v5, "/system_ext/framework/pipa-yudi-res.apk"

    invoke-direct {v4, v3, v5}, Lcom/android/server/wm/PipaYudiResources$ScopedContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/PipaYudiResources$ScopedContext;->validate()V

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "PipaYudiCompat"

    const-string v3, "yudi resource contract installed; upstream embedding JAR unchanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    sput-object p0, Lcom/android/server/wm/PipaYudiResources;->preparedService:Ljava/lang/Object;

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wm/PipaYudiResources;->failedService:Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_65} :catch_66
    .catch Ljava/lang/LinkageError; {:try_start_48 .. :try_end_65} :catch_66
    .catchall {:try_start_48 .. :try_end_65} :catchall_81

    goto :goto_7f

    :catch_66
    move-exception v2

    :try_start_67
    sput-object p0, Lcom/android/server/wm/PipaYudiResources;->failedService:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/PipaYudiResources;->retryAfter:J

    sget-boolean p0, Lcom/android/server/wm/PipaYudiResources;->loggedError:Z

    if-nez p0, :cond_7f

    sput-boolean v1, Lcom/android/server/wm/PipaYudiResources;->loggedError:Z

    const-string p0, "PipaYudiCompat"

    const-string v1, "Resource compatibility could not initialize"

    invoke-static {p0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7f
    :goto_7f
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_81

    throw p0

    :cond_84
    :goto_84
    return-void
.end method
