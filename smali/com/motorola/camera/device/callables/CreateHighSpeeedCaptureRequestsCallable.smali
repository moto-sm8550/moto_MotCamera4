.class public final Lcom/motorola/camera/device/callables/CreateHighSpeeedCaptureRequestsCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "CreateHighSpeeedCaptureRequestsCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/util/List<",
        "Landroid/hardware/camera2/CaptureRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateHighSpeeedCaptureRequestsCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 2
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
    instance-of v1, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateHighSpeeedCaptureRequestsCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 4
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not a CameraConstrainedHighSpeedCaptureSession"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CreateHighSpeeedCaptureRequestsCallable"

    return-object p0
.end method
