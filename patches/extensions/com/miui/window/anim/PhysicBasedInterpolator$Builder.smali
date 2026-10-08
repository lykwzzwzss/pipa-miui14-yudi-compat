.class public final Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/window/anim/PhysicBasedInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDamping:F

.field private mResponse:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mDamping:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mResponse:F

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/window/anim/PhysicBasedInterpolator;
    .locals 3

    new-instance v0, Lcom/miui/window/anim/PhysicBasedInterpolator;

    iget v1, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mDamping:F

    iget v2, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mResponse:F

    invoke-direct {v0, v1, v2}, Lcom/miui/window/anim/PhysicBasedInterpolator;-><init>(FF)V

    return-object v0
.end method

.method public setDamping(F)Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mDamping:F

    return-object p0
.end method

.method public setResponse(F)Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/window/anim/PhysicBasedInterpolator$Builder;->mResponse:F

    return-object p0
.end method
