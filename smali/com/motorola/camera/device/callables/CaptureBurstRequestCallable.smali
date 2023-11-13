.class public final Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "CaptureBurstRequestCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCaptureListener:Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable$1;

.field public final mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;

.field public final mCaptureRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/motorola/camera/device/callables/CameraListener;",
            "Lcom/motorola/camera/device/callables/CaptureRequestListener;",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable$1;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequests:Ljava/util/List;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequests:Ljava/util/List;

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureRequestListener:Lcom/motorola/camera/device/callables/CaptureRequestListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable$1;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 5
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureBurstRequestCallable"

    return-object p0
.end method
