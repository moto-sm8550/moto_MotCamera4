.class public Lcom/motorola/camera/mcf/Mcf;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;,
        Lcom/motorola/camera/mcf/Mcf$OnControlListener;,
        Lcom/motorola/camera/mcf/Mcf$RateControl;,
        Lcom/motorola/camera/mcf/Mcf$CapKey;,
        Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;,
        Lcom/motorola/camera/mcf/Mcf$InstanceType;,
        Lcom/motorola/camera/mcf/Mcf$SceneMode;,
        Lcom/motorola/camera/mcf/Mcf$ProgressType;,
        Lcom/motorola/camera/mcf/Mcf$ShotSlot;,
        Lcom/motorola/camera/mcf/Mcf$FrameTarget;,
        Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;,
        Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;,
        Lcom/motorola/camera/mcf/Mcf$LazyLoader;,
        Lcom/motorola/camera/mcf/Mcf$StateHolder;
    }
.end annotation


# static fields
.field public static final APP_UWDC_PROCESS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final AUXILIARY_DATA_FULL_FRAME_CALLBACK:I = 0x4

.field private static final AUXILIARY_DATA_NOTIFY_CALLBACK:I = 0x3

.field public static final AVAILABLE_AI_SCENE_DETECT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ARCSOFT_AI_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AUTO_CAPTURE_GESTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AUTO_CAPTURE_SMILE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_LIMIT_FPS_NEED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BOKEH_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_CUD_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_CURRENT_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_HW_REV:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_RECOMMENDED_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DUALSTREAM_DEPTH_RENDER_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_SCBOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_IMAGE_REFINER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MCF_BEST_SHOT_VIDEO_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LUT_FILES_IDS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MOT_CUD_PREVIEW_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MOT_IMAGE_STABILIZATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MOT_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MOT_LOW_LIGHT_SELFIE_PREVIEW_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MOT_SCAN_AUTO_CAPTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MULTI_FRAME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_REALTIME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SELECTIVE_COLOR_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SMART_MODE_SUGGESTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SUPERNIGHT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SUPERPORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_YUV_NIGHT_VISION_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final CALLBACK:I = 0x4

.field public static final CAP_CURRENT_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MIN_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MIN_HW_REV_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MODE_AUTO:I = 0x2

.field public static final CAP_MODE_OFF:I = 0x0

.field public static final CAP_MODE_ON:I = 0x1

.field public static final CAP_RAM_SIZE_SUPPORT_DUALSTREAMING_DEPTH:I = 0x0

.field public static final CAP_RECOMMENDED_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_SUPER_RESOLUTION_ENABLE:I = 0x0

.field public static final DEBUG:Z = false

.field public static final DEDICATED_NV_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final DETECT_LONG_WAIT:Z = false

.field public static final DISPLAY_FLASH_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final FULL_FRAME_CONFIG_CONTROL_CALLBACK:I = 0x1

.field private static final FULL_FRAME_REQUEST_FULL_FRAME_CALLBACK:I = 0x2

.field public static final HAL_ZSL_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final JPEG_FULL_FRAME_CALLBACK:I = 0x5

.field private static final JSON_FULL_FRAME_CALLBACK:I = 0x7

.field private static final LONG_WAIT_THRESHOLD:J = 0x1L

.field public static final LOW_LIGHT_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_SERVICE:Ljava/lang/String; = "McfService"

.field public static final MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MCF_SF_BOKEH_TOUCHROI_ENABLE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final MCF_STREAM_COUNT_MAX:I = 0x5

.field public static final ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final Milis2Nanos:J = 0xf4240L

.field private static OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final PROGRESS_INDICATION_FULL_FRAME_CALLBACK:I = 0x3

.field public static final RAW_NV_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_OPERATE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final REPROCESS_REQUEST_FULL_FRAME_CALLBACK:I = 0x1

.field private static final SCENE_MODE_NOTIFY_CALLBACK:I = 0x1

.field private static final SCENE_PROPERTIES_NOTIFY_CALLBACK:I = 0x2

.field public static final SENSOR_NAME_POSTFIX_FOR_CLI:Ljava/lang/String; = "_cli"

