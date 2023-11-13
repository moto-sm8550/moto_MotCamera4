.class public final Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;
.super Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
.source "ExoplayerCuesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method
