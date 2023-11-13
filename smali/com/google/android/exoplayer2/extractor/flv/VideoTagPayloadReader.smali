.class public final Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# instance fields
.field public frameType:I

.field public hasOutputFormat:Z

.field public hasOutputKeyframe:Z

.field public final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 3
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const/16 v0, 0x27

    const-string v1, "Video format not supported: "

    .line 4
    invoke-static {v0, v1, p1}, Lbd$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    add-long v5, v1, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    sub-int/2addr v1, v3

    .line 6
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    iget v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    .line 9
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object p1

    .line 11
    iget v0, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string/jumbo v1, "video/avc"

    .line 13
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 14
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 15
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 16
    iget v1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->width:I

    .line 17
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 18
    iget v1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->height:I

    .line 19
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 20
    iget v1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 21
    iput v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 22
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 23
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 24
    new-instance p1, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 26
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    .line 27
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_4

    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p2, :cond_1

    move v7, p2

    goto :goto_0

    :cond_1
    move v7, p3

    .line 29
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_2

    if-nez v7, :cond_2

    return p3

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 32
    aput-byte p3, v0, p3

    .line 33
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 34
    aput-byte p3, v0, v1

    .line 35
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v8, p3

    .line 36
    :goto_1
    iget v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v3, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 37
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 38
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 39
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 41
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 43
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v8, v8, 0x4

    .line 44
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, p1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/2addr v8, v2

    goto :goto_1

    .line 45
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 46
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p2

    :cond_4
    return p3
.end method
