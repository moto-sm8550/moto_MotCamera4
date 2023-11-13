.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field public static final INDEX_TABLE:[I

.field public static final STEP_TABLE:[I


# instance fields
.field public final decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final framesPerBlock:I

.field public final inputData:[B

.field public outputFrameCount:J

.field public pendingInputBytes:I

.field public pendingOutputBytes:I

.field public startTimeUs:J

.field public final targetSampleSizeFrames:I

.field public final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    .line 5
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 6
    iget-object v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->extraData:[B

    .line 7
    array-length v1, v0

    const/4 v1, 0x0

    .line 8
    aget-byte v1, v0, v1

    aget-byte v1, v0, p2

    const/4 v1, 0x2

    .line 9
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 11
    iget v2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 12
    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v4, v2, 0x4

    sub-int v4, v3, v4

    mul-int/lit8 v4, v4, 0x8

    iget v5, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v5, v2

    div-int/2addr v4, v5

    add-int/2addr v4, p2

    if-ne v0, v4, :cond_0

    .line 13
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int p2, p1, v0

    add-int/lit8 p2, p2, -0x1

    .line 14
    div-int/2addr p2, v0

    mul-int/2addr v3, p2

    .line 15
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 16
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    mul-int/lit8 v4, v0, 0x2

    mul-int/2addr v4, v2

    mul-int/2addr v4, p2

    .line 17
    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 18
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v3, p2

    mul-int/lit8 v3, v3, 0x8

    div-int/2addr v3, v0

    .line 19
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v4, "audio/raw"

    .line 20
    iput-object v4, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 21
    iput v3, v0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 22
    iput v3, v0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    mul-int/2addr p1, v1

    mul-int/2addr p1, v2

    .line 23
    iput p1, v0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 24
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 25
    iput p1, v0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 26
    iput p2, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 27
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 28
    new-instance p1, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_0
    const/16 p0, 0x38

    const-string p1, "Expected frames per block: "

    const-string p2, "; got: "

    .line 30
    invoke-static {p0, p1, v4, p2, v0}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 31
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final init(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final numOutputBytesToFrames(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p1, p0

    return p1
.end method

.method public final reset(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int/2addr v1, v2

    const/4 v3, -0x1

    add-int/2addr v1, v3

    .line 4
    div-int/2addr v1, v2

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    move-wide/from16 v6, p2

    if-nez v2, :cond_0

    move v2, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    move v2, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    :goto_0
    if-nez v8, :cond_2

    .line 6
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v9, v2, :cond_2

    sub-int v9, v2, v9

    int-to-long v9, v9

    .line 7
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 8
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {v1, v10, v11, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v9

    if-ne v9, v3, :cond_1

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    goto :goto_0

    .line 10
    :cond_2
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr v1, v2

    if-lez v1, :cond_8

    .line 11
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_7

    const/4 v7, 0x0

    .line 12
    :goto_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v10, v9, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    if-ge v7, v10, :cond_6

    .line 13
    iget-object v11, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    iget v9, v9, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int v12, v6, v9

    mul-int/lit8 v13, v7, 0x4

    add-int/2addr v13, v12

    mul-int/lit8 v12, v10, 0x4

    add-int/2addr v12, v13

    .line 15
    div-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    add-int/lit8 v14, v13, 0x1

    .line 16
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, v2, v13

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    add-int/lit8 v13, v13, 0x2

    .line 17
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v15, 0x58

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 18
    sget-object v16, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v16, v16, v13

    .line 19
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr v4, v6

    mul-int/2addr v4, v10

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x2

    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    .line 20
    aput-byte v15, v11, v4

    add-int/lit8 v15, v4, 0x1

    shr-int/lit8 v5, v14, 0x8

    int-to-byte v5, v5

    .line 21
    aput-byte v5, v11, v15

    const/4 v5, 0x0

    :goto_4
    mul-int/lit8 v15, v9, 0x2

    if-ge v5, v15, :cond_5

    .line 22
    div-int/lit8 v15, v5, 0x8

    .line 23
    div-int/lit8 v18, v5, 0x2

    rem-int/lit8 v18, v18, 0x4

    mul-int/2addr v15, v10

    mul-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v12

    add-int v15, v15, v18

    .line 24
    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    .line 25
    rem-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_3

    and-int/lit8 v15, v15, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v15, v15, 0x4

    :goto_5
    and-int/lit8 v18, v15, 0x7

    mul-int/lit8 v18, v18, 0x2

    const/16 v17, 0x1

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v16

    move-object/from16 v16, v2

    shr-int/lit8 v2, v18, 0x3

    and-int/lit8 v18, v15, 0x8

    if-eqz v18, :cond_4

    neg-int v2, v2

    :cond_4
    add-int/2addr v14, v2

    const/16 v2, -0x8000

    move/from16 p1, v9

    const/16 v9, 0x7fff

    .line 26
    invoke-static {v14, v2, v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v14

    mul-int/lit8 v2, v10, 0x2

    add-int/2addr v4, v2

    and-int/lit16 v2, v14, 0xff

    int-to-byte v2, v2

    .line 27
    aput-byte v2, v11, v4

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v9, v14, 0x8

    int-to-byte v9, v9

    .line 28
    aput-byte v9, v11, v2

    .line 29
    sget-object v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v2, v2, v15

    add-int/2addr v13, v2

    .line 30
    sget-object v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    const/16 v9, 0x58

    const/4 v15, 0x0

    invoke-static {v13, v15, v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v13

    .line 31
    aget v2, v2, v13

    add-int/lit8 v5, v5, 0x1

    move/from16 v9, p1

    move-object/from16 v19, v16

    move/from16 v16, v2

    move-object/from16 v2, v19

    goto :goto_4

    :cond_5
    move-object/from16 v16, v2

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_6
    move-object/from16 v16, v2

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 32
    :cond_7
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr v2, v1

    .line 33
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v4

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 36
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 37
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 38
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 39
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 40
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    .line 42
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt v1, v2, :cond_8

    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_8
    if-eqz v8, :cond_9

    .line 44
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    if-lez v1, :cond_9

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_9
    return v8
.end method

.method public final writeSampleMetadata(I)V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v1, p1, 0x2

    mul-int/2addr v1, v0

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v9, v0, v1

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v1

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    return-void
.end method
