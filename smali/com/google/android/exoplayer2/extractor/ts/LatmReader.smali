.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public audioMuxVersionA:I

.field public bytesRead:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public frameLengthType:I

.field public final language:Ljava/lang/String;

.field public numSubframes:I

.field public otherDataLenBits:J

.field public otherDataPresent:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public final sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public sampleDurationUs:J

.field public sampleRateHz:I

.field public sampleSize:I

.field public secondHeaderByte:I

.field public state:I

.field public streamMuxRead:Z

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 6
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public static latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1e

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1b

    const/4 v2, 0x3

    const/16 v6, 0x8

    if-eq v1, v4, :cond_19

    if-ne v1, v2, :cond_18

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_f

    .line 11
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v7, :cond_e

    if-ne v1, v3, :cond_2

    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x6

    .line 16
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    const/4 v8, 0x4

    .line 17
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    if-nez v1, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v9

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v10

    .line 21
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    add-int/lit8 v9, v10, 0x7

    .line 22
    div-int/2addr v9, v6

    new-array v9, v9, [B

    .line 23
    invoke-virtual {v0, v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BI)V

    .line 24
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 25
    iput-object v11, v10, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string v11, "audio/mp4a-latm"

    .line 26
    iput-object v11, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 27
    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 28
    iput-object v11, v10, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 29
    iget v11, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 30
    iput v11, v10, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 31
    iget v11, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 32
    iput v11, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 33
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 34
    iput-object v9, v10, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 35
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 36
    iput-object v9, v10, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 37
    new-instance v9, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 38
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 39
    iput-object v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->format:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v10, 0x3d090000

    .line 40
    iget v12, v9, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 41
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v9

    long-to-int v9, v9

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v10

    sub-int/2addr v9, v10

    .line 44
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 45
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v9, :cond_9

    if-eq v9, v3, :cond_8

    if-eq v9, v2, :cond_7

    if-eq v9, v8, :cond_7

    const/4 v2, 0x5

    if-eq v9, v2, :cond_7

    if-eq v9, v7, :cond_6

    const/4 v2, 0x7

    if-ne v9, v2, :cond_5

    goto :goto_3

    .line 46
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 47
    :cond_6
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    .line 48
    :cond_7
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    :cond_8
    const/16 v2, 0x9

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    .line 50
    :cond_9
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 51
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v7, 0x0

    .line 52
    iput-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    if-eqz v2, :cond_b

    if-ne v1, v3, :cond_a

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->latmGetValue(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_5

    .line 54
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 55
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v2, v6

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v1, :cond_a

    .line 56
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 57
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_6

    .line 58
    :cond_c
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 59
    :cond_d
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 60
    :cond_e
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 61
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v1, :cond_10

    goto :goto_9

    .line 62
    :cond_10
    :goto_6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v1, :cond_17

    .line 63
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->numSubframes:I

    if-nez v1, :cond_16

    .line 64
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v1, :cond_15

    move v1, v5

    .line 65
    :goto_7
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int v11, v1, v2

    const/16 v1, 0xff

    if-eq v2, v1, :cond_14

    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_11

    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_8

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 69
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    mul-int/lit8 v2, v11, 0x8

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits([BI)V

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 72
    :goto_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 73
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v1

    if-eqz v1, :cond_12

    .line 74
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 75
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 76
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v1, :cond_13

    .line 77
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 78
    :cond_13
    :goto_9
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_14
    move v1, v11

    goto :goto_7

    .line 79
    :cond_15
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 80
    :cond_16
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 81
    :cond_17
    invoke-static {v4, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 82
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 83
    :cond_19
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleSize:I

    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 85
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 86
    array-length v3, v3

    if-le v0, v3, :cond_1a

    .line 87
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleBitArray:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleDataBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 89
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    array-length v3, v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 92
    :cond_1a
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->bytesRead:I

    .line 93
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    .line 94
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v3, 0xe0

    if-ne v1, v3, :cond_1c

    .line 95
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 96
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1c
    if-eq v0, v2, :cond_0

    .line 97
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    .line 98
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 99
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

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

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 4
    iget v2, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->sampleRateHz:I

    .line 5
    iget v1, v1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->channelCount:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final seek()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->state:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->timeUs:J

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
