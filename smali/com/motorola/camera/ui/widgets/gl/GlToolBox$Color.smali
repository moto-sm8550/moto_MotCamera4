.class public final enum Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
.super Ljava/lang/Enum;
.source "GlToolBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/GlToolBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum LN_GRAY:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public static final enum WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;


# instance fields
.field public mValue:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "APP_THEME"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v5, "APP_ACCENT"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    const-string v7, "WHITE"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    const-string v9, "WHITE_BG"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE_BG:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v9, v1, [F

    fill-array-data v9, :array_4

    const-string v11, "BLACK"

    invoke-direct {v7, v11, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v11, v1, [F

    fill-array-data v11, :array_5

    const-string v12, "LT_GRAY"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 7
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v12, v1, [F

    fill-array-data v12, :array_6

    const-string v14, "LN_GRAY"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v12}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->LN_GRAY:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 8
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v14, v1, [F

    fill-array-data v14, :array_7

    const-string v15, "DK_GRAY"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 9
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v15, v1, [F

    fill-array-data v15, :array_8

    const-string v13, "GRAY"

    const/16 v10, 0x8

    invoke-direct {v14, v13, v10, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 10
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v15, v1, [F

    fill-array-data v15, :array_9

    const-string v10, "RED"

    const/16 v8, 0x9

    invoke-direct {v13, v10, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 11
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v15, v1, [F

    fill-array-data v15, :array_a

    const-string v8, "BLUE"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 12
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v15, v1, [F

    fill-array-data v15, :array_b

    const-string v6, "GREEN"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 13
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    new-array v15, v1, [F

    fill-array-data v15, :array_c

    const-string v4, "YELLOW"

    const/16 v1, 0xc

    invoke-direct {v6, v4, v1, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 14
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v1, v15, [F

    fill-array-data v1, :array_d

    const-string v15, "PRIMARY"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v4, v15, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 15
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v6, v15, [F

    fill-array-data v6, :array_e

    const-string v15, "TRANSPARENT_W"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v1, v15, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 16
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v4, v15, [F

    fill-array-data v4, :array_f

    const-string v15, "TRANSPARENT"

    move-object/from16 v18, v1

    const/16 v1, 0xf

    invoke-direct {v6, v15, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 17
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v1, v15, [F

    fill-array-data v1, :array_10

    const-string v15, "TRANSPARENT_38_BLACK"

    move-object/from16 v19, v6

    const/16 v6, 0x10

    invoke-direct {v4, v15, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 18
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v6, v15, [F

    fill-array-data v6, :array_11

    const-string v15, "TRANSPARENT_40_BLACK"

    move-object/from16 v20, v4

    const/16 v4, 0x11

    invoke-direct {v1, v15, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 19
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v4, v15, [F

    fill-array-data v4, :array_12

    const-string v15, "TRANSPARENT_50_BLACK"

    move-object/from16 v21, v1

    const/16 v1, 0x12

    invoke-direct {v6, v15, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    .line 20
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v1, v15, [F

    fill-array-data v1, :array_13

    const-string v15, "TRANSPARENT_65_BLACK"

    move-object/from16 v22, v6

    const/16 v6, 0x13

    invoke-direct {v4, v15, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 21
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v6, v15, [F

    fill-array-data v6, :array_14

    const-string v15, "TRANSPARENT_75_BLACK"

    move-object/from16 v23, v4

    const/16 v4, 0x14

    invoke-direct {v1, v15, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 22
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x4

    new-array v4, v15, [F

    fill-array-data v4, :array_15

    const-string v15, "BG_GRAY"

    move-object/from16 v24, v1

    const/16 v1, 0x15

    invoke-direct {v6, v15, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;-><init>(Ljava/lang/String;I[F)V

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v14, v4, v0

    const/16 v0, 0x9

    aput-object v13, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v8, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    aput-object v6, v4, v1

    .line 23
    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd
        0x3f5c28f6
        0x3e6147ae
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e4ccccd
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f51eb85
        0x3f51eb85
        0x3f51eb85
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f600000    # 0.875f
        0x3f600000    # 0.875f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f28f5c3
        0x3f28f5c3
        0x3f28f5c3
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f37b741
        0x3ca0902e
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x3ec28f5c
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x3ecccccd
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
        0x3f266666
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x3f400000    # 0.75f
    .end array-data

    :array_15
    .array-data 4
        0x3e6147ae
        0x3e947ae1
        0x3e9eb852
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    return-object v0
.end method
