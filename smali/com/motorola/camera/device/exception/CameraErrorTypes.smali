.class public final Lcom/motorola/camera/device/exception/CameraErrorTypes;
.super Ljava/lang/Object;
.source "CameraErrorTypes.java"


# static fields
.field public static final CAMERA_DISABLED_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

.field public static final CAMERA_ERROR_SERVER_DIED:Lcom/motorola/camera/device/exception/CameraErrorTypes;

.field public static final CAMERA_ERROR_UNKNOWN:Lcom/motorola/camera/device/exception/CameraErrorTypes;

.field public static final CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

.field public static final VID_REC_START_ERR:Lcom/motorola/camera/device/exception/CameraErrorTypes;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v1, "CAMERA_OPEN"

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/CameraErrorTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_OPEN_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 2
    new-instance v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v1, "CAMERA_DISABLED"

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/CameraErrorTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_DISABLED_ERROR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 3
    new-instance v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/CameraErrorTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_UNKNOWN:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 4
    new-instance v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v1, "CAMERA_SERVER_DIED"

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/CameraErrorTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->CAMERA_ERROR_SERVER_DIED:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    .line 5
    new-instance v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;

    const-string v1, "VID_REC_START_ERR"

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/CameraErrorTypes;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->VID_REC_START_ERR:Lcom/motorola/camera/device/exception/CameraErrorTypes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/exception/CameraErrorTypes;->mName:Ljava/lang/String;

    return-void
.end method
