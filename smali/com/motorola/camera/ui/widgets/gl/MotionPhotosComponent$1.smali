.class public final Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "MotionPhotosComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->motionPhotosNotEnabledForZoomValue(I)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    const-wide/16 v3, 0x3e8

    .line 7
    div-long/2addr v1, v3

    .line 8
    iget-wide v5, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    .line 9
    div-long v6, v5, v3

    sub-long v3, v6, v1

    const-wide/16 v8, 0x0

    cmp-long p1, v1, v8

    if-nez p1, :cond_2

    cmp-long p1, v6, v8

    if-eqz p1, :cond_9

    :cond_2
    const-wide/32 v8, 0xf4240

    cmp-long p1, v3, v8

    if-ltz p1, :cond_9

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 12
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_4

    monitor-exit p0

    goto/16 :goto_3

    .line 16
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p1, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/mediacodec/MuxerRunnable;-><init>(Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;Z)V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mOutputFormatAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 20
    :cond_5
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mBufferLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mediacodec/BufferChunk;

    .line 23
    invoke-virtual {v4, v1}, Lcom/motorola/camera/mediacodec/BufferChunk;->compareTo(Lcom/motorola/camera/mediacodec/BufferChunk;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 24
    iget-object v5, v4, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v9, v6

    if-gtz v5, :cond_6

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 27
    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_8

    .line 28
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_1

    .line 29
    :cond_8
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_1
    move v4, v1

    .line 30
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    move-object v1, p1

    move-object v2, v3

    move-object v3, v5

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/mediacodec/MuxerRunnable;->encodeData(Ljava/util/List;Landroid/media/MediaFormat;IIJ)Lcom/motorola/camera/mediacodec/MuxerRunnable;

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 35
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 36
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 37
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 40
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->generateMotionPhoto(I)V

    :goto_3
    return-void
.end method
