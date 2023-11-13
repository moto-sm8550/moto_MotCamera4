.class public interface abstract Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;
.super Ljava/lang/Object;
.source "MediaCodecHelperCallback.kt"


# virtual methods
.method public abstract handleError(Ljava/lang/Exception;)V
.end method

.method public abstract handleFormatChanged(Landroid/media/MediaCodec;)V
.end method

.method public abstract handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
.end method

.method public abstract handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
.end method
