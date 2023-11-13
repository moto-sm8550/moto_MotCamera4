.class public final Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;
.super Ljava/lang/Object;
.source "MediaCodecEngine.java"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mediacodec/MediaCodecEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncoderCallback"
.end annotation


# instance fields
.field public final mAudioRecorder:Landroid/media/AudioRecord;

.field public mAudioTimestamp:Ljava/lang/Long;

.field public mTrack:I

.field public final synthetic this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V
    .locals 2

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string v0, "MediaCodecEngine"

    const-string v1, "exception in codecLooper"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 5
    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p1, "MediaCodecEngine"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    const-string v4, "MediaCodecEngine"

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v3, :cond_5

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 3
    iget-boolean v11, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v11, :cond_0

    return-object v10

    .line 4
    :cond_0
    :try_start_0
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    if-nez v4, :cond_1

    return-object v10

    .line 7
    :cond_1
    iget-object v10, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 8
    iget-object v10, v10, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 9
    invoke-virtual {v10, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 11
    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    return-object v0

    :cond_2
    const/4 v2, 0x1

    .line 12
    invoke-static {v4, v1, v2, v9, v9}, Lcom/motorola/camera/mcf/MotUtil;->copyImageToByteBuffer(Landroid/media/Image;Ljava/nio/ByteBuffer;ZZI)I

    move-result v12

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-wide v5, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    .line 17
    div-long/2addr v5, v7

    :goto_0
    sub-long/2addr v9, v5

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 20
    iget-object v0, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 21
    :cond_4
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    .line 22
    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 23
    new-instance v2, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    .line 24
    iput-object v0, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 25
    iput-object v1, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    return-object v2

    .line 26
    :catch_0
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string v0, "Unable to get input image"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_5
    if-nez v1, :cond_6

    .line 27
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string v0, "Expecting valid buffer to fill"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 28
    :cond_6
    iget-object v11, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 29
    iget v11, v11, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    .line 30
    invoke-virtual {v3, v1, v11}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 31
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 32
    iput v9, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 33
    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 34
    iget-object v12, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v5

    const-wide/32 v13, 0xf4240

    if-nez v12, :cond_8

    .line 35
    new-instance v12, Landroid/media/AudioTimestamp;

    invoke-direct {v12}, Landroid/media/AudioTimestamp;-><init>()V

    .line 36
    iget-object v15, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v15, v12, v9}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v9

    if-eqz v9, :cond_7

    .line 37
    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get timestamp - error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 38
    :cond_7
    iget-wide v9, v12, Landroid/media/AudioTimestamp;->framePosition:J

    mul-long/2addr v9, v13

    .line 39
    iget-object v4, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 40
    iget-object v4, v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 41
    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v5, v4

    div-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    sub-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    :cond_8
    const-wide/16 v4, 0x2

    .line 44
    iget-object v6, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 45
    iget-object v6, v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 46
    iget v9, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    int-to-long v3, v3

    .line 47
    div-long/2addr v3, v9

    mul-long/2addr v3, v13

    .line 48
    iget v5, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 50
    new-instance v5, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v5}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    .line 51
    iget-object v6, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 52
    iget-object v6, v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 53
    invoke-virtual {v6, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 54
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    goto :goto_2

    .line 55
    :cond_9
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 56
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 57
    iget-object v2, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez v2, :cond_a

    const-wide/16 v15, 0x0

    goto :goto_1

    .line 58
    :cond_a
    iget-wide v12, v2, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    .line 59
    div-long v6, v12, v7

    move-wide v15, v6

    :goto_1
    sub-long/2addr v9, v15

    .line 60
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    .line 63
    iput-object v1, v5, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 64
    iput-object v11, v5, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    :goto_2
    return-object v5
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 8
    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 10
    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    .line 12
    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 13
    iget p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    invoke-virtual {v3, p0, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 14
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
