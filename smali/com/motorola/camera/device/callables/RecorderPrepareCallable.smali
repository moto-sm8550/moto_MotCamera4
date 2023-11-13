.class public final Lcom/motorola/camera/device/callables/RecorderPrepareCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "RecorderPrepareCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# instance fields
.field public final mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

.field public final mFileDescriptor:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Ljava/io/FileDescriptor;Lcom/motorola/camera/device/callables/RecorderPrepareListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 3
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/exception/DriveStateUnknownException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->prepareRecorder()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 6
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v1, Lcom/motorola/camera/device/exception/DriveStateUnknownException;

    invoke-direct {v1, v0}, Lcom/motorola/camera/device/exception/DriveStateUnknownException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecorderPrepareCallable"

    return-object p0
.end method

.method public final prepareRecorder()Landroid/view/Surface;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MR_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v3, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isCallActive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v3

    .line 7
    iget-object v6, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v6, :cond_2

    .line 8
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3, v4}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 10
    :goto_2
    iget-object v3, v3, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_4

    .line 11
    sget-object v4, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    .line 12
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v5

    goto :goto_3

    :cond_3
    const/4 v1, 0x5

    .line 15
    :goto_3
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_4
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    if-eqz v2, :cond_5

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 21
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 22
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    invoke-virtual {v3, v1, v5}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 24
    :cond_6
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 26
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    const/16 v1, 0x1e

    .line 29
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    float-to-double v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 31
    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-boolean v2, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    if-nez v2, :cond_8

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 32
    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    if-lez v1, :cond_9

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 33
    :cond_9
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-wide v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_a

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 34
    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_b

    .line 35
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v2, v4

    .line 36
    invoke-virtual {v3, v1, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 37
    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 38
    iget-object v1, p0, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    const-string v2, "RecorderPrepareCallable"

    if-eqz v1, :cond_f

    .line 39
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 41
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_c

    .line 42
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 43
    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 44
    :cond_c
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    if-eqz v2, :cond_d

    .line 45
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 46
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 47
    :cond_d
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_e
    const-string p0, "record surface is not valid."

    .line 48
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p0, Ljava/io/IOException;

    const-string v0, "record surface is not valid"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string p0, "record surface is null."

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p0, Ljava/io/IOException;

    const-string v0, "record surface is null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
