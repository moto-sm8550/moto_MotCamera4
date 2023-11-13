.class public final Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

.field public bytesToNextTagHeader:I

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public mediaTagTimestampOffsetUs:J

.field public final metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

.field public outputFirstSample:Z

.field public outputSeekMap:Z

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public state:I

.field public final tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public tagDataSize:I

.field public final tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field public videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->INSTANCE:Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final ensureReadyForMediaOutput()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_0
    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public final prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 3
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object p0
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eq v2, v9, :cond_d

    const/4 v10, 0x3

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_a

    if-ne v2, v8, :cond_9

    .line 3
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    .line 4
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v2, v14

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 6
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 7
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 8
    :goto_1
    iget v14, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    if-ne v14, v4, :cond_3

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 10
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v2

    goto :goto_2

    :cond_3
    if-ne v14, v5, :cond_4

    .line 11
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 13
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v4, 0x12

    if-ne v14, v4, :cond_6

    .line 14
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v4, :cond_6

    .line 15
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z

    move-result v2

    .line 16
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 17
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_5

    .line 18
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v15, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    .line 19
    iget-object v12, v3, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    .line 20
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 21
    invoke-direct {v15, v12, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 22
    invoke-interface {v14, v15}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 23
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_5
    :goto_2
    move v3, v9

    goto :goto_3

    .line 24
    :cond_6
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    move v2, v7

    move v3, v2

    .line 25
    :goto_3
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 26
    iput-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    .line 27
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;

    .line 28
    iget-wide v4, v2, Lcom/google/android/exoplayer2/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_7

    .line 29
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v12, v4

    goto :goto_4

    :cond_7
    const-wide/16 v12, 0x0

    :goto_4
    iput-wide v12, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    .line 30
    :cond_8
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 31
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    if-eqz v3, :cond_0

    return v7

    .line 32
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 33
    :cond_a
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 34
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v4, 0xb

    .line 35
    invoke-interface {v1, v2, v7, v4, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 36
    :cond_b
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 37
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagType:I

    .line 38
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 39
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 40
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v4, v2

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 41
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    move v7, v9

    :goto_5
    if-nez v7, :cond_0

    return v3

    .line 43
    :cond_c
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 44
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 45
    iput v10, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    goto/16 :goto_0

    .line 46
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 47
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 48
    invoke-interface {v1, v2, v7, v5, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_7

    .line 49
    :cond_e
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 50
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 51
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_f

    move v10, v9

    goto :goto_6

    :cond_f
    move v10, v7

    :goto_6
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    move v7, v9

    :cond_10
    if-eqz v10, :cond_11

    .line 52
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    if-nez v2, :cond_11

    .line 53
    new-instance v2, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 54
    invoke-interface {v10, v4, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;

    :cond_11
    if-eqz v7, :cond_12

    .line 55
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    if-nez v2, :cond_12

    .line 56
    new-instance v2, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 57
    invoke-interface {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;

    .line 58
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 59
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 60
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    move v7, v9

    :goto_7
    if-nez v7, :cond_0

    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 2
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->state:I

    .line 4
    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    .line 9
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    .line 14
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 17
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 20
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 21
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 23
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
