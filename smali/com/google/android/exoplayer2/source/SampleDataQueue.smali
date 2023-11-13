.class public final Lcom/google/android/exoplayer2/source/SampleDataQueue;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    }
.end annotation


# instance fields
.field public final allocationLength:I

.field public final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field public firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field public readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public totalBytesWritten:J

.field public writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 4
    iget p1, p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public static readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .locals 3

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 5
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .locals 5

    .line 8
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 10
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 12
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 14
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 15
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 16
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static readSampleData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 4
    iget-object v3, p3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 5
    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    .line 6
    iget-object v3, p3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    .line 7
    aget-byte v3, v3, v4

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 8
    iget-object v6, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    .line 9
    iget-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v7, :cond_1

    const/16 v7, 0x10

    new-array v7, v7, [B

    .line 10
    iput-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    :goto_1
    iget-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-static {p0, v0, v1, v7, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    int-to-long v7, v3

    add-long/2addr v0, v7

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    .line 13
    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 14
    iget-object v3, p3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 15
    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 16
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 17
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v3, :cond_3

    .line 18
    array-length v7, v3

    if-ge v7, v2, :cond_4

    .line 19
    :cond_3
    new-array v3, v2, [I

    .line 20
    :cond_4
    iget-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v7, :cond_5

    .line 21
    array-length v8, v7

    if-ge v8, v2, :cond_6

    .line 22
    :cond_5
    new-array v7, v2, [I

    :cond_6
    if-eqz v5, :cond_7

    mul-int/lit8 v5, v2, 0x6

    .line 23
    invoke-virtual {p3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 24
    iget-object v8, p3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 25
    invoke-static {p0, v0, v1, v8, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    int-to-long v8, v5

    add-long/2addr v0, v8

    .line 26
    invoke-virtual {p3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_2
    if-ge v4, v2, :cond_8

    .line 27
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    aput v5, v3, v4

    .line 28
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 29
    :cond_7
    aput v4, v3, v4

    .line 30
    iget v5, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-wide v8, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v0, v8

    long-to-int v8, v8

    sub-int/2addr v5, v8

    aput v5, v7, v4

    .line 31
    :cond_8
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 32
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v8, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v9, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v10, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    .line 33
    iput v2, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    .line 34
    iput-object v3, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 35
    iput-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 36
    iput-object v5, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    .line 37
    iput-object v8, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 38
    iput v9, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    .line 39
    iput v10, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    .line 40
    iput v4, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    .line 41
    iget-object v11, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput v2, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 42
    iput-object v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 43
    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 44
    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 45
    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 46
    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 47
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    .line 48
    iget-object v2, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->patternHolder:Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v10, v4}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 51
    iget-object v3, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 52
    :cond_9
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 53
    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 54
    iget v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 55
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    .line 56
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 57
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 58
    iget-object v3, p3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 59
    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;J[BI)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 60
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p3

    .line 61
    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 62
    iget v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 63
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 64
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 65
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 66
    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v0, p3

    iput v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 67
    iget-object p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    if-ge p3, v0, :cond_b

    goto :goto_3

    .line 68
    :cond_b
    iget-object p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    .line 69
    :cond_c
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 70
    :goto_4
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 71
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    goto :goto_5

    .line 72
    :cond_d
    iget p3, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 73
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 74
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readData(Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    :goto_5
    return-object p0
.end method


# virtual methods
.method public final discardDownstreamTo(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v3, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v0, v2, v3

    .line 5
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v1

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 10
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 11
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 12
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v1

    throw p0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_2
    return-void
.end method

.method public final preAppend(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 3
    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 6
    iget v3, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v3, :cond_0

    .line 7
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v2, v2, v3

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    .line 11
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 12
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v2, v1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v2, v3

    .line 13
    :goto_0
    monitor-exit v1

    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    .line 15
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 16
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v1

    throw p0

    .line 18
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
