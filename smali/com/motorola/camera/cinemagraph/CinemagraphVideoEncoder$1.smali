.class public final Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;
.super Ljava/lang/Object;
.source "CinemagraphVideoEncoder.java"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CinemagraphVideoEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxerStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 4
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    .line 5
    iput p1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mTrackIndex:I

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 8
    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxerStarted:Z

    goto :goto_0

    :cond_0
    const-string p1, "CinemagraphVideoEncoder"

    const-string v0, "onOutputFormatChanged: Unexpected output format. Aborting."

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mListener:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoderListener;

    .line 3
    check-cast v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    .line 4
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    iget v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$frameCount:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$isBounce:Z

    if-eqz v4, :cond_0

    .line 5
    iput-boolean v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mLooping:Z

    sub-int/2addr v1, v3

    .line 6
    iput v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    .line 7
    :cond_0
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    if-ge v1, v2, :cond_1

    if-ltz v1, :cond_1

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mDebugPrefix:Ljava/lang/String;

    invoke-virtual {v2, p1, v1, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createSingleFrameYUV(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    .line 9
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mBufferSize:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    :cond_1
    iget-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mLooping:Z

    if-eqz v1, :cond_2

    .line 11
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    goto :goto_0

    .line 12
    :cond_2
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 15
    iget v4, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputStride:I

    .line 16
    iget v5, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mWidth:I

    if-ne v4, v5, :cond_4

    .line 17
    iget v6, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputSliceHeight:I

    .line 18
    iget v7, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    if-eq v6, v7, :cond_5

    .line 19
    :cond_4
    iget v6, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    .line 20
    iget v2, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputSliceHeight:I

    .line 21
    invoke-static {p1, v5, v6, v4, v2}, Lcom/motorola/camera/mcf/MotUtil;->alignYuvBuffer(Ljava/nio/ByteBuffer;IIII)I

    move-result v2

    if-lez v2, :cond_5

    .line 22
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    :cond_5
    new-instance v2, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    .line 24
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v5, 0x0

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 26
    iget v7, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    const v8, 0xf4240

    mul-int/2addr v7, v8

    iget v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    div-int/2addr v7, v4

    int-to-long v7, v7

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    :cond_6
    move v9, v1

    move-object v4, v10

    .line 27
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 28
    iput-object v10, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 29
    iput-object p1, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    .line 30
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 31
    iget p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    return-object v2
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "CinemagraphVideoEncoder"

    const-string v0, "encoded data is null. Aborting."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_0
    iget-object v2, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 7
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 9
    :goto_0
    iput-boolean v3, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    if-eqz v3, :cond_3

    .line 10
    iget-object v0, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    .line 11
    new-instance v2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object p0, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 13
    iget v1, v4, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mTrackIndex:I

    .line 14
    invoke-virtual {p0, v1, v0, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 15
    :goto_1
    invoke-virtual {p1, v5}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
