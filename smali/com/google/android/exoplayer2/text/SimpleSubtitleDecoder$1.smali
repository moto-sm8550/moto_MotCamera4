.class public final Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "SimpleSubtitleDecoder.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;

    iget v3, v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p0, v2, v3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
