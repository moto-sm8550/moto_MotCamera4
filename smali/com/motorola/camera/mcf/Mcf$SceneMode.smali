.class public final enum Lcom/motorola/camera/mcf/Mcf$SceneMode;
.super Ljava/lang/Enum;
.source "Mcf.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static final enum TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field private static sCachedIsBgService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AfMU7Q-92FVXJNMKWGojcbIlWKk(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->lambda$isBgService$0(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hhaMHA6D6eRl-8IK2av3ohyw7Bc(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->lambda$maxNumberOfRequiredFrames$1(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v5, "HDR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v7, "FLASH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v9, "LOW_LIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v9, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v11, "AUTO_CAPTURE_ON_SCENE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v13, "DEPTH_RENDER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 2
    new-instance v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v15, "SUPER_RESOLUTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v14, "FAST_NORMAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v12, "SF_BOKEH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v12, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v10, "SUPER_NIGHT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v10, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v8, "TEST_BLUR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/mcf/Mcf$SceneMode;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 3
    new-instance v8, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HAL_FRAME_STACK"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v4, "SUPER_PORTRAIT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v2, "HDR_ADVANCED"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HDR_BOKEH"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v4, "HDR_NO_ADRC"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 4
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v2, "HAL_FRAME_STACK_FLASH"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "LOW_LIGHT_SF_BOKEH"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v4, "SUPER_REMOSAIC"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v2, "SUPER_REMOSAIC_HDR"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 5
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "MULTI_FRAME_BOKEH"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v4, "HAL_FRAME_STACK_AILS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v4, "DISPLAY_FLASH"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HDR_ADVANCED_AILS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 6
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HAL_FRAME_STACK_SF_BOKEH"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HAL_FRAME_STACK_AIIST"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "HDR_ADVANCED_AIIST"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "RAW_SUPER_NIGHT"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 7
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "RAW_SUPER_NIGHT_DEDICATED"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "JG_SUPER_NIGHT_AUTO"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "JG_SUPER_NIGHT_DEDICATED"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 8
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "AS_SUPER_NIGHT_AUTO"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v6, "SUPER_RESOLUTION_HDR"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/16 v4, 0x22

    new-array v4, v4, [Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

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

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    .line 9
    sput-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 10
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedIsBgService:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;

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

.method public static synthetic access$1300(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    return-object p0
.end method

.method public static getSceneMode(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isBgService$0(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->access$700(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$maxNumberOfRequiredFrames$1(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->access$600(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    packed-switch p0, :pswitch_data_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown SceneMode input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3
    :pswitch_0
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 6
    :pswitch_3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 7
    :pswitch_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 8
    :pswitch_5
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 9
    :pswitch_6
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto/16 :goto_0

    .line 10
    :pswitch_7
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 11
    :pswitch_8
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 12
    :pswitch_9
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 13
    :pswitch_a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 14
    :pswitch_b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 15
    :pswitch_c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 16
    :pswitch_d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 17
    :pswitch_e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 18
    :pswitch_f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 19
    :pswitch_10
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 20
    :pswitch_11
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 21
    :pswitch_12
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 22
    :pswitch_13
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 23
    :pswitch_14
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 24
    :pswitch_15
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 25
    :pswitch_16
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 26
    :pswitch_17
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 27
    :pswitch_18
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 28
    :pswitch_19
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 29
    :pswitch_1a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 30
    :pswitch_1b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 31
    :pswitch_1c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AUTO_CAPTURE_ON_SCENE:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 32
    :pswitch_1d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 33
    :pswitch_1e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 34
    :pswitch_1f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 35
    :pswitch_20
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_0
    :pswitch_21
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0
.end method


# virtual methods
.method public isASAutoSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppBasedFrameStacking()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperRemosaic()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAutoNV()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBgService()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedIsBgService:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda0;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokeh()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDisplayFlash()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEarlyShutterScene()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRegularHdr()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSR()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFlash()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFlashable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFocusLockNeeded()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result p0

    return p0
.end method

.method public isHdr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isJGNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isJGSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMcfLowLightFrameStack()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMfnr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNormal()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRawNightVisionDedicated()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRawSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRegularHdr()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSR()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperNight()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->AS_SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperNightMode()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->JG_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuperRemosaic()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public maxNumberOfRequiredFrames()I
    .locals 2

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->sCachedMaxNumberOfRequiredFrames:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$SceneMode$$ExternalSyntheticLambda1;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
