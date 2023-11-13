.class public final enum Lcom/motorola/camera/mcf/Mcf$InstanceType;
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
    name = "InstanceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$InstanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum AL_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum AL_SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum AUTO_CAPTURE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum BASIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum BEST_SHOT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum BLINK_AVOIDANCE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum DEFAULT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum ENHANCE_NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum FALL_BACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum FLASH_REC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum HDR_SCBOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum JG_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum LOW_LIGHT_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SF_DEPTH_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SLSI_SR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public static final enum ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 47

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v1, "UNUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v7, "HDR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v9, "FLASH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v9, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v11, "LOW_LIGHT_FRAME_STACK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 2
    new-instance v11, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v13, "BEST_SHOT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BEST_SHOT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v13, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v15, "DEPTH_RENDER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v15, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v14, "FLASH_REC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FLASH_REC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v14, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v12, "ENHANCE_NORMAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ENHANCE_NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 3
    new-instance v12, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v10, "NORMAL_ONDEMAND"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v8, "SUPER_RESOLUTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SF_BOKEH"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v4, "DISPLAY_FLASH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v2, "ZSL_DEPTH_RENDER"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 4
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "AUTO_CAPTURE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v4, "SLSI_SR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SLSI_SR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v2, "SUPER_NIGHT"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SF_DEPTH"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v4, "TEST_BLUR"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v2, "BLINK_AVOIDANCE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BLINK_AVOIDANCE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 5
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HAL_FRAME_STACK"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v4, "BASIC"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BASIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v4, "SUPER_PORTRAIT"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_ADVANCED"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_BOKEH"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 6
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_NO_ADRC"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HAL_FRAME_STACK_FLASH"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "FALL_BACK"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_SCBOKEH"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_SCBOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "LOW_LIGHT_SF_BOKEH"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 7
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SUPER_REMOSAIC"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SUPER_REMOSAIC_HDR"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "MULTI_FRAME_BOKEH"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HAL_FRAME_STACK_AILS"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 8
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "AL_SUPER_RESOLUTION"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_ADVANCED_AILS"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HAL_FRAME_STACK_SF_BOKEH"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 9
    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HAL_FRAME_STACK_AIIST"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "HDR_ADVANCED_AIIST"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "RAW_SUPER_NIGHT"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "JG_SUPER_NIGHT"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->JG_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SF_DEPTH_HDR"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 10
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "SUPER_NIGHT_AUTO"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const-string v6, "AL_SUPER_RESOLUTION_HDR"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/mcf/Mcf$InstanceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const/16 v2, 0x2d

    new-array v2, v2, [Lcom/motorola/camera/mcf/Mcf$InstanceType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v41, v2, v0

    const/16 v0, 0x27

    aput-object v42, v2, v0

    const/16 v0, 0x28

    aput-object v43, v2, v0

    const/16 v0, 0x29

    aput-object v44, v2, v0

    const/16 v0, 0x2a

    aput-object v45, v2, v0

    const/16 v0, 0x2b

    aput-object v46, v2, v0

    const/16 v0, 0x2c

    aput-object v4, v2, v0

    .line 11
    sput-object v2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$InstanceType;

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

.method public static toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$InstanceType;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    packed-switch p0, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown InstanceType input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3
    :pswitch_1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 4
    :pswitch_2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_NIGHT_AUTO:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 5
    :pswitch_3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 6
    :pswitch_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->JG_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 7
    :pswitch_5
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->RAW_SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 8
    :pswitch_6
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 9
    :pswitch_7
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 10
    :pswitch_8
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 11
    :pswitch_9
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 12
    :pswitch_a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AL_SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 13
    :pswitch_b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 14
    :pswitch_c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 15
    :pswitch_d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_REMOSAIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 16
    :pswitch_e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 17
    :pswitch_f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_SCBOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 18
    :pswitch_10
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 19
    :pswitch_11
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 20
    :pswitch_12
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_NO_ADRC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_0

    .line 21
    :pswitch_13
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 22
    :pswitch_14
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR_ADVANCED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 23
    :pswitch_15
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_PORTRAIT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 24
    :pswitch_16
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BASIC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 25
    :pswitch_17
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 26
    :pswitch_18
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BLINK_AVOIDANCE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 27
    :pswitch_19
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->TEST_BLUR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 28
    :pswitch_1a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 29
    :pswitch_1b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_NIGHT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 30
    :pswitch_1c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SLSI_SR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 31
    :pswitch_1d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->AUTO_CAPTURE:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 32
    :pswitch_1e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ZSL_DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 33
    :pswitch_1f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 34
    :pswitch_20
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 35
    :pswitch_21
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 36
    :pswitch_22
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL_ONDEMAND:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 37
    :pswitch_23
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->ENHANCE_NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 38
    :pswitch_24
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FLASH_REC:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 39
    :pswitch_25
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 40
    :pswitch_26
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->BEST_SHOT:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 41
    :pswitch_27
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 42
    :pswitch_28
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->LOW_LIGHT_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 43
    :pswitch_29
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 44
    :pswitch_2a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 45
    :pswitch_2b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->NORMAL:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto :goto_0

    .line 46
    :pswitch_2c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    :goto_0
    :pswitch_2d
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$InstanceType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$InstanceType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$InstanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-object v0
.end method


# virtual methods
.method public isAppResponsibleForSettingMfnrTags()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AILS:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_AIIST:Lcom/motorola/camera/mcf/Mcf$InstanceType;

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

.method public isDepthCaptureInstance()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$14;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isFlash()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$InstanceType;->HAL_FRAME_STACK_FLASH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

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
