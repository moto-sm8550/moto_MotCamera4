.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;
.super Ljava/lang/Object;
.source "SuperSlowMotionVideoDecoder.kt"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;

.field public final decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/motorola/camera/mediacodec/BufferChunk;",
            ">;"
        }
    .end annotation
.end field

.field public encoderHeight:I

.field public final extractor:Landroid/media/MediaExtractor;

.field public frameCount:I

.field public frameCountAfterSuperSlowMotion:I

.field public frameIntervalUs:J

.field public presentationTimeUs:J

.field public processProgress:I

.field public final processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

.field public final slowDownFactor:I

.field public final slowMotionProgressFactor:I

.field public final speedUpFactor:I

.field public superSlowMotionRangeStarted:Z

.field public final superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

.field public final trimTimeRange:Lkotlin/ranges/LongRange;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingCallback"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    .line 2
    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowDownFactor:I

    .line 3
    iput p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->speedUpFactor:I

    .line 4
    iput-object p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

    .line 5
    iput-object p6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->trimTimeRange:Lkotlin/ranges/LongRange;

    .line 6
    iput-object p7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;

    .line 7
    iput-object p8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p1, 0x1

    int-to-float p1, p1

    int-to-float p2, p4

    div-float/2addr p1, p2

    const p2, 0x49742400    # 1000000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 9
    iput-wide p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameIntervalUs:J

    .line 10
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b006a

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowMotionProgressFactor:I

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "received codec error: "

    const-string v1, "exception in codecLooper"

    const-string v2, " with exception: "

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline$Window$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;

    invoke-interface {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;->onDecoderError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 0

    const-string p0, "mediaCodec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 9

    .line 1
    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-direct {v0, v1, v1, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 5
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_4

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    if-gez v2, :cond_1

    .line 7
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string p1, "handleInput: no data found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 8
    :cond_1
    iput-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    iget-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x1

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 12
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v3

    const/4 v6, 0x4

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 14
    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v4, v5

    .line 15
    invoke-static {v4}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 16
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    and-int v7, v1, v6

    if-ne v7, v6, :cond_2

    or-int/2addr v3, v5

    goto :goto_0

    .line 17
    :cond_3
    iput v3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 18
    iget-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 19
    iput v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

    .line 4
    iget-wide v4, v0, Lkotlin/ranges/LongProgression;->first:J

    .line 5
    iget-wide v6, v0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v0, v2, v6

    const/4 v6, 0x0

    if-gtz v0, :cond_0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v6

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->trimTimeRange:Lkotlin/ranges/LongRange;

    .line 7
    iget-wide v7, v4, Lkotlin/ranges/LongProgression;->first:J

    .line 8
    iget-wide v4, v4, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    cmp-long v2, v7, v2

    if-gtz v2, :cond_1

    move v6, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowMotionProgressFactor:I

    .line 10
    :cond_2
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processProgress:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processProgress:I

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    invoke-interface {v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onProcessingProgress(I)V

    .line 12
    invoke-virtual {p0, p1, v0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string v1, "handleOutput: cannot add buf to queue"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;

    invoke-interface {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;->onDecoderError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final processBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;ZZ)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string p1, "processBuffer: FRC is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v4, 0x0

    if-nez p3, :cond_3

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void

    .line 7
    :cond_3
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_16

    .line 8
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v5, "height"

    invoke-virtual {p3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object p3, v4

    :goto_1
    if-eqz p3, :cond_8

    .line 10
    iget v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_8

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 12
    iget-object v5, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string/jumbo v4, "stride"

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_5
    if-nez v4, :cond_6

    .line 14
    sget-object p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string v4, "null codec?  stride cannot be determined"

    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 15
    :cond_6
    iget-object v5, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_7

    .line 16
    sget-object p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string v4, "null buffer, cannot trim"

    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    mul-int/2addr v6, v7

    .line 18
    div-int/lit8 v7, v6, 0x2

    add-int v8, v6, v7

    .line 19
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 20
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p3

    add-int/2addr v7, v4

    .line 25
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    iput-object v8, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 30
    :cond_8
    :goto_2
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_16

    if-eqz p2, :cond_c

    if-nez v0, :cond_c

    .line 31
    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowDownFactor:I

    sub-int/2addr p2, v3

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    move v1, v2

    :goto_3
    if-ge v1, p2, :cond_9

    .line 32
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 33
    :cond_9
    invoke-static {p3, v0}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->interpolateFrc(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I

    .line 34
    iget-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    if-nez v1, :cond_a

    .line 35
    iput-boolean v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    goto/16 :goto_b

    :cond_a
    move v1, v2

    :goto_4
    if-ge v1, p2, :cond_b

    .line 36
    aget-object v3, v0, v1

    .line 37
    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 38
    :cond_b
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 39
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_b

    .line 42
    :cond_c
    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    iget v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->speedUpFactor:I

    rem-int/2addr p2, v4

    if-nez p2, :cond_d

    move p2, v3

    goto :goto_5

    :cond_d
    move p2, v2

    :goto_5
    if-eqz p2, :cond_e

    goto :goto_a

    .line 43
    :cond_e
    iget-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    mul-int/lit8 v5, v4, 0x2

    if-le p2, v5, :cond_f

    goto :goto_9

    :cond_f
    if-ge p2, v4, :cond_10

    .line 44
    div-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    rem-int/2addr p2, v1

    if-nez p2, :cond_10

    move p2, v3

    goto :goto_6

    :cond_10
    move p2, v2

    .line 45
    :goto_6
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->speedUpFactor:I

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    if-gt v1, v5, :cond_11

    if-gt v5, v4, :cond_11

    move v4, v3

    goto :goto_7

    :cond_11
    move v4, v2

    :goto_7
    if-eqz v4, :cond_12

    .line 46
    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    rem-int/2addr v5, v1

    if-nez v5, :cond_12

    move v1, v3

    goto :goto_8

    :cond_12
    move v1, v2

    .line 47
    :goto_8
    iget v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    if-nez p2, :cond_14

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    move v3, v2

    :cond_14
    :goto_a
    if-nez v3, :cond_15

    if-eqz v0, :cond_16

    .line 48
    :cond_15
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 49
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    .line 52
    :cond_16
    :goto_b
    invoke-virtual {p1, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method

.method public final setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2
    iget-wide v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameIntervalUs:J

    add-long v3, v0, v2

    iput-wide v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->presentationTimeUs:J

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 5
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x0

    move-object v0, v6

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/16 v0, 0xc

    invoke-direct {p1, p2, v6, v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
