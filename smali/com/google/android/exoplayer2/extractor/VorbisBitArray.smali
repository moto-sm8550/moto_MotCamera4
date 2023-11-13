.class public final Lcom/google/android/exoplayer2/extractor/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field public bitOffset:I

.field public final byteLimit:I

.field public byteOffset:I

.field public final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteLimit:I

    return-void
.end method


# virtual methods
.method public final readBit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public final readBits(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->data:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    return v0
.end method

.method public final skipBits(I)V
    .locals 3

    .line 1
    div-int/lit8 v0, p1, 0x8

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    const/4 v0, 0x1

    const/4 v2, 0x7

    if-le p1, v2, :cond_0

    add-int/2addr v1, v0

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    .line 6
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteOffset:I

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->byteLimit:I

    if-lt p1, v1, :cond_2

    if-ne p1, v1, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->bitOffset:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void
.end method
