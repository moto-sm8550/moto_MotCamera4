.class public final Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "CreateCaptureSessionCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsHighSpeedVideo:Z

.field public final mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

.field public final mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

.field public final mOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

.field public final mSessionConfigurationRequired:Z

.field public final mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;Landroid/os/Handler;Landroid/os/Handler;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;Landroid/hardware/camera2/params/InputConfiguration;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/motorola/camera/device/callables/CameraListener;",
            "Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    .line 3
    new-instance p1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/List;

    .line 6
    iput-object p7, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    .line 7
    iput-object p8, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$McfPreviewConfig;

    .line 8
    iput-object p9, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    .line 9
    iput-boolean p10, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mIsHighSpeedVideo:Z

    .line 10
    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 11
    iput-boolean p11, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mSessionConfigurationRequired:Z

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

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

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_7

    .line 2
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    .line 5
    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mSessionConfigurationRequired:Z

    if-eqz v1, :cond_4

    .line 7
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mIsHighSpeedVideo:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    new-instance v2, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    invoke-direct {v2, v1, v3, v5, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {v2, p0}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 14
    :cond_3
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mReprocInputConfig:Landroid/hardware/camera2/params/InputConfiguration;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-boolean v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mIsHighSpeedVideo:Z

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->getSurfaces()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mStateListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 21
    :goto_1
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 22
    :cond_7
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getSurfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mOutputConfigurations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 3
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CreateCaptureSessionCallable"

    return-object p0
.end method