.field public static final SUPER_RESOLUTION_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SUPER_RESOLUTION_MODE_NEED_ENR_ON_PREVIEW:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mcf"

.field private static final TRANSFER_TO_JMS_FULL_FRAME_CALLBACK:I = 0x6

.field public static final VERBOSE:Z = false

.field private static mHandler:Landroid/os/Handler; = null

.field private static mHandlerThread:Landroid/os/HandlerThread; = null

.field private static mNativeContext:J = 0x0L

.field private static mStreamId:I = 0x1

.field private static platformName:Ljava/lang/String; = null

.field private static volatile sIsAeMetadataUsable:Z = true

.field private static sTimebaseDeltaNs:J


# instance fields
.field private mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

.field private mControlListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mControlListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mControlListenerLock:Ljava/lang/Object;

.field private final mControlLock:Ljava/lang/Object;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFullFrameListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullFrameListenerLock:Ljava/lang/Object;

.field private mIsInputStreamReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreviewReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsReprocessOpen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataReadyLock:Ljava/lang/Object;

.field private mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

.field private mNotifyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyListenerLock:Ljava/lang/Object;

.field private final mNotifyLock:Ljava/lang/Object;

.field private final mPreviewLock:Ljava/lang/Object;

.field private final mReprocessLock:Ljava/lang/Object;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;


# direct methods
.method public static synthetic $r8$lambda$4OLCw5Gpeom7jKPBBcsAwiHrU4o()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->doStop()V

    return-void
.end method

