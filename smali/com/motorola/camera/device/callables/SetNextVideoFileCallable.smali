.class public final Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SetNextVideoFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

.field public final mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CallableListener;Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/VideoSessionData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/device/callables/CallableListener<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/motorola/camera/capturedmediadata/CapturedVideoData;",
            "Lcom/motorola/camera/capturedmediadata/VideoSessionData;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->setNextVideoFile()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetNextVideoFileCallable"

    return-object p0
.end method

.method public final setNextVideoFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    const-string v1, "Media recorder is null, it may be closed"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 5
    new-instance v2, Lcom/motorola/camera/saving/FileName;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v2, v3}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iget-object v3, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Lcom/motorola/camera/saving/FileName;->setFileNumber(I)Lcom/motorola/camera/saving/FileName;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v3}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v3

    const-string/jumbo v4, "sharedMediaFile is null"

    .line 10
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-interface {v3}, Lcom/motorola/camera/storage/SharedMediaFile;->getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v2

    .line 13
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 14
    check-cast v2, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    .line 16
    iput-object p0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-void
.end method
