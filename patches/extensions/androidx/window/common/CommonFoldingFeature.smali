.class public final Landroidx/window/common/CommonFoldingFeature;
.super Ljava/lang/Object;
.source "CommonFoldingFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/common/CommonFoldingFeature$State;,
        Landroidx/window/common/CommonFoldingFeature$Type;
    }
.end annotation


# static fields
.field public static final COMMON_STATE_FLAT:I = 0x3

.field public static final COMMON_STATE_HALF_OPENED:I = 0x2

.field public static final COMMON_STATE_UNKNOWN:I = -0x1

.field public static final COMMON_TYPE_FOLD:I = 0x1

.field public static final COMMON_TYPE_HINGE:I = 0x2

.field private static final DEBUG:Z = false

.field private static final FEATURE_PATTERN:Ljava/util/regex/Pattern;

.field private static final FEATURE_TYPE_FOLD:Ljava/lang/String; = "fold"

.field private static final FEATURE_TYPE_HINGE:Ljava/lang/String; = "hinge"

.field private static final PATTERN_STATE_FLAT:Ljava/lang/String; = "flat"

.field private static final PATTERN_STATE_HALF_OPENED:Ljava/lang/String; = "half-opened"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mRect:Landroid/graphics/Rect;

.field private final mState:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/window/common/CommonFoldingFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/common/CommonFoldingFeature;->TAG:Ljava/lang/String;

    nop

    const-string v0, "([a-z]+)-\\[(\\d+),(\\d+),(\\d+),(\\d+)]-?(flat|half-opened)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/window/common/CommonFoldingFeature;->FEATURE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/common/CommonFoldingFeature;->assertValidState(Ljava/lang/Integer;)V

    iput p1, p0, Landroidx/window/common/CommonFoldingFeature;->mType:I

    iput p2, p0, Landroidx/window/common/CommonFoldingFeature;->mState:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display feature rectangle cannot have zero width and height simultaneously."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    iput-object p3, p0, Landroidx/window/common/CommonFoldingFeature;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static assertValidState(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    goto :goto_37

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be either COMMON_STATE_FLAT or COMMON_STATE_HALF_OPENED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    return-void
.end method

.method private static parseFromString(Ljava/lang/String;I)Landroidx/window/common/CommonFoldingFeature;
    .locals 13

    sget-object v0, Landroidx/window/common/CommonFoldingFeature;->FEATURE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_f0

    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_d6

    const-string v3, ""

    if-nez v2, :cond_17

    move-object v4, v3

    goto :goto_18

    :cond_17
    move-object v4, v2

    :goto_18
    move-object v2, v4

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_10a

    :cond_22
    goto :goto_37

    :sswitch_23
    const-string v4, "hinge"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v1

    goto :goto_38

    :sswitch_2d
    const-string v4, "fold"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v5

    goto :goto_38

    :goto_37
    move v4, v6

    :goto_38
    packed-switch v4, :pswitch_data_114

    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_bf

    :pswitch_3f
    const/4 v4, 0x2

    goto :goto_43

    :pswitch_41
    const/4 v4, 0x1

    nop

    :goto_43
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v11}, Landroidx/window/util/ExtensionHelper;->isZero(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_a6

    const/4 v12, 0x6

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v3, v12

    :goto_7b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_11c

    :cond_82
    goto :goto_96

    :sswitch_83
    const-string v5, "half-opened"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    goto :goto_97

    :sswitch_8c
    const-string v1, "flat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    move v1, v5

    goto :goto_97

    :goto_96
    move v1, v6

    :goto_97
    packed-switch v1, :pswitch_data_126

    move v1, p1

    goto :goto_a0

    :pswitch_9c
    const/4 v1, 0x2

    goto :goto_a0

    :pswitch_9e
    const/4 v1, 0x3

    nop

    :goto_a0
    new-instance v5, Landroidx/window/common/CommonFoldingFeature;

    invoke-direct {v5, v4, v1, v11}, Landroidx/window/common/CommonFoldingFeature;-><init>(IILandroid/graphics/Rect;)V

    return-object v5

    :cond_a6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature has empty bounds: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed feature type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d6
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_d6} :catch_d6

    :catch_d6
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed feature description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed feature description format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_10a
    .sparse-switch
        0x300c01 -> :sswitch_2d
        0x5eaf12b -> :sswitch_23
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3f
    .end packed-switch

    :sswitch_data_11c
    .sparse-switch
        0x2fff79 -> :sswitch_8c
        0xd8f6343 -> :sswitch_83
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_9c
    .end packed-switch
.end method

.method static parseListFromString(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/window/common/CommonFoldingFeature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    :try_start_11
    invoke-static {v4, p1}, Landroidx/window/common/CommonFoldingFeature;->parseFromString(Ljava/lang/String;I)Landroidx/window/common/CommonFoldingFeature;

    move-result-object v5
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_15} :catch_1a

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catch_1a
    move-exception v5

    nop

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/window/common/CommonFoldingFeature;

    iget v3, p0, Landroidx/window/common/CommonFoldingFeature;->mType:I

    iget v4, v2, Landroidx/window/common/CommonFoldingFeature;->mType:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroidx/window/common/CommonFoldingFeature;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroidx/window/common/CommonFoldingFeature;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroidx/window/common/CommonFoldingFeature;->mRect:Landroid/graphics/Rect;

    iget-object v4, v2, Landroidx/window/common/CommonFoldingFeature;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/window/common/CommonFoldingFeature;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroidx/window/common/CommonFoldingFeature;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/window/common/CommonFoldingFeature;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/window/common/CommonFoldingFeature;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/window/common/CommonFoldingFeature;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/window/common/CommonFoldingFeature;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
