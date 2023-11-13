.class public final Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;
.super Ljava/lang/Object;
.source "IntArrayQueue.java"


# instance fields
.field public data:[I

.field public headIndex:I

.field public size:I

.field public tailIndex:I

.field public wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    .line 6
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 2
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    .line 3
    new-array v2, v0, [I

    .line 4
    array-length v3, v1

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    .line 5
    invoke-static {v1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput v5, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 9
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    add-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    aput p1, v1, v0

    .line 14
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public final remove()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 3
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return v1

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
