.class public final Lcom/motorola/camera/mediacodec/MediaCodecHelper;
.super Ljava/lang/Object;
.source "MediaCodecHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
    }
.end annotation


# instance fields
.field public final DEQUEUE_TIMEOUT_US:J

.field public final SHUTDOWN_TIMEOUT_MS:J

.field public final TAG:Ljava/lang/String;

.field public final callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

.field public final codec:Landroid/media/MediaCodec;

.field public final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;",
            ">;"
        }
    .end annotation
.end field

.field public isUsingVideoSurface:Z

.field public final showToast:Z

.field public final workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    .line 4
    iput-boolean p3, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->showToast:Z

    const-wide/32 p2, 0x186a0

    .line 5
    iput-wide p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->DEQUEUE_TIMEOUT_US:J

    const-wide/16 p2, 0xbb8

    .line 6
    iput-wide p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->SHUTDOWN_TIMEOUT_MS:J

    .line 7
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "codec.outputFormat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final processInput()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->isUsingVideoSurface:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_2

    :cond_0
    :goto_0
    move v2, v3

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_3

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    invoke-interface {v5, v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    .line 10
    iget-object v5, v4, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    iget v9, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 12
    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v7, v0

    .line 13
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 14
    iget-object v4, v4, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 15
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_3

    goto :goto_1

    .line 16
    :cond_2
    iget-object v6, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    move v7, v0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1
    move v3, v2

    :cond_3
    if-ltz v0, :cond_0

    if-nez v3, :cond_0

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final processOutput()V
    .locals 6

    .line 1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    iget-wide v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->DEQUEUE_TIMEOUT_US:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-interface {v0, p0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleFormatChanged(Landroid/media/MediaCodec;)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got invalid output status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    new-instance v4, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-direct {v4, v2, v0, v1, v5}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    invoke-interface {v3, v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V

    .line 9
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    iget-wide v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->SHUTDOWN_TIMEOUT_MS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    const-string v1, "codec looper thread still alive, interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop codec thread: "

    .line 7
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
