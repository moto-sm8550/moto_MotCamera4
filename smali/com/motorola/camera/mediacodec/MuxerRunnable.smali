.class public final Lcom/motorola/camera/mediacodec/MuxerRunnable;
.super Ljava/lang/Object;
.source "MuxerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;
    }
.end annotation


# static fields
.field public static final mBufferCheck:Ljava/lang/Object;


# instance fields
.field public mChunks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/motorola/camera/mediacodec/BufferChunk;",
            ">;"
        }
    .end annotation
.end field

.field public final mIsCliDisplay:Z

.field public mJobId:I

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public volatile mRunning:Z

.field public final mSaveListener:Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;

.field public mStartTimeUs:J

.field public mStopTimeUs:J

.field public mVideoPath:Ljava/lang/String;

.field public mVideoTrack:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mBufferCheck:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoTrack:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mSaveListener:Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;

    .line 5
    iput-boolean p2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mIsCliDisplay:Z

    return-void
.end method


# virtual methods
.method public final encodeData(Ljava/util/List;Landroid/media/MediaFormat;IIJ)Lcom/motorola/camera/mediacodec/MuxerRunnable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/mediacodec/BufferChunk;",
            ">;",
            "Landroid/media/MediaFormat;",
            "IIJ)",
            "Lcom/motorola/camera/mediacodec/MuxerRunnable;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 6
    :goto_0
    iput-wide v1, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStartTimeUs:J

    .line 7
    iput-wide p5, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    const-string p1, "MuxerRunnable"

    .line 8
    :try_start_0
    new-instance p5, Lcom/motorola/camera/saving/FileName;

    sget-object p6, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p5, p6, v1, v2}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    .line 9
    iput p4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mJobId:I

    .line 10
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_job_"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 11
    invoke-static {p5}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoPath:Ljava/lang/String;

    .line 12
    new-instance p4, Landroid/media/MediaMuxer;

    iget-object p5, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoPath:Ljava/lang/String;

    invoke-direct {p4, p5, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 13
    sget-object p5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    sget-object p6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 15
    invoke-static {p6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    iget-boolean v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mIsCliDisplay:Z

    .line 16
    invoke-static {p3, p5, p6, v0}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p3

    .line 17
    invoke-virtual {p4, p3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    if-nez p2, :cond_1

    const-string p2, "No video format, aborting start"

    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 19
    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p3, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoTrack:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->start()V

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mRunning:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Create MediaMuxer failed, "

    .line 22
    invoke-static {p3}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 23
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method public final requestStop()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mRunning:Z

    .line 2
    sget-object v1, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mBufferCheck:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 6
    iput-wide v2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 12

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mRunning:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mBufferCheck:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v4, "MuxerRunnable"

    const-string v5, "Forced wakeup from wait"

    .line 5
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 10
    iget-wide v6, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStartTimeUs:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_2

    iput-wide v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStartTimeUs:J

    .line 11
    :cond_2
    iget-wide v6, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MuxerRunnable;->requestStop()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoTrack:I

    .line 14
    iget-object v6, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 18
    invoke-virtual {v4, v5, v6, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 20
    :cond_4
    sget-object v0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mBufferCheck:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_4
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 23
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x1

    .line 24
    :try_start_5
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->stop()V

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    const-string v3, "MuxerRunnable"

    const-string v4, "MediaMuxer stop failed, Received 0 buffers and encoded 0 frames"

    .line 26
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 27
    :goto_2
    iget-wide v4, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStartTimeUs:J

    cmp-long v6, v4, v1

    if-eqz v6, :cond_6

    iget-wide v6, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    cmp-long v1, v6, v1

    if-eqz v1, :cond_6

    sub-long/2addr v6, v4

    const-wide/32 v1, 0xf4240

    cmp-long v1, v6, v1

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    .line 28
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mSaveListener:Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;

    if-eqz v1, :cond_9

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mVideoPath:Ljava/lang/String;

    iget v3, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mJobId:I

    .line 30
    iget-wide v6, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 32
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 33
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->deleteVideoFile(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_4

    .line 35
    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;

    .line 38
    iget-wide v6, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStopTimeUs:J

    iget-wide v10, p0, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mStartTimeUs:J

    sub-long/2addr v6, v10

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 40
    iget-object p0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MotionPhotoDataManager;->mResultDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_4
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_VIDEO"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->generateMotionPhoto(I)V

    .line 44
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 45
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoListeners:Ljava/util/Map;

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_8

    .line 47
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->addMotionVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 48
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mediacodec/MotionPhotoVideoListener;

    invoke-interface {p0}, Lcom/motorola/camera/mediacodec/MotionPhotoVideoListener;->onVideoReady()V

    goto :goto_5

    :cond_8
    const-string p0, "MotionPhotosComponent"

    const-string v0, "onVideoSaveComplete: Null Listener entry found"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void

    :catchall_1
    move-exception p0

    .line 50
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
