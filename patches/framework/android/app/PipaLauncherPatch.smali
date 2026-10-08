.class public final Landroid/app/PipaLauncherPatch;
.super Ljava/lang/Object;
.source "PipaLauncherPatch.java"


# static fields
.field private static final APK_SHA256:Ljava/lang/String; = "1ef993a1981919d503e24cfb8be2592977d7cd7f57c9b0abc7cca79f78aeaba2"

.field private static final PATCH:Ljava/lang/String; = "/system_ext/framework/pipa-home-patch.jar"

.field private static final TAG:Ljava/lang/String; = "PipaNavCompat"

.field private static attempted:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2

    if-eqz p0, :cond_15

    const-string v0, "com.miui.home"

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    instance-of v0, p1, Ldalvik/system/BaseDexClassLoader;

    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {p0, p1}, Landroid/app/PipaLauncherPatch;->installLauncher(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    return-void

    :cond_15
    :goto_15
    return-void
.end method

.method private static declared-synchronized installLauncher(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 7

    const-class v0, Landroid/app/PipaLauncherPatch;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/app/PipaLauncherPatch;->attempted:Ljava/util/WeakHashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Landroid/app/PipaLauncherPatch;->attempted:Ljava/util/WeakHashMap;

    :cond_e
    sget-object v1, Landroid/app/PipaLauncherPatch;->attempted:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_a3

    if-eqz v1, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    :try_start_18
    sget-object v1, Landroid/app/PipaLauncherPatch;->attempted:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a3

    :try_start_1f
    const-string v1, "1ef993a1981919d503e24cfb8be2592977d7cd7f57c9b0abc7cca79f78aeaba2"

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/app/PipaLauncherPatch;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    const-string p0, "PipaNavCompat"

    const-string p1, "Launcher version changed; navigation patch skipped"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_99
    .catch Ljava/lang/LinkageError; {:try_start_1f .. :try_end_34} :catch_99
    .catchall {:try_start_1f .. :try_end_34} :catchall_a3

    monitor-exit v0

    return-void

    :cond_36
    :try_start_36
    const-class p0, Ldalvik/system/BaseDexClassLoader;

    const-string v1, "pathList"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ldalvik/system/DexClassLoader;

    const-string v4, "/system_ext/framework/pipa-home-patch.jar"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "dexElements"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_91

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    add-int v6, v3, v4

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "PipaNavCompat"

    const-string p1, "1.0.0 launcher navigation switch and Dock geometry patch loaded"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_91
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty navigation patch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_99} :catch_99
    .catch Ljava/lang/LinkageError; {:try_start_36 .. :try_end_99} :catch_99
    .catchall {:try_start_36 .. :try_end_99} :catchall_a3

    :catch_99
    move-exception p0

    :try_start_9a
    const-string p1, "PipaNavCompat"

    const-string v1, "Navigation patch unavailable; retaining original launcher"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a3

    :goto_a1
    monitor-exit v0

    return-void

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000

    :try_start_d
    new-array p0, p0, [B

    :goto_f
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1b

    invoke-virtual {v0, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_50

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const-string p0, "0123456789abcdef"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    nop

    :goto_2e
    array-length v2, v0

    if-ge v4, v2, :cond_4a

    mul-int/lit8 v2, v4, 0x2

    aget-byte v3, v0, v4

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p0, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v0, v4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p0, v3

    aput-char v3, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_4a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :catchall_50
    move-exception p0

    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw p0
.end method
