.class public final enum Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
.super Ljava/lang/Enum;
.source "ProgramUniform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UniformKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ALPHA_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum COLOR_FG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum RADII:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final enum Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

.field public static final mLookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v1, "TEXTURE"

    const/4 v2, 0x0

    const-string/jumbo v3, "u_Texture"

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v3, "OPACITY"

    const/4 v4, 0x1

    const-string/jumbo v5, "u_Opacity"

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 3
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v5, "OPACITY_BOTTOM"

    const/4 v6, 0x2

    const-string/jumbo v7, "u_OpacityBottom"

    invoke-direct {v3, v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 4
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v7, "OPACITY_FROM"

    const/4 v8, 0x3

    const-string/jumbo v9, "u_OpacityFrom"

    invoke-direct {v5, v7, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 5
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v9, "OPACITY_TO"

    const/4 v10, 0x4

    const-string/jumbo v11, "u_OpacityTo"

    invoke-direct {v7, v9, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 6
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v11, "OPACITY_FROM2"

    const/4 v12, 0x5

    const-string/jumbo v13, "u_OpacityFrom2"

    invoke-direct {v9, v11, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 7
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v13, "OPACITY_TO2"

    const/4 v14, 0x6

    const-string/jumbo v15, "u_OpacityTo2"

    invoke-direct {v11, v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 8
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "MVP_MATRIX"

    const/4 v14, 0x7

    const-string/jumbo v12, "u_MVPMatrix"

    invoke-direct {v13, v15, v14, v12}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 9
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "SPHERE_MVP_MATRIX"

    const/16 v14, 0x8

    const-string/jumbo v10, "u_SphereMVPMatrix"

    invoke-direct {v12, v15, v14, v10}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "ST_MATRIX"

    const/16 v14, 0x9

    const-string/jumbo v8, "u_STMatrix"

    invoke-direct {v10, v15, v14, v8}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 11
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "ALPHA"

    const/16 v14, 0xa

    const-string/jumbo v6, "u_Alpha"

    invoke-direct {v8, v15, v14, v6}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 12
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "COLOR"

    const/16 v14, 0xb

    const-string/jumbo v4, "u_Color"

    invoke-direct {v6, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 13
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "Y_TEXTURE"

    const/16 v14, 0xc

    const-string/jumbo v2, "u_Y_texture"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 14
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "UV_TEXTURE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string/jumbo v4, "u_UV_texture"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 15
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "DIAGONAL"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string/jumbo v2, "u_Diagonal"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 16
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "INVERT"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string/jumbo v4, "u_Invert"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 17
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "FACTOR"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string/jumbo v2, "u_Factor"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 18
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "COLOR_FG"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string/jumbo v4, "u_ColorForeground"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_FG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 19
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "COLOR_BG"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string/jumbo v2, "u_ColorBackground"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR_BG:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 20
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "RADIUS"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string/jumbo v4, "u_Radius"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 21
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "RADII"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string/jumbo v2, "u_Radii"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADII:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 22
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "ANGLES"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string/jumbo v4, "u_Angles"

    invoke-direct {v2, v15, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ANGLES:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 23
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v15, "SIZE"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string/jumbo v2, "u_Size"

    invoke-direct {v4, v15, v14, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 24
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "MIDDLE_SIZE"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string/jumbo v4, "u_MiddleSize"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 25
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "HOLLOW_SIZE"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string/jumbo v2, "u_HollowSize"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 26
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "HOLLOW_TOP"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string/jumbo v4, "u_HollowTop"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 27
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "TOP_GUIDE"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string/jumbo v2, "u_TopGuide"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 28
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "BOTTOM_GUIDE"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string/jumbo v4, "u_BottomGuide"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "MASK"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string/jumbo v2, "u_Mask"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 30
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "COLOR_CHANGE"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const-string/jumbo v4, "u_ColorChange"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "SHAPE_CHANGE"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const-string/jumbo v2, "u_ShapeChange"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 32
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "ALPHA_CHANGE"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const-string/jumbo v4, "u_AlphaChange"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 33
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "EXCLUSION_RECT"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const-string/jumbo v2, "u_ExclusionRect"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "DASH"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const-string/jumbo v4, "u_Dash"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DASH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 35
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "LINE_WIDTH"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const-string/jumbo v2, "u_LineWidth"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->LINE_WIDTH:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 36
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "DIRECTION"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const-string/jumbo v4, "u_Direction"

    invoke-direct {v2, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 37
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const-string v14, "DARKNESS"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const-string/jumbo v2, "u_Darkness"

    invoke-direct {v4, v14, v15, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/16 v2, 0x25

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v4, v2, v0

    .line 38
    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v0

    array-length v1, v0

    move v2, v14

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    .line 41
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    return-object v0
.end method
