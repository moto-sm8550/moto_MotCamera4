.class public final enum Lcom/motorola/camera/CameraKpi$KPI;
.super Ljava/lang/Enum;
.source "CameraKpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/CameraKpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/CameraKpi$KPI;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum AUTO_EXPOSURE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_READY:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum CREATE_SURFACE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum GET_MEDIA_DATA:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_PICTURE_CALLBACK_JPEG:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum HAL_SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MR_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MR_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MR_START:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MR_STOP:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MULTI_SHOT_AVG:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MULTI_SHOT_COUNT:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum ON_START:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum PANORAMA_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum RESUME_TO_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_MCF_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_MCF_PROCESS:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum START_WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum UI_START:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

.field public static final enum WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;


# direct methods
.method public static constructor <clinit>()V
    .locals 72

    .line 1
    new-instance v0, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v1, "AWB_AE_CONVERGENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v1, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v3, "AUTO_EXPOSURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_EXPOSURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 3
    new-instance v3, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v5, "AUTO_FOCUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 4
    new-instance v5, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v7, "BLUR_CHECKIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v7, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v9, "CAMERA_OPEN_TASK_RUNTIME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v11, "CAMERA_RECEIVER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    .line 7
    new-instance v11, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v13, "CAMERA_READY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_READY:Lcom/motorola/camera/CameraKpi$KPI;

    .line 8
    new-instance v13, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v15, "CAPTURE_WAIT_ON_SAVE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 9
    new-instance v15, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v14, "CREATE_SURFACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/CameraKpi$KPI;->CREATE_SURFACE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 10
    new-instance v14, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v12, "CREATE_SESSION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/CameraKpi$KPI;->CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    .line 11
    new-instance v12, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v10, "GET_MEDIA_DATA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/CameraKpi$KPI;->GET_MEDIA_DATA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 12
    new-instance v10, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v8, "HAL_FOCUS_CALLBACK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 13
    new-instance v8, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "HAL_GET_PARAMS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 14
    new-instance v6, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "HAL_PICTURE_CALLBACK_JPEG"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/CameraKpi$KPI;->HAL_PICTURE_CALLBACK_JPEG:Lcom/motorola/camera/CameraKpi$KPI;

    .line 15
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v2, "HAL_PICTURE_CALLBACK_POST_VIEW"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "HAL_PICTURE_CALLBACK_RAW"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v6, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "HAL_OPEN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 18
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v2, "HAL_OPEN_CAMERA"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->HAL_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 19
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "HAL_CREATE_SESSION"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    .line 20
    new-instance v6, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "HAL_SET_REPEATING"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING:Lcom/motorola/camera/CameraKpi$KPI;

    .line 21
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v2, "HAL_SET_REPEATING_TO_FIRST_FRAME"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SET_REPEATING_TO_FIRST_FRAME:Lcom/motorola/camera/CameraKpi$KPI;

    .line 22
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "HAL_RELEASE"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 23
    new-instance v6, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "HAL_SET_PARAMS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 24
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v4, "HAL_SHUTTER_CALLBACK"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_SHUTTER_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    .line 25
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MR_PREPARE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MR_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 26
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MR_START"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MR_START:Lcom/motorola/camera/CameraKpi$KPI;

    .line 27
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MR_STOP"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MR_STOP:Lcom/motorola/camera/CameraKpi$KPI;

    .line 28
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MR_RELEASE"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MR_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 29
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MULTI_SHOT_TO_SHOT"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

    .line 30
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MULTI_SHOT_AVG"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_AVG:Lcom/motorola/camera/CameraKpi$KPI;

    .line 31
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "MULTI_SHOT_COUNT"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_COUNT:Lcom/motorola/camera/CameraKpi$KPI;

    .line 32
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "ON_CREATE"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 33
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "ON_PAUSE"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 34
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "ON_RESUME"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    .line 35
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "ON_START"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->ON_START:Lcom/motorola/camera/CameraKpi$KPI;

    .line 36
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "OPEN_CAMERA"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 37
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "PANORAMA_SAVE"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->PANORAMA_SAVE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 38
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "VIDEO_COMPLETION"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    .line 39
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SAVE_IMAGE_DB"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 40
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SAVE_IMAGE_FILE"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 41
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SET_PREVIEW_DISPLAY"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 42
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SET_CONTENT_VIEW"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

    .line 43
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_APP_BG_JOB_PREPARE"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 44
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_JPEG_REQUEST"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

    .line 45
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_MCF_BG_JOB_PREPARE"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_MCF_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 46
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_MCF_PROCESS"

    move-object/from16 v47, v4

    const/16 v4, 0x2d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_MCF_PROCESS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 47
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_YUV_CAPTURE"

    move-object/from16 v48, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 48
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_O"

    move-object/from16 v49, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 49
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHOT_TO_SHOT_UI_O"

    move-object/from16 v50, v2

    const/16 v2, 0x30

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 50
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHUTTER_LAG_O"

    move-object/from16 v51, v4

    const/16 v4, 0x31

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 51
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHUTTER_TO_ON_DEMAND_REQUEST_LAG"

    move-object/from16 v52, v2

    const/16 v2, 0x32

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 52
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "SHUTTER_TO_MCF_LAG"

    move-object/from16 v53, v4

    const/16 v4, 0x33

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 53
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "START_PREVIEW"

    move-object/from16 v54, v2

    const/16 v2, 0x34

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 54
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "START_TO_HAL_OPEN"

    move-object/from16 v55, v4

    const/16 v4, 0x35

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    .line 55
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "START_WAIT_FOR_RESUME_ACTIVITY"

    move-object/from16 v56, v2

    const/16 v2, 0x36

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->START_WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/CameraKpi$KPI;

    .line 56
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "STARTUP_PREVIEW_FRAME_O"

    move-object/from16 v57, v4

    const/16 v4, 0x37

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 57
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "RESUME_TO_OPEN_CAMERA"

    move-object/from16 v58, v2

    const/16 v2, 0x38

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->RESUME_TO_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    .line 58
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TAP_FOCUS_O"

    move-object/from16 v59, v4

    const/16 v4, 0x39

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    .line 59
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TAP_TO_TAKE_PICTURE"

    move-object/from16 v60, v2

    const/16 v2, 0x3a

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

    .line 60
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOGGLE_CAMERA_O"

    move-object/from16 v61, v4

    const/16 v4, 0x3b

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 61
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOGGLE_CAMERA_TOTAL"

    move-object/from16 v62, v2

    const/16 v2, 0x3c

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    .line 62
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOGGLE_MODE_O"

    move-object/from16 v63, v4

    const/16 v4, 0x3d

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 63
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOTAL_CAPTURE_TIME_O"

    move-object/from16 v64, v2

    const/16 v2, 0x3e

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 64
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOTAL_COLD_O"

    move-object/from16 v65, v4

    const/16 v4, 0x3f

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 65
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOTAL_STARTUP_O"

    move-object/from16 v66, v2

    const/16 v2, 0x40

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 66
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOTAL_STARTUP_W_CAF_O"

    move-object/from16 v67, v4

    const/16 v4, 0x41

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 67
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "TOUCH_FOCUS"

    move-object/from16 v68, v2

    const/16 v2, 0x42

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    .line 68
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "UI_SHOW"

    move-object/from16 v69, v4

    const/16 v4, 0x43

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    .line 69
    new-instance v4, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "UI_START"

    move-object/from16 v70, v2

    const/16 v2, 0x44

    invoke-direct {v4, v6, v2}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->UI_START:Lcom/motorola/camera/CameraKpi$KPI;

    .line 70
    new-instance v2, Lcom/motorola/camera/CameraKpi$KPI;

    const-string v6, "WAIT_MOTION_VIDEO"

    move-object/from16 v71, v4

    const/16 v4, 0x45

    invoke-direct {v2, v6, v4}, Lcom/motorola/camera/CameraKpi$KPI;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    const/16 v4, 0x46

    new-array v4, v4, [Lcom/motorola/camera/CameraKpi$KPI;

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

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v40, v4, v0

    const/16 v0, 0x26

    aput-object v41, v4, v0

    const/16 v0, 0x27

    aput-object v42, v4, v0

    const/16 v0, 0x28

    aput-object v43, v4, v0

    const/16 v0, 0x29

    aput-object v44, v4, v0

    const/16 v0, 0x2a

    aput-object v45, v4, v0

    const/16 v0, 0x2b

    aput-object v46, v4, v0

    const/16 v0, 0x2c

    aput-object v47, v4, v0

    const/16 v0, 0x2d

    aput-object v48, v4, v0

    const/16 v0, 0x2e

    aput-object v49, v4, v0

    const/16 v0, 0x2f

    aput-object v50, v4, v0

    const/16 v0, 0x30

    aput-object v51, v4, v0

    const/16 v0, 0x31

    aput-object v52, v4, v0

    const/16 v0, 0x32

    aput-object v53, v4, v0

    const/16 v0, 0x33

    aput-object v54, v4, v0

    const/16 v0, 0x34

    aput-object v55, v4, v0

    const/16 v0, 0x35

    aput-object v56, v4, v0

    const/16 v0, 0x36

    aput-object v57, v4, v0

    const/16 v0, 0x37

    aput-object v58, v4, v0

    const/16 v0, 0x38

    aput-object v59, v4, v0

    const/16 v0, 0x39

    aput-object v60, v4, v0

    const/16 v0, 0x3a

    aput-object v61, v4, v0

    const/16 v0, 0x3b

    aput-object v62, v4, v0

    const/16 v0, 0x3c

    aput-object v63, v4, v0

    const/16 v0, 0x3d

    aput-object v64, v4, v0

    const/16 v0, 0x3e

    aput-object v65, v4, v0

    const/16 v0, 0x3f

    aput-object v66, v4, v0

    const/16 v0, 0x40

    aput-object v67, v4, v0

    const/16 v0, 0x41

    aput-object v68, v4, v0

    const/16 v0, 0x42

    aput-object v69, v4, v0

    const/16 v0, 0x43

    aput-object v70, v4, v0

    const/16 v0, 0x44

    aput-object v71, v4, v0

    const/16 v0, 0x45

    aput-object v2, v4, v0

    .line 71
    sput-object v4, Lcom/motorola/camera/CameraKpi$KPI;->$VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/CameraKpi$KPI;
    .locals 1

    const-class v0, Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraKpi$KPI;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/CameraKpi$KPI;
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->$VALUES:[Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0}, [Lcom/motorola/camera/CameraKpi$KPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/CameraKpi$KPI;

    return-object v0
.end method
