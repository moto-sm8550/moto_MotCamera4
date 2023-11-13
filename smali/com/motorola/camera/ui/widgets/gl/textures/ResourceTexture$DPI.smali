.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
.super Ljava/lang/Enum;
.source "ResourceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final DPI_MAP:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public static final enum XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;


# instance fields
.field public final mDensity:I

.field public final mName:Ljava/lang/String;

.field public final mScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v1, "LDPI_SCALE"

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/16 v4, 0x78

    const-string v5, "ldpi"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "MDPI_SCALE"

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0xa0

    const-string v12, "mdpi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "TVDPI_SCALE"

    const/4 v15, 0x2

    const/high16 v16, 0x3fc00000    # 1.5f

    const/16 v17, 0xd5

    const-string/jumbo v18, "tvdpi"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 4
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "HDPI_SMALL_SCALE"

    const/4 v9, 0x3

    const v10, 0x3fbe6666

    const/16 v11, 0xee

    const-string v12, "238dpi"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 5
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "HDPI_SCALE"

    const/4 v15, 0x4

    const/16 v17, 0xf0

    const-string v18, "hdpi"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 6
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "HDPI260_SCALE"

    const/4 v9, 0x5

    const/high16 v10, 0x3fd00000    # 1.625f

    const/16 v11, 0x104

    const-string v12, "260dpi"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 7
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v14, "HDPI280_SCALE"

    const/4 v15, 0x6

    const/high16 v16, 0x3fe00000    # 1.75f

    const/16 v17, 0x118

    const-string v18, "280dpi"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 8
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v8, "HDPI300_SCALE"

    const/4 v9, 0x7

    const/high16 v10, 0x3ff00000    # 1.875f

    const/16 v11, 0x12c

    const-string v12, "300dpi"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 9
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v15, "HDPI300_LARGE_SCALE"

    const/16 v16, 0x8

    const v17, 0x3ff4cccd

    const/16 v18, 0x132

    const-string v19, "306dpi"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 10
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v21, "XHDPI_SCALE"

    const/16 v22, 0x9

    const/high16 v23, 0x40000000    # 2.0f

    const/16 v24, 0x140

    const-string/jumbo v25, "xhdpi"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 11
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v15, "XHDPI_LARGER_SCALE"

    const/16 v16, 0xa

    const v17, 0x4004cccd

    const/16 v18, 0x14c

    const-string v19, "332dpi"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 12
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v21, "HDPI340_SCALE"

    const/16 v22, 0xb

    const/high16 v23, 0x40080000    # 2.125f

    const/16 v24, 0x154

    const-string v25, "340dpi"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 13
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v15, "HDPI340_SMALL_SCALE"

    const/16 v16, 0xc

    const v17, 0x400e6666

    const/16 v18, 0x164

    const-string v19, "356dpi"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 14
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v21, "HDPI360_SCALE"

    const/16 v22, 0xd

    const/high16 v23, 0x40100000    # 2.25f

    const/16 v24, 0x168

    const-string v25, "360dpi"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 15
    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v15, "HDPI360_LARGE_SCALE"

    const/16 v16, 0xe

    const v17, 0x401f3333

    const/16 v18, 0x18e

    const-string v19, "398dpi"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v20, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 16
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "HDPI400_SCALE"

    const/16 v23, 0xf

    const/high16 v24, 0x40200000    # 2.5f

    const/16 v25, 0x190

    const-string v26, "400dpi"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 17
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v28, "HDPI420_SCALE"

    const/16 v29, 0x10

    const/high16 v30, 0x40280000    # 2.625f

    const/16 v31, 0x1a4

    const-string v32, "420dpi"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 18
    new-instance v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "HDPI440_LARGEST_SCALE"

    const/16 v23, 0x11

    const v24, 0x402f3333

    const/16 v25, 0x1b6

    const-string v26, "442dpi"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v16, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 19
    new-instance v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v28, "HDPI440_SCALE"

    const/16 v29, 0x12

    const/high16 v30, 0x40300000    # 2.75f

    const/16 v31, 0x1b8

    const-string v32, "440dpi"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v17, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 20
    new-instance v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "HDPI440_LARGE_SCALE"

    const/16 v23, 0x13

    const v24, 0x40326667

    const/16 v25, 0x1be

    const-string v26, "446dpi"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v18, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 21
    new-instance v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v28, "HDPI440_LARGE2_SCALE"

    const/16 v29, 0x14

    const/high16 v30, 0x40380000    # 2.875f

    const/16 v31, 0x1cc

    const-string v32, "460dpi"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v19, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 22
    new-instance v27, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v22, "XXHDPI_SCALE"

    const/16 v23, 0x15

    const/high16 v24, 0x40400000    # 3.0f

    const/16 v25, 0x1e0

    const-string/jumbo v26, "xxhdpi"

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v27, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 23
    new-instance v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "XXHDPI_LARGER_SCALE"

    const/16 v30, 0x16

    const v31, 0x4044cccd

    const/16 v32, 0x1ec

    const-string v33, "492dpi"

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v21, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 24
    new-instance v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v35, "XXHDPI_LARGER2_SCALE"

    const/16 v36, 0x17

    const/high16 v37, 0x40480000    # 3.125f

    const/16 v38, 0x1f4

    const-string v39, "500dpi"

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v22, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 25
    new-instance v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "HDPI560_LARGEST_SCALE"

    const/16 v30, 0x18

    const/high16 v31, 0x40580000    # 3.375f

    const/16 v32, 0x21c

    const-string v33, "540dpi"

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v23, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 26
    new-instance v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v35, "HDPI560_SCALE"

    const/16 v36, 0x19

    const/high16 v37, 0x40600000    # 3.5f

    const/16 v38, 0x230

    const-string v39, "560dpi"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v24, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 27
    new-instance v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const-string v29, "XXXHDPI_SCALE"

    const/16 v30, 0x1a

    const/high16 v31, 0x40800000    # 4.0f

    const/16 v32, 0x280

    const-string/jumbo v33, "xxxhdpi"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;-><init>(Ljava/lang/String;IFILjava/lang/String;)V

    sput-object v25, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-object/from16 v26, v15

    const/16 v15, 0x1b

    new-array v15, v15, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/16 v28, 0x0

    aput-object v6, v15, v28

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v26, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    .line 28
    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 29
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    .line 30
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v28

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    .line 3
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mDensity:I

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    return-void
.end method

.method public static getDpi(I)Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    return-object v0
.end method
