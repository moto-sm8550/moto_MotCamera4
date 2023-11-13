.class public final Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Lcom/google/android/exoplayer2/Format;

.field public formatId:Ljava/lang/String;

.field public hasCRC:Z

.field public final headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public final headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasAC:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1c

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_14

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 7
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v7, :cond_0

    .line 8
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    .line 11
    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 16
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne v1, v6, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 19
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 20
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v7, 0x4

    const v8, 0xffff

    if-ne v5, v8, :cond_5

    const/16 v5, 0x18

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v8, 0x7

    goto :goto_2

    :cond_5
    move v8, v7

    :goto_2
    add-int/2addr v5, v8

    const v8, 0xac41

    if-ne v1, v8, :cond_6

    add-int/lit8 v5, v5, 0x2

    .line 22
    :cond_6
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v8, 0x3

    if-ne v1, v8, :cond_8

    .line 23
    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_8
    const/16 v1, 0xa

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 27
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    if-lez v9, :cond_9

    .line 28
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 29
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v9

    const v10, 0xbb80

    const v11, 0xac44

    if-eqz v9, :cond_a

    move v9, v10

    goto :goto_3

    :cond_a
    move v9, v11

    .line 30
    :goto_3
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v9, v11, :cond_b

    const/16 v11, 0xd

    if-ne v0, v11, :cond_b

    .line 31
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget v0, v1, v0

    goto :goto_6

    :cond_b
    if-ne v9, v10, :cond_11

    .line 32
    sget-object v10, Lcom/google/android/exoplayer2/audio/Ac4Util;->SAMPLE_COUNT:[I

    const/16 v11, 0xe

    if-ge v0, v11, :cond_11

    .line 33
    aget v10, v10, v0

    .line 34
    rem-int/lit8 v1, v1, 0x5

    const/16 v11, 0x8

    if-eq v1, v3, :cond_e

    const/16 v3, 0xb

    if-eq v1, v4, :cond_d

    if-eq v1, v8, :cond_e

    if-eq v1, v7, :cond_c

    goto :goto_5

    :cond_c
    if-eq v0, v8, :cond_f

    if-eq v0, v11, :cond_f

    if-ne v0, v3, :cond_10

    goto :goto_4

    :cond_d
    if-eq v0, v11, :cond_f

    if-ne v0, v3, :cond_10

    goto :goto_4

    :cond_e
    if-eq v0, v8, :cond_f

    if-ne v0, v11, :cond_10

    :cond_f
    :goto_4
    add-int/lit8 v10, v10, 0x1

    :cond_10
    :goto_5
    move v0, v10

    goto :goto_6

    :cond_11
    move v0, v2

    .line 35
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    const-string v3, "audio/ac4"

    if-eqz v1, :cond_12

    iget v7, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v4, v7, :cond_12

    iget v7, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v9, v7, :cond_12

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 37
    :cond_12
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 38
    iput-object v7, v1, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 39
    iput-object v3, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 40
    iput v4, v1, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 41
    iput v9, v1, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 43
    iput-object v3, v1, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 44
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 45
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 47
    :cond_13
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleSize:I

    const-wide/32 v7, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v7

    .line 48
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v7, v3

    div-long/2addr v0, v7

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->sampleDurationUs:J

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 51
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    goto/16 :goto_0

    .line 52
    :cond_14
    :goto_7
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x41

    const/16 v5, 0x40

    if-lez v0, :cond_1a

    .line 53
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v6, 0xac

    if-nez v0, :cond_16

    .line 54
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v6, :cond_15

    move v0, v3

    goto :goto_8

    :cond_15
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_7

    .line 55
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v6, :cond_17

    move v6, v3

    goto :goto_9

    :cond_17
    move v6, v2

    .line 56
    :goto_9
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    if-eq v0, v5, :cond_18

    if-ne v0, v1, :cond_14

    :cond_18
    if-ne v0, v1, :cond_19

    move v0, v3

    goto :goto_a

    :cond_19
    move v0, v2

    .line 57
    :goto_a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    move v0, v3

    goto :goto_b

    :cond_1a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_0

    .line 58
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 60
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, -0x54

    .line 61
    aput-byte v6, v0, v2

    .line 62
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v2, :cond_1b

    goto :goto_c

    :cond_1b
    move v1, v5

    :goto_c
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 63
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method public final createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

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

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->bytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
