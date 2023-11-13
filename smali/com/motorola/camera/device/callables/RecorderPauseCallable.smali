.class public final Lcom/motorola/camera/device/callables/RecorderPauseCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "RecorderPauseCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final mPause:Z


# direct methods
.method public constructor <init>(ZLcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/RecorderPauseCallable;->mPause:Z

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
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called after reset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/RecorderPauseCallable;->mPause:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 9
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecorderPauseCallable"

    return-object p0
.end method
