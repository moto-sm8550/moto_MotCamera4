.class public final Lcom/motorola/camera/VideoFormat;
.super Ljava/lang/Object;
.source "VideoFormat.java"


# static fields
.field public static final CLI_FHD:Landroid/util/Size;

.field public static final EMPTY:Lcom/motorola/camera/VideoFormat;

.field public static final EQU_4K:Landroid/util/Size;

.field public static final EQU_FHD:Landroid/util/Size;

.field public static final FHD:Landroid/util/Size;

.field public static final FHD_18V9:Landroid/util/Size;

.field public static final FHD_19P5V9:Landroid/util/Size;

.field public static final FHD_19V9:Landroid/util/Size;

.field public static final FHD_20P5V9:Landroid/util/Size;

.field public static final FHD_20V9:Landroid/util/Size;

.field public static final FHD_21V9:Landroid/util/Size;

.field public static final FHD_21V9_2:Landroid/util/Size;

.field public static final FHD_22V9:Landroid/util/Size;

.field public static final FHD_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final FPS_DEFAULT:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HD:Landroid/util/Size;

.field public static final HD_18V9:Landroid/util/Size;

.field public static final HD_19P5V9:Landroid/util/Size;

.field public static final HD_19V9:Landroid/util/Size;

.field public static final HD_20P5V9:Landroid/util/Size;

.field public static final HD_20P5V9_2:Landroid/util/Size;

.field public static final HD_20V9:Landroid/util/Size;

.field public static final HD_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final QHD:Landroid/util/Size;

.field public static final QHD_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_COMPARATOR:Lcom/motorola/camera/VideoFormat$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final UHD_4K:Landroid/util/Size;

.field public static final UHD_4K_19P5V9:Landroid/util/Size;

.field public static final UHD_4K_19V9:Landroid/util/Size;

.field public static final UHD_4K_20P5V9:Landroid/util/Size;

.field public static final UHD_4K_20V9:Landroid/util/Size;

.field public static final UHD_4K_20V9_2:Landroid/util/Size;

.field public static final UHD_4K_21V9:Landroid/util/Size;

.field public static final UHD_4K_21V9_2:Landroid/util/Size;

.field public static final UHD_4K_21V9_3:Landroid/util/Size;

.field public static final UHD_4K_22V9:Landroid/util/Size;

.field public static final UHD_4K_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final UHD_5K:Landroid/util/Size;

.field public static final UHD_5K_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final UHD_6K:Landroid/util/Size;

.field public static final UHD_6K_21V9:Landroid/util/Size;

.field public static final UHD_6K_39V18:Landroid/util/Size;

.field public static final UHD_6K_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final UHD_8K:Landroid/util/Size;

.field public static final UHD_8K_20P5V9:Landroid/util/Size;

.field public static final UHD_8K_20V9:Landroid/util/Size;

.field public static final UHD_8K_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final VGA:Landroid/util/Size;

.field public static final VGA_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_RESOLUTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public mIsHevcSupported:Z

