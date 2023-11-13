.class public abstract Lcom/motorola/camera/analytics/PostCaptureEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "PostCaptureEvent.java"


# static fields
.field public static final ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final AUDIO_ZOOM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final BEAUTY:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final DOC_SCAN_TOAST:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final DUAL_CAPTURE_CAM_COMBINATION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final EXPOSURE:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

.field public static final EXPOSURETIME:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

.field public static final FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final FILE_FORMAT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final FOCMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

.field public static final GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final HEVC:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final ISOSPEED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final LOW_LIGHT_SHOT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final LUX:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

.field public static final MANUALFOCUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MCF_AI_STABILIZATION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MCF_SCENE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MICROPHONE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MOTIONPHOTO_SAVED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final MOTIONPHOTO_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final MOTIONPHOTO_VIDDUR:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final PHTOSLD:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final PROMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SELFIE_PHOTO_MIRROR:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final SENSOR:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final SUPER_SLOW_MOTION_ACTION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SUPER_SLOW_MOTION_TOGGLE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

.field public static final VIDEO_FPS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

.field public static final VSTAB:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final WB_VALUES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITEBALANCE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "CAPTURETRIGGER"

    const-string v2, "SHTRBTN"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const/4 v1, 0x0

    const-string v2, "PROMD"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->PROMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-wide/16 v2, 0x0

    const-string v4, "PHTOSLD"

    invoke-direct {v0, v4, v2, v3}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->PHTOSLD:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v4, "BEAUTY"

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v4, "SENSOR"

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SENSOR:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v4, "FILEFORMAT"

    invoke-direct {v0, v4, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILE_FORMAT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v4, "RESOLN"

    invoke-direct {v0, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-wide/16 v4, 0x1e

    const-string v6, "FPS"

    invoke-direct {v0, v6, v4, v5}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->VIDEO_FPS:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    const-wide/16 v4, 0x0

    const-string v6, "XPSR"

    invoke-direct {v0, v6, v4, v5}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;-><init>(Ljava/lang/String;D)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->EXPOSURE:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    .line 10
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string v6, "XPSRTIME"

    invoke-direct {v0, v6, v4, v5}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;-><init>(Ljava/lang/String;D)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->EXPOSURETIME:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    .line 11
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const/4 v4, -0x1

    const-string v5, "ISOSPEED"

    invoke-direct {v0, v5, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ISOSPEED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 12
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v5, "AUTO"

    const-string v6, "WHTBLNC"

    invoke-direct {v0, v6, v5}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WHITEBALANCE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 13
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v6, "MANFOCUS"

    invoke-direct {v0, v6, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MANUALFOCUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 14
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v6, "FACING"

    invoke-direct {v0, v6}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 15
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v6, "MTNSTAT"

    invoke-direct {v0, v6}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MOTIONPHOTO_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 16
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v6, "MTNSVD"

    invoke-direct {v0, v6}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MOTIONPHOTO_SAVED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 17
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v6, "MTNVIDDUR"

    invoke-direct {v0, v6, v2, v3}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MOTIONPHOTO_VIDDUR:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 18
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "FOCMODE"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 19
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "COMPOCAP"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 20
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "GESTUCAP"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 21
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "SMILECAP"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 22
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "WATERMARK"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 23
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-string v6, "LUX"

    invoke-direct {v0, v6, v2, v3}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;-><init>(Ljava/lang/String;D)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->LUX:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    .line 24
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "DSENABLED"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 25
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    .line 26
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "SSMTOGGLE"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SUPER_SLOW_MOTION_TOGGLE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 27
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "SSMACTION"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SUPER_SLOW_MOTION_ACTION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 28
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const/4 v2, 0x0

    const-string v3, "SSMEDIT"

    invoke-direct {v0, v3, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 29
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "SIS"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MCF_AI_STABILIZATION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 30
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "DPCLOUT"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 31
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "DPCCAMCB"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_CAM_COMBINATION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 32
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v2, "IMGTUVER"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 33
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "DOCTOAST"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DOC_SCAN_TOAST:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 34
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "FILTER"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 35
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "LLS"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->LOW_LIGHT_SHOT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 36
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "HEVC"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->HEVC:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 37
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "MCF_SCN"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MCF_SCENE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 38
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "VSTAB"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->VSTAB:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 39
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "ASGRID"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 40
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "LEVEL"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 41
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v2, "SPMIRR"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SELFIE_PHOTO_MIRROR:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 42
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "MIC"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->MICROPHONE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 43
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v2, "AUDIOZM"

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUDIO_ZOOM:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WB_VALUES:Landroid/util/SparseArray;

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x6

    const-string v3, "CLDY"

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    const-string v3, "DYLT"

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    const-string v3, "FLRS"

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v5, "INCD"

    .line 49
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 51
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method

.method public static getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    .line 2
    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const-string v2, "USECASE"

    .line 4
    invoke-virtual {p1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "GTAG"

    .line 7
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FLASHMODE"

    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v2

    const-string v3, "ZOOM"

    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "FOCUS_TIME"

    const-wide/16 v4, 0x0

    .line 11
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v6, "FOCTIME"

    .line 12
    invoke-virtual {p2, v6, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ext"

    goto :goto_0

    :cond_0
    const-string v2, "int"

    :goto_0
    const-string v6, "STRG"

    .line 16
    invoke-virtual {p2, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eqz v2, :cond_2

    const/16 v6, 0xb4

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "PORT"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "LAND"

    :goto_2
    const-string v6, "ORNT"

    .line 18
    invoke-virtual {p2, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const/4 v6, 0x0

    const-string v7, "ANALYTICS_IS_CAF"

    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "FOCUS_SUCCESS"

    invoke-virtual {v2, v8, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v7

    const-string v8, "FOCFAIL"

    .line 21
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v8, "CAFFAIL"

    .line 22
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "SHUTTER_CB_TIME"

    .line 24
    invoke-virtual {v2, v8, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "ZSLTIME"

    .line 25
    invoke-virtual {p2, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 26
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v8, "SHTRTONE"

    .line 28
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "VOL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "VOLKEYUSED"

    .line 30
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "FACES_DETECTED"

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "NUMFACEDET"

    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 33
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 34
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget v2, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    const-string v2, "%02d%02d"

    invoke-static {v8, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "TIMEOFPIC"

    .line 35
    invoke-virtual {p2, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "TOUCH_LOCATION"

    .line 37
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const-string v8, ","

    if-nez v2, :cond_4

    const-string v2, "0,0"

    goto :goto_3

    .line 38
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v9, "TAPLOCATION"

    .line 39
    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "HDRMODE"

    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 42
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const-string/jumbo v9, "x"

    .line 43
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v9, v2

    if-ne v9, v3, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    :goto_4
    const-string v2, "NF"

    :goto_5
    const-string v9, "TAPDIMENSION"

    .line 45
    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SERVICEMODE"

    .line 46
    invoke-virtual {p1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {p2, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    instance-of v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-nez v2, :cond_7

    goto :goto_6

    .line 48
    :cond_7
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 49
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 50
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 51
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 52
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ROI_TOUCH_RECT"

    .line 53
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_8

    .line 54
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 55
    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v2

    int-to-float v2, v11

    div-float/2addr v2, v10

    .line 56
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    :goto_6
    const-string v2, "0.0,0.0"

    :goto_7
    const-string v9, "ROILOC"

    .line 57
    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v9, v2

    const-string v2, "SHOTSEQID"

    invoke-virtual {p2, v2, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "FOCUS_AREAS_SUPPORTED"

    .line 60
    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v9, "AUTOFOCAREASPRT"

    .line 61
    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "CAF_SUPPORTED"

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v9, "CAFSPRT"

    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v9, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 64
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 65
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v9, v2, v10}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "MODE"

    .line 66
    invoke-virtual {p2, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "SAVE_TIME"

    invoke-virtual {v2, v9, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "SVTIME"

    invoke-virtual {p2, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 68
    iget-object v2, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 69
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 70
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 71
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->PROMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 72
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 74
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, -0x1

    goto :goto_8

    .line 76
    :cond_9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_8

    :cond_a
    move v2, v6

    .line 79
    :goto_8
    sget-object v4, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p2, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 80
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 81
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 82
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->SENSOR:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    .line 83
    iget-object v4, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 84
    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v7, :cond_b

    goto :goto_9

    .line 85
    :cond_b
    move-object v4, p3

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 86
    iget-object v4, v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v4, :cond_c

    .line 87
    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, " "

    const-string v9, ""

    .line 89
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    array-length v5, v4

    if-le v5, v7, :cond_c

    .line 92
    aget-object v4, v4, v7

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_c
    :goto_9
    const-string v4, "UNKNOWN"

    .line 93
    :goto_a
    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 94
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    iget v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    const-string v8, "IS_CLI_DISPLAY"

    .line 95
    invoke-virtual {p1, v8}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iget v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 96
    invoke-static {v4, v5, v9, v10}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ILjava/lang/String;ZI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 97
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->COMPOSITION_CAPTURE_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 98
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 99
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_COMPOSITION_TRIGGERED"

    invoke-virtual {v5, v9, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_b

    :cond_d
    if-eqz v4, :cond_e

    move v3, v7

    goto :goto_b

    :cond_e
    move v3, v6

    .line 100
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 101
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 102
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 104
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 105
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 107
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 108
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 110
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 111
    iget-object v3, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 112
    invoke-virtual {p1, v8}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 113
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_d

    .line 114
    :cond_f
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_10

    move v4, v6

    goto :goto_c

    .line 115
    :cond_10
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_c
    if-lez v4, :cond_11

    .line 116
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAllowed(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v6, v7

    .line 117
    :cond_11
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenReviewAllowed(Lcom/motorola/camera/settings/CameraType;I)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 118
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    or-int/lit8 v6, v6, 0x2

    .line 119
    :cond_12
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationAllowed(Lcom/motorola/camera/settings/CameraType;I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 120
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    or-int/lit8 v6, v6, 0x4

    .line 121
    :cond_13
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 122
    :goto_d
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 123
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 124
    sget-object v4, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUS_DISTANCE:Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, p2, v2}, Lcom/motorola/camera/analytics/Attributes/DoubleAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 125
    :cond_14
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v3

    .line 126
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/shared/PackageUtility;->getImagerTuningName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/shared/PackageUtility;->getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 127
    invoke-virtual {v2, p2, v3}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 128
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 129
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 131
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/motorola/camera/utility/FilterMeisheUtil;->getId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-virtual {v2, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 135
    :cond_15
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 136
    sget-object v2, Lcom/motorola/camera/analytics/PostCaptureEvent;->ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 137
    :cond_16
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 138
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 139
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->postProcessData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public final getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnexpectedAnalyticDataException;
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent$1;->$SwitchMap$com$motorola$camera$fsm$camera$Trigger$TriggerType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "TOUCH"

    return-object p0

    :pswitch_1
    const-string p1, "CAPTURE_AUTO_CAPTURE_TYPE"

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SHTRBTN"

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const-string p0, "AUTO"

    return-object p0

    :cond_2
    const-string p0, "GESTURE"

    return-object p0

    :cond_3
    const-string p0, "SMILE"

    return-object p0

    :pswitch_2
    const-string p0, "AOV"

    return-object p0

    :pswitch_3
    const-string p1, "KEY_CODE"

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_7

    const/16 p1, 0x42

    if-eq p0, p1, :cond_6

    const/16 p1, 0x55

    if-eq p0, p1, :cond_5

    const/16 p1, 0x4f

    if-eq p0, p1, :cond_4

    const/16 p1, 0x50

    if-eq p0, p1, :cond_7

    packed-switch p0, :pswitch_data_1

    return-object v0

    :pswitch_4
    const-string p0, "VOL"

    return-object p0

    :cond_4
    const-string p0, "HDSET"

    return-object p0

    :cond_5
    const-string p0, "MEDPLPS"

    return-object p0

    :cond_6
    :pswitch_5
    const-string p0, "KPAD"

    return-object p0

    :cond_7
    const-string p0, "CAMKEY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "6.1"

    return-object p0
.end method

.method public getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "torch"

    goto :goto_0

    :cond_1
    const-string p0, "auto"

    goto :goto_0

    :cond_2
    const-string p0, "on"

    goto :goto_0

    :cond_3
    const-string p0, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string p1, "Could not get flashMode from settings"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NS"

    :goto_0
    return-object p0
.end method

.method public getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final getSessionSeqId(Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    .line 2
    iget-object p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_SEQID"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    .line 1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 1

    .line 1
    iget-object p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 3
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 5
    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 6
    sget-object p2, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_CAM_COMBINATION:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract postProcessData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
.end method
