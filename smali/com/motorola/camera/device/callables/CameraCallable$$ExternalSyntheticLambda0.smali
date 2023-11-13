.class public final synthetic Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/device/callables/CameraCallable;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/FormatHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CameraCallable;Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/CameraCallable;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/FormatHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/CameraCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mBegin:J

    sub-long/2addr v1, v3

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/callables/CallableListener;

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Exception;

    if-eqz v4, :cond_1

    .line 4
    instance-of v4, v0, Lcom/motorola/camera/device/callables/CloseCameraCallable;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception in result cid:"

    .line 6
    invoke-static {v5}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (dur:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v3, :cond_2

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    invoke-interface {v3, p0}, Lcom/motorola/camera/device/callables/CallableListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    invoke-interface {v3, p0}, Lcom/motorola/camera/device/callables/CallableListener;->onComplete(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