.field public final mVideoCaptureRate:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mVideoSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lcom/motorola/camera/VideoFormat;

    invoke-direct {v0}, Lcom/motorola/camera/VideoFormat;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    .line 2
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->VGA:Landroid/util/Size;

    .line 3
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x3c0

    const/16 v4, 0x21c

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v2, Lcom/motorola/camera/VideoFormat;->QHD:Landroid/util/Size;

    .line 4
    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    .line 5
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v5, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->HD_18V9:Landroid/util/Size;

    .line 6
    new-instance v1, Landroid/util/Size;

    const/16 v7, 0x25e

    invoke-direct {v1, v5, v7}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->HD_19V9:Landroid/util/Size;

    .line 7
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x24e

    invoke-direct {v7, v5, v8}, Landroid/util/Size;-><init>(II)V

    sput-object v7, Lcom/motorola/camera/VideoFormat;->HD_19P5V9:Landroid/util/Size;

    .line 8
    new-instance v8, Landroid/util/Size;

    const/16 v9, 0x240

    invoke-direct {v8, v5, v9}, Landroid/util/Size;-><init>(II)V

    sput-object v8, Lcom/motorola/camera/VideoFormat;->HD_20V9:Landroid/util/Size;

    .line 9
    new-instance v9, Landroid/util/Size;

    const/16 v10, 0x230

    invoke-direct {v9, v5, v10}, Landroid/util/Size;-><init>(II)V

    sput-object v9, Lcom/motorola/camera/VideoFormat;->HD_20P5V9:Landroid/util/Size;

    .line 10
    new-instance v10, Landroid/util/Size;

    const/16 v11, 0x232

    invoke-direct {v10, v5, v11}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->HD_20P5V9_2:Landroid/util/Size;

    .line 11
    new-instance v5, Landroid/util/Size;

    const/16 v11, 0x780

    const/16 v12, 0x438

    invoke-direct {v5, v11, v12}, Landroid/util/Size;-><init>(II)V

    sput-object v5, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    .line 12
    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v11, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v13, Lcom/motorola/camera/VideoFormat;->FHD_18V9:Landroid/util/Size;

    .line 13
    new-instance v3, Landroid/util/Size;

    const/16 v13, 0x390

    invoke-direct {v3, v11, v13}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->FHD_19V9:Landroid/util/Size;

    .line 14
    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x378

    invoke-direct {v13, v11, v14}, Landroid/util/Size;-><init>(II)V

    sput-object v13, Lcom/motorola/camera/VideoFormat;->FHD_19P5V9:Landroid/util/Size;

    .line 15
    new-instance v14, Landroid/util/Size;

    const/16 v15, 0x360

    invoke-direct {v14, v11, v15}, Landroid/util/Size;-><init>(II)V

    sput-object v14, Lcom/motorola/camera/VideoFormat;->FHD_20V9:Landroid/util/Size;

    .line 16
    new-instance v15, Landroid/util/Size;

    const/16 v12, 0x34a

    invoke-direct {v15, v11, v12}, Landroid/util/Size;-><init>(II)V

    sput-object v15, Lcom/motorola/camera/VideoFormat;->FHD_20P5V9:Landroid/util/Size;

    .line 17
    new-instance v12, Landroid/util/Size;

    move-object/from16 v17, v0

    const/16 v0, 0x330

    invoke-direct {v12, v11, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v12, Lcom/motorola/camera/VideoFormat;->FHD_21V9:Landroid/util/Size;

    .line 18
    new-instance v0, Landroid/util/Size;

    move-object/from16 v18, v2

    const/16 v2, 0x336

    invoke-direct {v0, v11, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->FHD_21V9_2:Landroid/util/Size;

    .line 19
    new-instance v2, Landroid/util/Size;

    move-object/from16 v19, v10

    const/16 v10, 0x310

    invoke-direct {v2, v11, v10}, Landroid/util/Size;-><init>(II)V

    sput-object v2, Lcom/motorola/camera/VideoFormat;->FHD_22V9:Landroid/util/Size;

    .line 20
    new-instance v10, Landroid/util/Size;

    move-object/from16 v20, v9

    const/16 v9, 0x438

    invoke-direct {v10, v9, v11}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    .line 21
    new-instance v10, Landroid/util/Size;

    const/16 v11, 0x870

    invoke-direct {v10, v11, v9}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->EQU_FHD:Landroid/util/Size;

    .line 22
    new-instance v9, Landroid/util/Size;

    const/16 v11, 0xf00

    move-object/from16 v22, v8

    const/16 v8, 0x780

    invoke-direct {v9, v11, v8}, Landroid/util/Size;-><init>(II)V

    sput-object v9, Lcom/motorola/camera/VideoFormat;->EQU_4K:Landroid/util/Size;

    .line 23
    new-instance v8, Landroid/util/Size;

    move-object/from16 v16, v7

    const/16 v7, 0x870

    invoke-direct {v8, v11, v7}, Landroid/util/Size;-><init>(II)V

    sput-object v8, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    .line 24
    new-instance v7, Landroid/util/Size;

    move-object/from16 v21, v1

    const/16 v1, 0x720

    invoke-direct {v7, v11, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v7, Lcom/motorola/camera/VideoFormat;->UHD_4K_19V9:Landroid/util/Size;

    .line 25
    new-instance v1, Landroid/util/Size;

    move-object/from16 v23, v6

    const/16 v6, 0x6f0

    invoke-direct {v1, v11, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->UHD_4K_19P5V9:Landroid/util/Size;

    .line 26
    new-instance v6, Landroid/util/Size;

    move-object/from16 v24, v4

    const/16 v4, 0x6c0

    invoke-direct {v6, v11, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9:Landroid/util/Size;

    .line 27
    new-instance v4, Landroid/util/Size;

    const/16 v11, 0xcc0

    move-object/from16 v26, v10

    const/16 v10, 0x5bc

    invoke-direct {v4, v11, v10}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9_2:Landroid/util/Size;

    .line 28
    new-instance v10, Landroid/util/Size;

    const/16 v11, 0x696

    move-object/from16 v27, v2

    const/16 v2, 0xf00

    invoke-direct {v10, v2, v11}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->UHD_4K_20P5V9:Landroid/util/Size;

    .line 29
    new-instance v11, Landroid/util/Size;

    move-object/from16 v25, v0

    const/16 v0, 0x660

    invoke-direct {v11, v2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object v11, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9:Landroid/util/Size;

    .line 30
    new-instance v0, Landroid/util/Size;

    move-object/from16 v28, v12

    const/16 v12, 0x66c

    invoke-direct {v0, v2, v12}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_2:Landroid/util/Size;

    .line 31
    new-instance v12, Landroid/util/Size;

    move-object/from16 v29, v15

    const/16 v15, 0x66e

    invoke-direct {v12, v2, v15}, Landroid/util/Size;-><init>(II)V

    sput-object v12, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_3:Landroid/util/Size;

    .line 32
    new-instance v15, Landroid/util/Size;

    move-object/from16 v30, v14

    const/16 v14, 0x622

    invoke-direct {v15, v2, v14}, Landroid/util/Size;-><init>(II)V

    sput-object v15, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9:Landroid/util/Size;

    .line 33
    new-instance v2, Landroid/util/Size;

    const/16 v14, 0x1400

    move-object/from16 v31, v13

    const/16 v13, 0xb40

    invoke-direct {v2, v14, v13}, Landroid/util/Size;-><init>(II)V

    sput-object v2, Lcom/motorola/camera/VideoFormat;->UHD_5K:Landroid/util/Size;

    .line 34
    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x1780

    move-object/from16 v32, v3

    const/16 v3, 0xd38

    invoke-direct {v13, v14, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v13, Lcom/motorola/camera/VideoFormat;->UHD_6K:Landroid/util/Size;

    .line 35
    new-instance v3, Landroid/util/Size;

    move-object/from16 v33, v5

    const/16 v5, 0xad8

    invoke-direct {v3, v14, v5}, Landroid/util/Size;-><init>(II)V

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_6K_39V18:Landroid/util/Size;

    .line 36
    new-instance v5, Landroid/util/Size;

    move-object/from16 v34, v10

    const/16 v10, 0xa12

    invoke-direct {v5, v14, v10}, Landroid/util/Size;-><init>(II)V

    sput-object v5, Lcom/motorola/camera/VideoFormat;->UHD_6K_21V9:Landroid/util/Size;

    .line 37
    new-instance v10, Landroid/util/Size;

    const/16 v14, 0x1e00

    move-object/from16 v35, v4

    const/16 v4, 0x10e0

    invoke-direct {v10, v14, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v10, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    .line 38
    new-instance v4, Landroid/util/Size;

    move-object/from16 v36, v6

    const/16 v6, 0xd80

    invoke-direct {v4, v14, v6}, Landroid/util/Size;-><init>(II)V

    sput-object v4, Lcom/motorola/camera/VideoFormat;->UHD_8K_20V9:Landroid/util/Size;

    .line 39
    new-instance v6, Landroid/util/Size;

    move-object/from16 v37, v1

    const/16 v1, 0xd2c

    invoke-direct {v6, v14, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v6, Lcom/motorola/camera/VideoFormat;->UHD_8K_20P5V9:Landroid/util/Size;

    .line 40
    new-instance v1, Landroid/util/Range;

    const/16 v14, 0x1e

    .line 41
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v1, v14, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v1, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    const/4 v1, 0x3

    new-array v14, v1, [Landroid/util/Size;

    const/16 v38, 0x0

    aput-object v10, v14, v38

    const/4 v10, 0x1

    aput-object v4, v14, v10

    const/4 v4, 0x2

    aput-object v6, v14, v4

    .line 42
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    new-array v14, v1, [Landroid/util/Size;

    aput-object v13, v14, v38

    aput-object v3, v14, v10

    aput-object v5, v14, v4

    .line 43
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    new-array v5, v10, [Landroid/util/Size;

    aput-object v2, v5, v38

    .line 44
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    const/16 v5, 0xb

    new-array v5, v5, [Landroid/util/Size;

    aput-object v8, v5, v38

    aput-object v11, v5, v10

    aput-object v0, v5, v4

    aput-object v12, v5, v1

    const/4 v0, 0x4

    aput-object v15, v5, v0

    const/4 v8, 0x5

    aput-object v9, v5, v8

    const/4 v9, 0x6

    aput-object v7, v5, v9

    const/4 v7, 0x7

    aput-object v37, v5, v7

    const/16 v11, 0x8

    aput-object v36, v5, v11

    const/16 v12, 0x9

    aput-object v35, v5, v12

    const/16 v13, 0xa

    aput-object v34, v5, v13

    .line 45
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    new-array v12, v12, [Landroid/util/Size;

    aput-object v33, v12, v38

    aput-object v32, v12, v10

    aput-object v31, v12, v4

    aput-object v30, v12, v1

    aput-object v29, v12, v0

    aput-object v28, v12, v8

    aput-object v25, v12, v9

    aput-object v27, v12, v7

    aput-object v26, v12, v11

    .line 46
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sput-object v12, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    new-array v13, v7, [Landroid/util/Size;

    aput-object v24, v13, v38

    aput-object v23, v13, v10

    aput-object v21, v13, v4

    aput-object v16, v13, v1

    aput-object v22, v13, v0

    aput-object v20, v13, v8

    aput-object v19, v13, v9

    .line 47
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    sput-object v13, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    new-array v14, v10, [Landroid/util/Size;

    aput-object v18, v14, v38

    .line 48
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/VideoFormat;->QHD_SIZES:Ljava/util/List;

    new-array v15, v10, [Landroid/util/Size;

    aput-object v17, v15, v38

    .line 49
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    sput-object v15, Lcom/motorola/camera/VideoFormat;->VGA_SIZES:Ljava/util/List;

    new-array v11, v11, [Ljava/util/List;

    aput-object v6, v11, v38

    aput-object v3, v11, v10

    aput-object v2, v11, v4

    aput-object v5, v11, v1

    aput-object v12, v11, v0

    aput-object v13, v11, v8

    aput-object v14, v11, v9

    aput-object v15, v11, v7

    .line 50
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/VideoFormat;->VIDEO_RESOLUTIONS:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/motorola/camera/VideoFormat$1;

    invoke-direct {v0}, Lcom/motorola/camera/VideoFormat$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoFormat;->SIZE_COMPARATOR:Lcom/motorola/camera/VideoFormat$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Range;

    invoke-direct {v3, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2
    invoke-direct {p0, v0, v3, v1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/util/Range;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 5
    new-instance p1, Landroid/util/Range;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p1, v0, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 6
    iput-boolean p3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "x"

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 10
    new-instance v0, Landroid/util/Size;

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 11
    sget-object p1, Lcom/motorola/camera/VideoFormat;->FPS_DEFAULT:Landroid/util/Range;

    iput-object p1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 12
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    goto/16 :goto_1

    .line 13
    :cond_0
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 14
    new-instance v0, Landroid/util/Size;

    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 15
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 16
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 17
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    goto/16 :goto_1

    .line 18
    :cond_1
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    const-string/jumbo v6, "true"

    if-ne v0, v5, :cond_4

    .line 19
    :try_start_1
    new-instance v0, Landroid/util/Size;

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 20
    aget-object v0, p1, v4

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, p1, v4

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    new-instance v0, Landroid/util/Range;

    aget-object v1, p1, v2

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 23
    iput-boolean v3, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 25
    new-instance v1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 26
    aget-object p1, p1, v4

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    goto :goto_1

    .line 27
    :cond_4
    array-length v0, p1

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    .line 28
    new-instance v0, Landroid/util/Size;

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 29
    new-instance v0, Landroid/util/Range;

    aget-object v1, p1, v2

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 31
    aget-object p1, p1, v5

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    :goto_1
    return-void

    .line 32
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/VideoFormat;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iget-object v2, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v2, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1, v2}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final getArea()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x56a

    mul-int/lit8 v0, v0, 0x2a

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2a

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/VideoFormat;->getArea()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 3
    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 4
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
