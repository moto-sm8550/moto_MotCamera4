.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;,
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;
    }
.end annotation


# instance fields
.field public dataEndPosition:J

.field public dataStartPosition:I

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

.field public rf64SampleDataSize:J

.field public state:I

.field public trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method


# virtual methods
.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_12

    const/16 v7, 0x8

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    if-eq v2, v5, :cond_10

    const/4 v11, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v11, :cond_3

    if-ne v2, v4, :cond_2

    .line 4
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v4, v7

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    return v3

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 10
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 11
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const v3, 0x64617461

    .line 12
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToChunk(ILcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 13
    invoke-interface {v1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    .line 15
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 16
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 17
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 18
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    const-wide v11, 0xffffffffL

    cmp-long v5, v2, v11

    if-nez v5, :cond_4

    move-wide v2, v7

    .line 19
    :cond_4
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v7, v5

    add-long/2addr v7, v2

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_5

    .line 21
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long v3, v7, v1

    if-lez v3, :cond_5

    const/16 v3, 0x45

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Data exceeds input length: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    .line 23
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 25
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    .line 26
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {v1, v2, v7, v8}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    .line 28
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return v6

    .line 29
    :cond_6
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const v7, 0x666d7420

    .line 30
    invoke-static {v7, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToChunk(ILcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v7

    .line 31
    iget-wide v8, v7, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v12, 0x10

    cmp-long v8, v8, v12

    if-ltz v8, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 32
    iget-object v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 33
    invoke-interface {v1, v8, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 34
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v8

    .line 36
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v14

    .line 37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v15

    .line 38
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    .line 39
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v16

    .line 40
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v2

    .line 41
    iget-wide v9, v7, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v7, v9

    sub-int/2addr v7, v3

    if-lez v7, :cond_8

    .line 42
    new-array v3, v7, [B

    .line 43
    invoke-interface {v1, v3, v6, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    goto :goto_3

    .line 44
    :cond_8
    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    :goto_3
    move-object/from16 v18, v3

    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v9, v12

    long-to-int v3, v9

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 46
    new-instance v1, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    move-object v12, v1

    move v13, v8

    move/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;-><init>(IIIII[B)V

    const/16 v3, 0x11

    if-ne v8, v3, :cond_9

    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x6

    if-ne v8, v3, :cond_a

    .line 48
    new-instance v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/16 v24, -0x1

    const-string v23, "audio/g711-alaw"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    invoke-direct/range {v19 .. v24}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_7

    :cond_a
    const/4 v3, 0x7

    if-ne v8, v3, :cond_b

    .line 49
    new-instance v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/16 v24, -0x1

    const-string v23, "audio/g711-mlaw"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    invoke-direct/range {v19 .. v24}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_7

    :cond_b
    if-eq v8, v5, :cond_e

    if-eq v8, v11, :cond_c

    const v3, 0xfffe

    if-eq v8, v3, :cond_e

    goto :goto_4

    :cond_c
    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    move/from16 v24, v6

    goto :goto_6

    .line 50
    :cond_e
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v4

    :goto_5
    move/from16 v24, v4

    :goto_6
    if-eqz v24, :cond_f

    .line 51
    new-instance v2, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const-string v23, "audio/raw"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    invoke-direct/range {v19 .. v24}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    .line 52
    :goto_7
    iput v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return v6

    :cond_f
    const/16 v0, 0x28

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 54
    :cond_10
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 55
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 56
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_11

    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_8

    .line 58
    :cond_11
    invoke-interface {v1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 59
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 60
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 61
    invoke-interface {v1, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 62
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v9

    .line 63
    iget-wide v2, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v2, v2

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 64
    :goto_8
    iput-wide v9, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    .line 65
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return v6

    .line 66
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_13

    move v2, v5

    goto :goto_9

    :cond_13
    move v2, v6

    :goto_9
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 67
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    if-eq v2, v3, :cond_14

    .line 68
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 69
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    goto :goto_a

    .line 70
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 71
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 72
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    :goto_a
    return v6

    :cond_15
    const/4 v0, 0x0

    const-string v1, "Unsupported or unrecognized wav file type."

    .line 73
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_1
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
