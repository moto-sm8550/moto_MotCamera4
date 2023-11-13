.class public final Lcom/google/android/exoplayer2/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public syncBytes:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_19

    .line 3
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_15

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_2

    .line 4
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 7
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    if-ne v3, v13, :cond_0

    .line 8
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    .line 11
    :cond_1
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 13
    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 14
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 15
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 16
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {v1, v3, v10, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 17
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    if-ne v3, v11, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v8

    :goto_1
    if-eqz v2, :cond_0

    .line 18
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    const/16 v10, 0xe

    const/16 v13, 0x1f

    const/4 v14, -0x2

    const/4 v11, -0x1

    if-nez v3, :cond_d

    .line 21
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 22
    aget-byte v9, v2, v8

    const/16 v5, 0x7f

    if-ne v9, v5, :cond_5

    .line 23
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 24
    array-length v9, v2

    invoke-direct {v5, v2, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    goto/16 :goto_7

    .line 25
    :cond_5
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 26
    aget-byte v9, v5, v8

    if-eq v9, v14, :cond_7

    aget-byte v9, v5, v8

    if-ne v9, v11, :cond_6

    goto :goto_2

    :cond_6
    move v9, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v9, v4

    :goto_3
    if-eqz v9, :cond_8

    move v9, v8

    .line 27
    :goto_4
    array-length v14, v5

    sub-int/2addr v14, v4

    if-ge v9, v14, :cond_8

    .line 28
    aget-byte v14, v5, v9

    add-int/lit8 v16, v9, 0x1

    .line 29
    aget-byte v17, v5, v16

    aput-byte v17, v5, v9

    .line 30
    aput-byte v14, v5, v16

    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 31
    :cond_8
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 32
    array-length v14, v5

    invoke-direct {v9, v5, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 33
    aget-byte v14, v5, v8

    if-ne v14, v13, :cond_a

    .line 34
    new-instance v14, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 35
    array-length v13, v5

    invoke-direct {v14, v5, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 36
    :goto_5
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v13

    const/16 v8, 0x10

    if-lt v13, v8, :cond_a

    .line 37
    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 38
    invoke-virtual {v14, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x3fff

    .line 39
    iget v13, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v13, v13, 0x8

    invoke-static {v13, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 40
    iget v7, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v18, v7, 0x8

    sub-int v18, v18, v13

    const v19, 0xff00

    shr-int v7, v19, v7

    shl-int v19, v4, v18

    add-int/lit8 v19, v19, -0x1

    or-int v7, v7, v19

    .line 41
    iget-object v12, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v11, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v21, v12, v11

    and-int v7, v7, v21

    int-to-byte v7, v7

    aput-byte v7, v12, v11

    rsub-int/lit8 v7, v13, 0xe

    ushr-int v13, v8, v7

    .line 42
    aget-byte v21, v12, v11

    shl-int v13, v13, v18

    or-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    add-int/2addr v11, v4

    :goto_6
    if-le v7, v6, :cond_9

    .line 43
    iget-object v12, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v7, v7, -0x8

    ushr-int v6, v8, v7

    int-to-byte v6, v6

    aput-byte v6, v12, v11

    move v11, v13

    const/16 v6, 0x8

    goto :goto_6

    :cond_9
    rsub-int/lit8 v6, v7, 0x8

    .line 44
    iget-object v12, v9, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    aget-byte v13, v12, v11

    shl-int v21, v4, v6

    const/16 v20, -0x1

    add-int/lit8 v21, v21, -0x1

    and-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    shl-int v7, v4, v7

    sub-int/2addr v7, v4

    and-int/2addr v7, v8

    .line 45
    aget-byte v8, v12, v11

    shl-int v6, v7, v6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v12, v11

    .line 46
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 47
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v11, -0x1

    goto :goto_5

    .line 48
    :cond_a
    array-length v6, v5

    invoke-virtual {v9, v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    move-object v5, v9

    :goto_7
    const/16 v6, 0x3c

    .line 49
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v6, 0x6

    .line 50
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 51
    sget-object v6, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v6, v6, v7

    const/4 v7, 0x4

    .line 52
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 53
    sget-object v7, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v7, v7, v8

    const/4 v8, 0x5

    .line 54
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 55
    sget-object v8, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    const/16 v11, 0x1d

    if-lt v9, v11, :cond_b

    const/4 v8, -0x1

    const/4 v9, 0x2

    goto :goto_8

    .line 56
    :cond_b
    aget v8, v8, v9

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    :goto_8
    const/16 v11, 0xa

    .line 57
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 58
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-lez v5, :cond_c

    move v5, v4

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    :goto_9
    add-int/2addr v6, v5

    .line 59
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 60
    iput-object v3, v5, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string v3, "audio/vnd.dts"

    .line 61
    iput-object v3, v5, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 62
    iput v8, v5, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 63
    iput v6, v5, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 64
    iput v7, v5, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    const/4 v3, 0x0

    .line 65
    iput-object v3, v5, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 66
    iput-object v15, v5, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 67
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 68
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 69
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    move v3, v8

    .line 70
    :goto_a
    aget-byte v5, v2, v3

    const/4 v3, 0x7

    const/4 v6, -0x2

    if-eq v5, v6, :cond_10

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_e

    const/4 v5, 0x5

    .line 71
    aget-byte v6, v2, v5

    const/4 v5, 0x3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    aget-byte v7, v2, v3

    goto :goto_c

    :cond_e
    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v8, 0x4

    .line 72
    aget-byte v7, v2, v6

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0xc

    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget-byte v6, v2, v6

    goto :goto_b

    :cond_f
    const/4 v5, 0x3

    const/4 v8, 0x4

    .line 73
    aget-byte v6, v2, v3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    and-int/lit16 v6, v7, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget-byte v6, v2, v6

    :goto_b
    const/16 v7, 0x3c

    and-int/2addr v6, v7

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/2addr v5, v4

    move v6, v4

    goto :goto_d

    :cond_10
    const/4 v8, 0x4

    .line 74
    aget-byte v5, v2, v8

    const/4 v6, 0x3

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xc

    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget-byte v7, v2, v6

    :goto_c
    and-int/lit16 v6, v7, 0xf0

    shr-int/2addr v6, v8

    or-int/2addr v5, v6

    add-int/2addr v5, v4

    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_11

    mul-int/lit8 v5, v5, 0x10

    .line 75
    div-int/2addr v5, v10

    .line 76
    :cond_11
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleSize:I

    const-wide/32 v5, 0xf4240

    const/4 v7, 0x0

    .line 77
    aget-byte v8, v2, v7

    const/4 v7, -0x2

    if-eq v8, v7, :cond_14

    const/4 v7, -0x1

    if-eq v8, v7, :cond_13

    const/16 v7, 0x1f

    if-eq v8, v7, :cond_12

    const/4 v7, 0x4

    .line 78
    aget-byte v3, v2, v7

    and-int/2addr v3, v4

    const/4 v8, 0x6

    shl-int/2addr v3, v8

    const/4 v9, 0x5

    aget-byte v2, v2, v9

    goto :goto_f

    :cond_12
    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 79
    aget-byte v9, v2, v9

    and-int/2addr v3, v9

    shl-int/2addr v3, v7

    aget-byte v2, v2, v8

    goto :goto_e

    :cond_13
    const/4 v7, 0x4

    .line 80
    aget-byte v8, v2, v7

    and-int/2addr v8, v3

    shl-int/lit8 v7, v8, 0x4

    aget-byte v2, v2, v3

    move v3, v7

    :goto_e
    const/16 v7, 0x3c

    and-int/2addr v2, v7

    goto :goto_10

    :cond_14
    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    .line 81
    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v8

    aget-byte v2, v2, v7

    :goto_f
    and-int/lit16 v2, v2, 0xfc

    :goto_10
    const/4 v7, 0x2

    shr-int/2addr v2, v7

    or-int/2addr v2, v3

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    mul-long/2addr v2, v5

    .line 82
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 83
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 84
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v4, 0x12

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v2, 0x2

    .line 85
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    .line 86
    :cond_15
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_18

    .line 87
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    or-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const v5, 0x7ffe8001

    if-eq v2, v5, :cond_17

    const v5, -0x180fe80

    if-eq v2, v5, :cond_17

    const v5, 0x1fffe800

    if-eq v2, v5, :cond_17

    const v5, -0xe0ff18

    if-ne v2, v5, :cond_16

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    move v5, v4

    :goto_12
    if-eqz v5, :cond_15

    .line 89
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 90
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    .line 91
    aput-byte v5, v3, v6

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 92
    aput-byte v5, v3, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x2

    .line 93
    aput-byte v5, v3, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x3

    .line 94
    aput-byte v2, v3, v5

    const/4 v2, 0x4

    .line 95
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    const/4 v7, 0x0

    .line 96
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    move v8, v4

    goto :goto_13

    :cond_18
    const/4 v7, 0x0

    move v8, v7

    :goto_13
    if-eqz v8, :cond_0

    .line 97
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public final createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->bytesRead:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