.method public static synthetic $r8$lambda$9xt4zPzn7VAZRH5SxDE_t0DEMWU(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H_tQLwGN7x5XWv_Z2tL1qO7SxEQ(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$init$1(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NoI5kRW8wAUxmof6zipOuDt0Yf4()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->lambda$doStop$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$b28UpXe2lafVaTLvQVzKI2GhKYg(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/Mcf;->lambda$start$2(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQhI4y0I8UamGb0TpDgfWotTAXE(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$doStart$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xIupuQUTqQxuXiSVYOE9eUefSmg()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->doDeinit()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, [Ljava/lang/String;

    const-class v1, [I

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 3
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x2

    .line 4
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_REALTIME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 5
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x5

    .line 6
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 7
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x6

    .line 8
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 9
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xd

    .line 10
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 11
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xe

    .line 12
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 13
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xf

    .line 14
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_OPERATE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 15
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x26

    .line 16
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 17
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x27

    .line 18
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 19
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x28

    .line 20
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 21
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x29

    .line 22
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 23
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2a

    .line 24
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 25
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2b

    .line 26
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 27
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x40

    .line 28
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 29
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x42

    .line 30
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_TOUCHROI_ENABLE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 31
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 33
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x17

    .line 34
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BOKEH_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 35
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x14

    .line 36
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 37
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x15

    .line 38
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_YUV_NIGHT_VISION_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 39
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x16

    .line 40
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->DEDICATED_NV_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 41
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x3

    .line 42
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_LIMIT_FPS_NEED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 43
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x4

    .line 44
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 45
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x10

    .line 46
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SELECTIVE_COLOR_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 47
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x11

    .line 48
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MCF_BEST_SHOT_VIDEO_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 49
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x8

    .line 50
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_HW_REV:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 51
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x9

    .line 52
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 53
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xa

    .line 54
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_RECOMMENDED_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 55
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xb

    .line 56
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_CURRENT_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 57
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xc

    .line 58
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DUALSTREAM_DEPTH_RENDER_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 59
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x7

    .line 60
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 61
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x12

    .line 62
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 63
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x13

    .line 64
    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 65
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x18

    .line 66
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_SMILE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 67
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1c

    .line 68
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_GESTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 69
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x24

    .line 70
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 71
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x19

    .line 72
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 73
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1a

    .line 74
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 75
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1b

    .line 76
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 77
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2e

    .line 78
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 79
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2f

    .line 80
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 81
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x33

    .line 82
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->HAL_ZSL_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 83
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x3f

    .line 84
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->RAW_NV_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 85
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x41

    .line 86
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 87
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1d

    .line 88
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SUPERNIGHT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 89
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2c

    .line 90
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SUPERPORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 91
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2d

    .line 92
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_SCBOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 93
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x32

    .line 94
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MULTI_FRAME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 95
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1e

    .line 96
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AI_SCENE_DETECT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 97
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x25

    .line 98
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SMART_MODE_SUGGESTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 99
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x1f

    .line 100
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->LOW_LIGHT_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 101
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x20

    .line 102
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->DISPLAY_FLASH_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 103
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x21

    .line 104
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 105
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x22

    .line 106
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_ENR_ON_PREVIEW:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 107
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x23

    .line 108
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_IMAGE_REFINER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 109
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x30

    .line 110
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 111
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x31

    .line 112
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ARCSOFT_AI_LOW_LIGHT_SELFIE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 113
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x34

    .line 114
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_LOW_LIGHT_SELFIE_PREVIEW_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 115
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x35

    .line 116
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_IMAGE_STABILIZATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 117
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x36

    .line 118
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_SCAN_AUTO_CAPTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 119
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x37

    .line 120
    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 121
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 122
    const-class v3, Ljava/lang/String;

    const/16 v4, 0x38

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 123
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x39

    .line 124
    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 125
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x3a

    .line 126
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_IDS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 127
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x3b

    .line 128
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 129
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x3c

    .line 130
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 131
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x3d

    .line 132
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_CUD_PREVIEW_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 133
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x3e

    .line 134
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_CUD_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 135
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x43

    .line 136
    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->APP_UWDC_PROCESS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 137
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/Mcf$StateHolder;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    .line 5
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$1;-><init>(Lcom/motorola/camera/mcf/Mcf;)V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/motorola/camera/mcf/McfPreview;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfPreview;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    .line 11
    new-instance v0, Lcom/motorola/camera/mcf/McfPreview;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfPreview;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/mcf/Mcf$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf;-><init>()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/motorola/camera/mcf/Mcf;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$300()J
    .locals 2

    sget-wide v0, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    return-wide v0
.end method

.method public static synthetic access$400(IJ[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/Mcf;->native_sensor_event(IJ[F)V

    return-void
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$600(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->maxNumberOfFramesRequired(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->isSceneBgService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800()Lcom/motorola/camera/mcf/Mcf;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$900(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object p0

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->native_preview_close(I)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    .line 11
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    .line 12
    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    .line 13
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    .line 14
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static closeReprocess(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->native_reprocess_close(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_0
    sget v3, Lcom/motorola/camera/mcf/Mcf;->mStreamId:I

    add-int/lit8 v0, v3, 0x1

    sput v0, Lcom/motorola/camera/mcf/Mcf;->mStreamId:I

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    move v1, p2

    if-lt v1, v0, :cond_0

    move/from16 v7, p3

    if-lt v7, v0, :cond_0

    .line 4
    new-instance v0, Lcom/motorola/camera/mcf/McfInputStream;

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/mcf/McfInputStream;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image dimensions must be valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static deinit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    .line 6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda5;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot deinit while started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf mFullFrameListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v1

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-nez v0, :cond_1

    .line 7
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf OnFullFrameListener reference returned null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v1

    return-object v2

    .line 9
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;

    move-result-object p0

    .line 10
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static doDeinit()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_deinit()V

    return-void
.end method

.method private static doInitByHighPriority(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 8

    :try_start_0
    const-string v0, "mcf-jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->getPlatform()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->getConfiguration()[B

    move-result-object v2

    .line 5
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->getTuningConfiguration()[B

    move-result-object v3

    .line 6
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->getDebugLogDDMask()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6, v5, v7, v0}, Lcom/motorola/camera/mcf/Mcf;->native_construct(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    array-length v5, v2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 11
    invoke-static {v1, v2, v3, v4, v0}, Lcom/motorola/camera/mcf/Mcf;->native_init(Ljava/lang/String;[B[BILjava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;->releaseConfig()V

    .line 13
    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->platformName:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Static configuration has an invalid length "

    .line 15
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "Could not load libmcf-jni.so"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    throw p0
.end method

.method private static doStart(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 12

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    .line 4
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v7

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mMcfSensorName:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mLogicalCameraInfo:Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;

    .line 8
    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v11

    monitor-enter v11

    .line 10
    :try_start_0
    iget-object v4, v2, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mLogicalCameraId:Ljava/lang/String;

    .line 11
    iget-object v5, v2, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mPrimaryPhyCameraId:Ljava/lang/String;

    .line 12
    iget-object v6, v2, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;->mAuxPhyCameraId:Ljava/lang/String;

    .line 13
    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    .line 14
    iget-object v8, v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    .line 15
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    .line 16
    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    move-object v2, v10

    .line 17
    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/mcf/Mcf;->native_start(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 18
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance p0, Landroid/os/HandlerThread;

    const-string v1, "SensorHandlerThread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 21
    new-instance p0, Landroid/os/Handler;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :try_start_1
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "MCF start: timestamp source characteristic value is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_0

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr p0, v1

    const-wide/32 v1, 0xf4240

    mul-long/2addr p0, v1

    sput-wide p0, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    goto :goto_1

    :cond_0
    const-wide/16 p0, 0x0

    .line 26
    sput-wide p0, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    .line 27
    :goto_1
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

    .line 28
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->sendSystemCalibrationData(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void

    .line 29
    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2
.end method

.method private static doStop()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v2

    .line 4
    iget-boolean v0, v0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    .line 6
    :cond_0
    iget-boolean v0, v2, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v3}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->closeReprocess(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 14
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    .line 16
    :cond_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 18
    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 19
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_stop()V

    return-void

    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf full frame listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v1

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-nez v0, :cond_1

    .line 7
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf OnFullFrameListener reference returned null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v1

    return-void

    .line 9
    :cond_1
    invoke-interface {v0, p0, p1, p2}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V

    .line 10
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/mcf/Mcf$CapKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mType:Ljava/lang/Class;

    .line 3
    const-class v1, [I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    return-object v2

    .line 4
    :cond_0
    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_3

    if-nez p0, :cond_2

    return-object v2

    .line 7
    :cond_2
    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    const/4 v0, 0x2

    .line 8
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_5

    if-nez p0, :cond_4

    return-object v2

    .line 10
    :cond_4
    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    const/4 v0, 0x3

    .line 11
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type for key "

    .line 13
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be initialized prior to querying capabilities."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInstance()Lcom/motorola/camera/mcf/Mcf;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$LazyLoader;->INSTANCE:Lcom/motorola/camera/mcf/Mcf;

    return-object v0
.end method

.method private getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type input : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    :goto_0
    return-object v0
.end method

.method public static synchronized native getSceneProcessingEstimate(Ljava/lang/String;)I
.end method

.method public static init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initIfNot(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isInitialized()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v0

    return v0
.end method

.method public static isInitialized(Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 6
    :try_start_2
    new-instance p0, Lcom/motorola/camera/mcf/McfException;

    const-string v0, "Could not initialize"

    .line 7
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/mcf/McfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    throw p0

    :cond_3
    return v0

    :catchall_1
    move-exception p0

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static synchronized native isSceneBgService(Ljava/lang/String;)Z
.end method

.method public static isStarted()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v0

    return v0
.end method

.method public static isStarted(Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 6
    :try_start_2
    new-instance p0, Lcom/motorola/camera/mcf/McfException;

    const-string v0, "Could not start"

    .line 7
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/mcf/McfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    throw p0

    :cond_3
    return v0

    :catchall_1
    move-exception p0

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static synthetic lambda$doStart$3(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    iput-object p0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 9
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 12
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 13
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 15
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 16
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private static synthetic lambda$doStop$4()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$init$1(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->doInitByHighPriority(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "McfService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$start$2(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/Mcf;->doStart(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    return-void
.end method

.method private static synchronized native maxNumberOfFramesRequired(Ljava/lang/String;)I
.end method

.method public static synchronized native mcfJobSeqCanStop(I)V
.end method

.method private static synchronized native native_close()V
.end method

.method private static synchronized native native_configureSystemCameraCalibration([BLjava/lang/String;Z)V
.end method

.method private static synchronized native native_construct(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static synchronized native native_deinit()V
.end method

.method public static native native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;
.end method

.method private static synchronized native native_init(Ljava/lang/String;[B[BILjava/lang/String;)V
.end method

.method private static native native_on_capture_completed(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;ZLjava/lang/String;)V
.end method

.method private static native native_preview_close(I)V
.end method

.method private static native native_preview_open(IIIIZ)V
.end method

.method private static native native_process_preview_image(IJIIIIIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;F[J)Z
.end method

.method private static native native_reprocess_close(Ljava/lang/String;)V
.end method

.method private static synchronized native native_reprocess_open(Ljava/lang/String;)V
.end method

.method private static native native_sensor_event(IJ[F)V
.end method

.method private static synchronized native native_set_events(Ljava/lang/String;)V
.end method

.method private static synchronized native native_start(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method private static synchronized native native_stop()V
.end method

.method public static onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v5, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 7
    :goto_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 9
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "No input stream and preview stream opened."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalCaptureResult (isReprocess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 14
    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_5
    :try_start_1
    sget-boolean v5, Lcom/motorola/camera/mcf/Mcf;->sIsAeMetadataUsable:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/mcf/Mcf;->native_on_capture_completed(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 17
    :catch_0
    :try_start_2
    sget-object p1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to update metadata for camera "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    invoke-direct {v1, p3}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v2, v1, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-lt p0, v2, :cond_0

    if-lt p1, v2, :cond_0

    .line 5
    iput-object p3, v1, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    .line 6
    iput p0, v1, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    .line 7
    iput p1, v1, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    .line 8
    iput p2, v1, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    .line 9
    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v3

    invoke-static {p0, p1, p2, v3, p4}, Lcom/motorola/camera/mcf/Mcf;->native_preview_open(IIIIZ)V

    .line 10
    iput-boolean v2, v1, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter p0

    .line 13
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Preview image dimensions must be valid, PreviewChanType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Preview stream was previously opened, PreviewChanType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Need to start() prior to opening preview stream, PreviewChanType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static openReprocess(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reprocess stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was previously opened."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->native_reprocess_open(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Need to start() prior to opening reprocess."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static postControlEventFromNative(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing listener handler WeakReference for control event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p2

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    if-nez p3, :cond_1

    .line 6
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing handler for control event callbacks."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit p2

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 8
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$9;

    invoke-direct {p0, p1, p5, p4}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unknown callback identifier."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static postFullFrameEventFromNative(IIIIIIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    move v0, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v9, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "Missing listener handler WeakReference for full frame event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v9

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/Handler;

    if-nez v10, :cond_1

    .line 6
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "Missing handler for full frame request callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v9

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8
    new-instance v11, Lcom/motorola/camera/mcf/Mcf$2;

    move-object v0, v11

    move-object/from16 v1, p12

    move v2, p2

    move v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p13

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/mcf/Mcf$2;-><init>(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 10
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$3;

    move/from16 v1, p4

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/motorola/camera/mcf/Mcf$3;-><init>(ILjava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move/from16 v1, p4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 12
    new-instance v7, Lcom/motorola/camera/mcf/Mcf$4;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p9

    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/mcf/Mcf$4;-><init>(IIILjava/lang/Object;J)V

    .line 13
    invoke-virtual {v10, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 14
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$5;

    invoke-direct {v0, v6}, Lcom/motorola/camera/mcf/Mcf$5;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 16
    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v0

    .line 17
    move-object v2, v6

    check-cast v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 21
    move-object v5, v7

    check-cast v5, [B

    .line 22
    move-object/from16 v6, p13

    check-cast v6, [B

    .line 23
    new-instance v7, Lcom/motorola/camera/mcf/Mcf$6;

    move-object p0, v7

    move-object p1, v2

    move-object p2, v5

    move-object p3, v6

    move-object/from16 p4, v0

    move-object/from16 p5, p11

    move-object/from16 p6, p12

    move-object/from16 p7, v3

    move-object/from16 p8, v1

    move-object/from16 p9, v4

    invoke-direct/range {p0 .. p9}, Lcom/motorola/camera/mcf/Mcf$6;-><init>(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {v10, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 25
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v0, v6, v7}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 27
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    invoke-direct {v0, v6, v7}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 29
    :cond_8
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "Unknown callback identifier."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static postNotifyEventFromNative(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_0

    .line 3
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing listener handler WeakReference for notify event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit p2

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    if-nez p3, :cond_1

    .line 6
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing handler for notify event callbacks."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit p2

    return-void

    :cond_1
    const/4 p5, 0x1

    if-ne p0, p5, :cond_2

    .line 8
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$10;

    invoke-direct {p0, p1}, Lcom/motorola/camera/mcf/Mcf$10;-><init>(I)V

    .line 9
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    .line 10
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$11;

    invoke-direct {p0, p4}, Lcom/motorola/camera/mcf/Mcf$11;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne p0, p1, :cond_4

    .line 12
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$12;

    invoke-direct {p0, p4}, Lcom/motorola/camera/mcf/Mcf$12;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    .line 14
    new-instance p0, Lcom/motorola/camera/mcf/Mcf$13;

    invoke-direct {p0, p4}, Lcom/motorola/camera/mcf/Mcf$13;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 16
    :cond_5
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unknown callback identifier."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 4
    monitor-exit v1

    return v4

    .line 5
    :cond_0
    iget-boolean v3, v0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v3, :cond_6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 7
    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    if-ne v3, v5, :cond_5

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 9
    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    if-ne v3, v5, :cond_4

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    .line 11
    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    if-ne v3, v5, :cond_3

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v5, 0x23

    if-eq v3, v5, :cond_1

    .line 13
    monitor-exit v1

    return v4

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    .line 15
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 16
    monitor-exit v1

    return v4

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    move/from16 v15, p2

    invoke-static {v15, v5}, Lcom/motorola/camera/mcf/Mcf;->scaleCrop(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    .line 19
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v0, v3, v2

    .line 23
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    aget-object v5, v3, v2

    .line 24
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aget-object v2, v3, v2

    .line 25
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    aget-object v2, v3, v4

    .line 26
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v2, v3, v4

    .line 27
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    aget-object v2, v3, v4

    .line 28
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    const/4 v2, 0x2

    aget-object v4, v3, v2

    .line 29
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    aget-object v4, v3, v2

    .line 30
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    aget-object v2, v3, v2

    .line 31
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    move v15, v0

    move/from16 v24, p2

    move-object/from16 v25, p4

    .line 32
    invoke-static/range {v6 .. v25}, Lcom/motorola/camera/mcf/Mcf;->native_process_preview_image(IJIIIIIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;F[J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image format mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image height mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image width mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Preview stream was not opened."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static scaleCrop(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    int-to-float v0, v2

    mul-float/2addr v0, p0

    float-to-int v0, v0

    int-to-float v1, p1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v2, v0

    .line 5
    div-int/lit8 v1, v2, 0x2

    sub-int/2addr p1, p0

    .line 6
    div-int/lit8 p1, p1, 0x2

    move v2, v0

    move v0, v1

    move v1, p1

    move p1, p0

    :cond_0
    and-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p0

    and-int/lit8 p0, v1, 0x1

    add-int/2addr v1, p0

    shr-int/lit8 p0, v2, 0x1

    shl-int/lit8 p0, p0, 0x1

    shr-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, v0

    add-int/2addr p1, v1

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private static sendSystemCalibrationData(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get ARCSOFT calibration blob characteristics"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "binaryCalib"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_configureSystemCameraCalibration([BLjava/lang/String;Z)V

    return-void

    .line 5
    :cond_1
    :goto_1
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v0, "OTP calibration is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAeMetadataUsable(Z)V
    .locals 0

    sput-boolean p0, Lcom/motorola/camera/mcf/Mcf;->sIsAeMetadataUsable:Z

    return-void
.end method

.method public static setControlListener(Lcom/motorola/camera/mcf/Mcf$OnControlListener;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v2, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    .line 11
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"params\":["

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    .line 8
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->native_set_events(Ljava/lang/String;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setFullFrameListener(Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v3, v2, :cond_2

    if-eq v1, p1, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    .line 11
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setInputStreamReady(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setNotifyListener(Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;Landroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v2, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    .line 7
    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    .line 11
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static start(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be initialized prior to starting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be initialized prior to stopping."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string/jumbo v0, "super.finalize() thrown : "

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 3
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    throw p0

    :catchall_1
    move-exception v1

    .line 5
    :try_start_2
    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalize() thrown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    .line 7
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    throw v1

    :catchall_3
    move-exception p0

    .line 9
    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    throw p0
.end method
