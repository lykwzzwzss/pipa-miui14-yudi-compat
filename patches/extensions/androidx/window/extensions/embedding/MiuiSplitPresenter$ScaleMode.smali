.class public final enum Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;
.super Ljava/lang/Enum;
.source "MiuiSplitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/MiuiSplitPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

.field public static final enum NOT_SCALE:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

.field public static final enum SCALE_FIT_HEIGHT:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

.field public static final enum SCALE_FIT_WIDTH:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const-string v1, "NOT_SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->NOT_SCALE:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    new-instance v1, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const-string v3, "SCALE_FIT_WIDTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->SCALE_FIT_WIDTH:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    new-instance v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const-string v5, "SCALE_FIT_HEIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->SCALE_FIT_HEIGHT:Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->$VALUES:[Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;
    .locals 1

    const-class v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-object v0
.end method

.method public static values()[Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;
    .locals 1

    sget-object v0, Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->$VALUES:[Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    invoke-virtual {v0}, [Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/window/extensions/embedding/MiuiSplitPresenter$ScaleMode;

    return-object v0
.end method
