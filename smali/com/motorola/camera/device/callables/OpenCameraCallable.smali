.class public final Lcom/motorola/camera/device/callables/OpenCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreCallbacks:Z

.field public final mOpenCameraListener:Landroidx/transition/PathMotion;

.field public final mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroidx/transition/PathMotion;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 3
    new-instance p1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Landroidx/transition/PathMotion;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    const-string v0, "OpenCameraCallable"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "device_policy"

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Lcom/motorola/camera/device/exception/CameraDisabledException;

    invoke-direct {v0}, Lcom/motorola/camera/device/exception/CameraDisabledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_1
    const-string v1, "openCamera:"

    .line 8
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/shared/MotSysTrace;->beginAsync(Ljava/lang/String;)V

    const/16 v1, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v1

    move v5, v3

    .line 10
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v8, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    iget-object v10, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v7

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_5

    :cond_3
    const-wide/16 v8, 0xc8

    .line 12
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 13
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isCameraActivityRunning()Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v6, v6, -0x1

    if-gtz v6, :cond_3

    :cond_4
    if-gtz v6, :cond_2

    .line 15
    new-instance v1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v1, v7}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    const-string v2, "InterruptedException: while opening camera "

    .line 16
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 19
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_2
    move-exception v7

    const-string v8, "activity state:"

    .line 20
    invoke-static {v8}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 21
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    .line 23
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    .line 24
    iput-boolean v4, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 25
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 26
    :cond_6
    iput-boolean v3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v8, "com.android.systemui.camera_launch_source"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    move v8, v5

    :goto_1
    if-ge v5, v1, :cond_9

    .line 28
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 29
    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    const-wide/16 v9, 0x14

    .line 30
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v9

    .line 31
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    move v8, v3

    :cond_9
    :goto_3
    if-nez v8, :cond_a

    .line 32
    iput-boolean v4, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    .line 33
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_a
    move v5, v4

    goto/16 :goto_0

    :catch_4
    move-exception p0

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenCameraCallable"

    return-object p0
.end method
