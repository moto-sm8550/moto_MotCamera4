.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestHandler"
.end annotation


# instance fields
.field public isReleased:Z

.field public final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    check-cast v3, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto/16 :goto_7

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 6
    check-cast v2, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->executeProvisionRequest(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 7
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_1
    move-exception v2

    .line 8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 9
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto/16 :goto_5

    .line 10
    :cond_2
    iget v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 11
    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 12
    iget-object v6, v6, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 13
    check-cast v6, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v6

    if-le v4, v6, :cond_3

    goto/16 :goto_5

    .line 14
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    goto :goto_0

    .line 19
    :cond_4
    new-instance v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 21
    iget-object v6, v6, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 22
    iget v3, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 23
    instance-of v6, v4, Lcom/google/android/exoplayer2/ParserException;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v6, :cond_8

    instance-of v6, v4, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_8

    instance-of v6, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    if-nez v6, :cond_8

    instance-of v6, v4, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    if-nez v6, :cond_8

    sget v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;->$r8$clinit:I

    :goto_1
    if-eqz v4, :cond_6

    .line 24
    instance-of v6, v4, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v6, :cond_5

    .line 25
    move-object v6, v4

    check-cast v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v6, v6, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    const/16 v9, 0x7d8

    if-ne v6, v9, :cond_5

    move v4, v1

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    :cond_6
    move v4, v5

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x1388

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    goto :goto_4

    :cond_8
    :goto_3
    move-wide v3, v7

    :goto_4
    cmp-long v6, v3, v7

    if-nez v6, :cond_9

    goto :goto_5

    .line 28
    :cond_9
    monitor-enter p0

    .line 29
    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v6, :cond_a

    .line 30
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    monitor-exit p0

    goto :goto_6

    .line 32
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    move v1, v5

    :goto_6
    if-eqz v1, :cond_b

    return-void

    :cond_b
    move-object v1, v2

    .line 33
    :goto_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 34
    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 35
    iget-wide v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    monitor-enter p0

    .line 37
    :try_start_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v2, :cond_c

    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->responseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 39
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 41
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 42
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final post(ILjava/lang/Object;Z)V
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
