.class public final Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;


# instance fields
.field public basisTimeUs:J

.field public currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public disableSeeking:Z

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public final flags:I

.field public final forcedFirstSampleTimestampUs:J

.field public final gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

.field public final id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

.field public isSeekInProgress:Z

.field public metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public sampleBytesRemaining:I

.field public samplesRead:J

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public seekTimeUs:J

.field public seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

.field public final skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

.field public final synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field public synchronizedHeaderData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;->INSTANCE$1:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public static getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v2, v2, v1

    .line 3
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method


# virtual methods
.method public final computeTimeUs(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Z)V

    return-object v0
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 6
    invoke-interface {p1, p0, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    const/4 v5, -0x1

    goto/16 :goto_22

    .line 5
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const/4 v7, 0x1

    if-nez v2, :cond_28

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v8, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 7
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v9, v9, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {v1, v8, v4, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 9
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v9, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->version:I

    and-int/2addr v9, v7

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    .line 10
    iget v8, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v8, v7, :cond_3

    move v11, v10

    goto :goto_1

    .line 11
    :cond_1
    iget v8, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v8, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 12
    :cond_3
    :goto_1
    iget v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit8 v9, v11, 0x4

    const v12, 0x56425249

    const v13, 0x58696e67

    const v14, 0x496e666f

    if-lt v8, v9, :cond_4

    .line 13
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v13, :cond_6

    if-ne v8, v14, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    const/16 v9, 0x28

    if-lt v8, v9, :cond_5

    .line 16
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v8, v12, :cond_5

    move v8, v12

    goto :goto_2

    :cond_5
    move v8, v4

    :cond_6
    :goto_2
    const-string v9, ", "

    const-wide/32 v15, 0xf4240

    const-wide/16 v17, -0x1

    const/4 v6, 0x2

    if-eq v8, v13, :cond_11

    if-ne v8, v14, :cond_7

    goto/16 :goto_9

    :cond_7
    if-ne v8, v12, :cond_10

    .line 18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    const/16 v3, 0xa

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-gtz v3, :cond_8

    goto :goto_5

    .line 21
    :cond_8
    iget v10, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v4, v3

    const/16 v3, 0x7d00

    if-lt v10, v3, :cond_9

    const/16 v3, 0x480

    goto :goto_3

    :cond_9
    const/16 v3, 0x240

    :goto_3
    move-object/from16 v25, v8

    int-to-long v7, v3

    mul-long v21, v7, v15

    int-to-long v7, v10

    move-wide/from16 v19, v4

    move-wide/from16 v23, v7

    .line 22
    invoke-static/range {v19 .. v24}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v29

    .line 23
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 24
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 25
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 26
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v7, v25

    .line 27
    iget v7, v7, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v7, v7

    add-long/2addr v7, v13

    .line 28
    new-array v10, v3, [J

    .line 29
    new-array v15, v3, [J

    move-wide v0, v13

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v3, :cond_e

    move-wide/from16 v20, v7

    int-to-long v6, v13

    mul-long v6, v6, v29

    move-object/from16 v22, v9

    int-to-long v8, v3

    .line 30
    div-long/2addr v6, v8

    aput-wide v6, v10, v13

    move-wide/from16 v7, v20

    .line 31
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    aput-wide v20, v15, v13

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    :goto_5
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    goto :goto_8

    .line 32
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    goto :goto_7

    .line 33
    :cond_b
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    goto :goto_7

    .line 34
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    goto :goto_7

    .line 35
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    :goto_7
    mul-int/2addr v6, v4

    move v9, v3

    move v14, v4

    int-to-long v3, v6

    add-long/2addr v0, v3

    add-int/lit8 v13, v13, 0x1

    move v3, v9

    move v4, v14

    move-object/from16 v9, v22

    const/4 v6, 0x2

    goto :goto_4

    :cond_e
    move-object/from16 v22, v9

    cmp-long v2, v11, v17

    if-eqz v2, :cond_f

    cmp-long v2, v11, v0

    if-eqz v2, :cond_f

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VbriSeeker"

    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_f
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-object/from16 v26, v2

    move-object/from16 v27, v10

    move-object/from16 v28, v15

    move-wide/from16 v31, v0

    invoke-direct/range {v26 .. v32}, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    goto :goto_6

    .line 39
    :goto_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_e

    :cond_10
    move-object v4, v1

    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_11
    :goto_9
    move-object v4, v1

    move-object v3, v9

    .line 41
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v26

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 42
    iget v7, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 43
    iget v9, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 44
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    and-int/lit8 v12, v10, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 45
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    if-nez v12, :cond_12

    goto/16 :goto_b

    :cond_12
    int-to-long v12, v12

    move/from16 v20, v8

    int-to-long v7, v7

    mul-long v30, v7, v15

    int-to-long v7, v9

    move-wide/from16 v28, v12

    move-wide/from16 v32, v7

    .line 46
    invoke-static/range {v28 .. v33}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v29

    const/4 v7, 0x6

    and-int/lit8 v8, v10, 0x6

    if-eq v8, v7, :cond_13

    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const-wide/16 v31, -0x1

    const/16 v33, 0x0

    move-object/from16 v25, v2

    move/from16 v28, v1

    .line 48
    invoke-direct/range {v25 .. v33}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    goto :goto_c

    .line 49
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v31

    const/16 v7, 0x64

    new-array v8, v7, [J

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_14

    .line 50
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-long v12, v10

    aput-wide v12, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_14
    cmp-long v2, v5, v17

    if-eqz v2, :cond_15

    add-long v9, v26, v31

    cmp-long v2, v5, v9

    if-eqz v2, :cond_15

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x43

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "XING data size mismatch: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XingSeeker"

    .line 52
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_15
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    move-object/from16 v25, v2

    move/from16 v28, v1

    move-object/from16 v33, v8

    invoke-direct/range {v25 .. v33}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    goto :goto_c

    :cond_16
    :goto_b
    move/from16 v20, v8

    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_19

    .line 54
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .line 55
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_17

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v1, v5, :cond_17

    const/4 v1, 0x1

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_19

    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v11, v11, 0x8d

    .line 57
    invoke-interface {v4, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 58
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 59
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 60
    invoke-interface {v4, v1, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 61
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 62
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v5, v3, 0xc

    and-int/lit16 v3, v3, 0xfff

    if-gtz v5, :cond_18

    if-lez v3, :cond_19

    .line 63
    :cond_18
    iput v5, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 64
    iput v3, v1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 65
    :cond_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v2, :cond_1a

    .line 66
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_1a

    move/from16 v8, v20

    if-ne v8, v14, :cond_1a

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v2

    .line 68
    :cond_1a
    :goto_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    if-eqz v1, :cond_1d

    .line 69
    iget-object v3, v1, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v3, v3

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v3, :cond_1d

    .line 70
    iget-object v8, v1, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v8, v8, v7

    .line 71
    instance-of v9, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v9, :cond_1c

    .line 72
    check-cast v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v9

    .line 73
    iget-object v1, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    array-length v1, v1

    add-int/lit8 v3, v1, 0x1

    .line 74
    new-array v7, v3, [J

    .line 75
    new-array v3, v3, [J

    const/4 v11, 0x0

    .line 76
    aput-wide v5, v7, v11

    const-wide/16 v12, 0x0

    .line 77
    aput-wide v12, v3, v11

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    :goto_10
    if-gt v13, v1, :cond_1b

    .line 78
    iget v14, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget-object v15, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    add-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v5, v14

    .line 79
    iget v14, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget-object v15, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    aget v15, v15, v16

    add-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v11, v14

    .line 80
    aput-wide v5, v7, v13

    .line 81
    aput-wide v11, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 82
    :cond_1b
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    invoke-direct {v1, v7, v3, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;-><init>([J[JJ)V

    goto :goto_11

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1d
    const/4 v1, 0x0

    .line 83
    :goto_11
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v3, :cond_1e

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    goto :goto_18

    .line 85
    :cond_1e
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-eqz v3, :cond_21

    if-eqz v1, :cond_1f

    .line 86
    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->durationUs:J

    goto :goto_13

    :cond_1f
    if-eqz v2, :cond_20

    .line 87
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    .line 88
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v17

    move-wide v6, v5

    :goto_12
    move-wide/from16 v10, v17

    goto :goto_14

    .line 89
    :cond_20
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v1

    :goto_13
    move-wide v6, v1

    goto :goto_12

    .line 90
    :goto_14
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    goto :goto_15

    :cond_21
    if-eqz v1, :cond_22

    move-object v2, v1

    goto :goto_15

    :cond_22
    if-eqz v2, :cond_23

    goto :goto_15

    :cond_23
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_25

    .line 92
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_24

    goto :goto_16

    :cond_24
    move-object v1, v2

    goto :goto_18

    .line 93
    :cond_25
    :goto_16
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_17

    :cond_26
    const/4 v1, 0x0

    .line 94
    :goto_17
    invoke-virtual {v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v1

    .line 95
    :goto_18
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 96
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 97
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v5, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 98
    iput-object v5, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v5, 0x1000

    .line 99
    iput v5, v2, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 100
    iget v5, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 101
    iput v5, v2, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 102
    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 103
    iput v3, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 104
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 105
    iput v5, v2, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 106
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 107
    iput v3, v2, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 108
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_27

    const/4 v10, 0x0

    goto :goto_19

    :cond_27
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 109
    :goto_19
    iput-object v10, v2, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 110
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 111
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 112
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_1a

    :cond_28
    move-object v4, v1

    .line 113
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_29

    .line 114
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 115
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_29

    sub-long/2addr v5, v1

    long-to-int v1, v5

    .line 116
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 117
    :cond_29
    :goto_1a
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_30

    .line 118
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 119
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_1f

    .line 120
    :cond_2a
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 121
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 122
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v2, v2

    const v5, -0x1f400

    and-int/2addr v5, v1

    int-to-long v5, v5

    const-wide/32 v7, -0x1f400

    and-long/2addr v2, v7

    cmp-long v2, v5, v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_2f

    .line 123
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    goto/16 :goto_1d

    .line 124
    :cond_2c
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 125
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v5

    if-nez v1, :cond_2d

    .line 126
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 127
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2d

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v1

    .line 129
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v7, v1

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 130
    :cond_2d
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 131
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of v3, v2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v3, :cond_30

    .line 132
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 133
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 134
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    .line 135
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    .line 136
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_1c

    .line 137
    :cond_2e
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 138
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 139
    :goto_1c
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v1, :cond_30

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 141
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    goto :goto_1e

    :cond_2f
    :goto_1d
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 143
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    goto :goto_20

    :cond_30
    :goto_1e
    const/4 v2, 0x1

    .line 144
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v1, v4, v3, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_31

    :goto_1f
    const/4 v4, -0x1

    goto :goto_21

    .line 145
    :cond_31
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v2, :cond_32

    :goto_20
    const/4 v4, 0x0

    goto :goto_21

    .line 146
    :cond_32
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v4

    const/4 v6, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v7, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 148
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 149
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    const/4 v1, 0x0

    .line 150
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    move v4, v1

    :goto_21
    move v5, v4

    const/4 v1, -0x1

    :goto_22
    if-ne v5, v1, :cond_33

    .line 151
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of v1, v1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_33

    .line 152
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v1

    .line 153
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_33

    .line 154
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-object v4, v3

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 155
    iput-wide v1, v4, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    .line 156
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_33
    return v5
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    :cond_0
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method public final synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    .line 1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_4

    .line 3
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    .line 4
    :cond_2
    sget-object v3, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    .line 5
    :goto_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-virtual {v7, v1, v3}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_3

    .line 6
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 7
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v7

    long-to-int v3, v7

    if-nez p2, :cond_5

    .line 8
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3

    :cond_4
    move v3, v5

    :cond_5
    :goto_3
    move v7, v5

    move v8, v7

    move v9, v8

    .line 9
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-lez v8, :cond_6

    goto :goto_7

    .line 10
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 11
    :cond_7
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 12
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-eqz v7, :cond_9

    int-to-long v11, v7

    const v13, -0x1f400

    and-int/2addr v13, v10

    int-to-long v13, v13

    const-wide/32 v15, -0x1f400

    and-long/2addr v11, v15

    cmp-long v11, v13, v11

    if-nez v11, :cond_8

    move v11, v6

    goto :goto_5

    :cond_8
    move v11, v5

    :goto_5
    if-eqz v11, :cond_a

    .line 13
    :cond_9
    invoke-static {v10}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    :cond_a
    add-int/lit8 v7, v9, 0x1

    if-ne v9, v2, :cond_c

    if-eqz p2, :cond_b

    return v5

    :cond_b
    const-string v0, "Searched too many bytes."

    .line 14
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    if-eqz p2, :cond_d

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v8, v3, v7

    .line 16
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_6

    .line 17
    :cond_d
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_6
    move v8, v5

    move v9, v7

    move v7, v8

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v6, :cond_f

    .line 18
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move v7, v10

    goto :goto_9

    :cond_f
    const/4 v10, 0x4

    if-ne v8, v10, :cond_11

    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v3, v9

    .line 19
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_8

    .line 20
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 21
    :goto_8
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v6

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, -0x4

    .line 22
    invoke-interface {v1, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_4
.end method
