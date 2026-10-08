.class public Landroidx/window/extensions/WindowExtensionsProvider;
.super Ljava/lang/Object;
.source "WindowExtensionsProvider.java"


# static fields
.field private static final sWindowExtensions:Landroidx/window/extensions/WindowExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/extensions/WindowExtensionsImpl;

    invoke-direct {v0}, Landroidx/window/extensions/WindowExtensionsImpl;-><init>()V

    sput-object v0, Landroidx/window/extensions/WindowExtensionsProvider;->sWindowExtensions:Landroidx/window/extensions/WindowExtensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowExtensions()Landroidx/window/extensions/WindowExtensions;
    .locals 1

    sget-object v0, Landroidx/window/extensions/WindowExtensionsProvider;->sWindowExtensions:Landroidx/window/extensions/WindowExtensions;

    return-object v0
.end method
