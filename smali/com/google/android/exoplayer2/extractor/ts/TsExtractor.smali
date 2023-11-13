.class public final Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;,
        Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;
    }
.end annotation


# instance fields
.field public bytesSinceLastSync:I

.field public final continuityCounters:Landroid/util/SparseIntArray;

.field public final durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

.field public hasOutputSeekMap:Z

.field public id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

.field public final mode:I

.field public output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

.field public pcrPid:I

.field public pendingSeekToStart:Z

.field public remainingPmts:I

.field public final timestampAdjusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampSearchBytes:I

.field public final trackIds:Landroid/util/SparseBooleanArray;

.field public final trackPids:Landroid/util/SparseBooleanArray;

.field public tracksEnded:Z

.field public tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

.field public final tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    const v1, 0x1b8a0

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x24b8

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 8
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    .line 9
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 11
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    .line 12
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 13
    sget-object v3, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput$1;

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 16
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    return-void
.end method


# virtual methods
.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    .line 2
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    const-wide/16 v13, -0x1

    const/16 v15, 0x47

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_17

    cmp-long v3, v11, v13

    if-eqz v3, :cond_0

    .line 3
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v3, v10, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v13, 0x0

    if-eqz v3, :cond_13

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 5
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    if-nez v6, :cond_13

    .line 6
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    if-gtz v0, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto/16 :goto_b

    .line 8
    :cond_1
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v6, :cond_a

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    .line 10
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v12, v6

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v6, v12

    int-to-long v12, v6

    sub-long/2addr v10, v12

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    cmp-long v8, v12, v10

    if-eqz v8, :cond_2

    .line 12
    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto/16 :goto_7

    .line 13
    :cond_2
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 15
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    invoke-interface {v1, v2, v9, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 18
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 20
    iget v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    add-int/lit16 v8, v6, -0xbc

    :goto_1
    if-lt v8, v2, :cond_9

    .line 21
    iget-object v10, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v11, -0x4

    move v12, v9

    :goto_2
    const/4 v13, 0x4

    if-gt v11, v13, :cond_6

    mul-int/lit16 v13, v11, 0xbc

    add-int/2addr v13, v8

    if-lt v13, v2, :cond_4

    if-ge v13, v6, :cond_4

    .line 22
    aget-byte v13, v10, v13

    if-eq v13, v15, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v12, v7

    const/4 v13, 0x5

    if-ne v12, v13, :cond_5

    move v10, v7

    goto :goto_4

    :cond_4
    :goto_3
    move v12, v9

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move v10, v9

    :goto_4
    if-nez v10, :cond_7

    goto :goto_5

    .line 23
    :cond_7
    invoke-static {v1, v8, v0}, Landroidx/transition/R$id;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v10

    cmp-long v12, v10, v4

    if-eqz v12, :cond_8

    move-wide v4, v10

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 24
    :cond_9
    :goto_6
    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 25
    iput-boolean v7, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    goto/16 :goto_b

    .line 26
    :cond_a
    iget-wide v10, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    cmp-long v6, v10, v4

    if-nez v6, :cond_b

    .line 27
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto/16 :goto_b

    .line 28
    :cond_b
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v6, :cond_10

    .line 29
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v10, v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v6, v10

    .line 30
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    int-to-long v12, v9

    cmp-long v8, v10, v12

    if-eqz v8, :cond_c

    .line 31
    iput-wide v12, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    :goto_7
    move v9, v7

    goto/16 :goto_b

    .line 32
    :cond_c
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 34
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 35
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 36
    invoke-interface {v1, v2, v9, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 37
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 38
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 39
    iget v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_8
    if-ge v2, v6, :cond_f

    .line 40
    iget-object v8, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 41
    aget-byte v8, v8, v2

    if-eq v8, v15, :cond_d

    goto :goto_9

    .line 42
    :cond_d
    invoke-static {v1, v2, v0}, Landroidx/transition/R$id;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v10

    cmp-long v8, v10, v4

    if-eqz v8, :cond_e

    move-wide v4, v10

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 43
    :cond_f
    :goto_a
    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 44
    iput-boolean v7, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    goto :goto_b

    .line 45
    :cond_10
    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_11

    .line 46
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_b

    .line 47
    :cond_11
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    .line 48
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 49
    iput-wide v10, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long v0, v10, v13

    if-gez v0, :cond_12

    const/16 v0, 0x41

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid duration: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". Using TIME_UNSET instead."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TsDurationReader"

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 53
    :cond_12
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    :goto_b
    return v9

    .line 54
    :cond_13
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v3, :cond_15

    .line 55
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    .line 56
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->durationReader:Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;

    .line 57
    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long v4, v7, v4

    if-eqz v4, :cond_14

    .line 58
    new-instance v5, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    .line 59
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 60
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pcrPid:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampSearchBytes:I

    move/from16 v16, v3

    move-object v3, v5

    move-object v15, v5

    move/from16 v17, v6

    move-wide v5, v7

    move-wide v7, v11

    move v13, v9

    move/from16 v9, v17

    move v14, v10

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;JJII)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    .line 61
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 62
    iget-object v4, v15, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->seekMap:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 63
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_c

    :cond_14
    move v13, v9

    move v14, v10

    .line 64
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v7, v8}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_c

    :cond_15
    move v13, v9

    move v14, v10

    .line 65
    :goto_c
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v3, :cond_16

    .line 66
    iput-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v3, 0x0

    .line 67
    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->seek(JJ)V

    .line 68
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_16

    .line 69
    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v3, 0x1

    return v3

    :cond_16
    const/4 v3, 0x1

    .line 70
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 71
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_17
    move v3, v7

    move v13, v9

    move v14, v10

    .line 72
    :cond_18
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 73
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 74
    iget v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    rsub-int v6, v5, 0x24b8

    const/16 v7, 0xbc

    if-ge v6, v7, :cond_1a

    .line 75
    iget v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    sub-int/2addr v2, v5

    if-lez v2, :cond_19

    .line 76
    invoke-static {v4, v5, v4, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_19
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 78
    :cond_1a
    :goto_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 79
    iget v5, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v2, v5, v2

    const/4 v6, -0x1

    if-ge v2, v7, :cond_1c

    rsub-int v2, v5, 0x24b8

    .line 80
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v2

    if-ne v2, v6, :cond_1b

    move v9, v13

    goto :goto_e

    .line 81
    :cond_1b
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr v5, v2

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_d

    :cond_1c
    move v9, v3

    :goto_e
    if-nez v9, :cond_1d

    return v6

    .line 82
    :cond_1d
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 83
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 84
    iget v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 85
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move v5, v2

    :goto_f
    if-ge v5, v4, :cond_1e

    .line 86
    aget-byte v6, v1, v5

    const/16 v7, 0x47

    if-eq v6, v7, :cond_1e

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 87
    :cond_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 v1, v5, 0xbc

    const/4 v6, 0x0

    if-le v1, v4, :cond_20

    .line 88
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 89
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-ne v2, v14, :cond_21

    const/16 v2, 0x178

    if-gt v5, v2, :cond_1f

    goto :goto_10

    :cond_1f
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 90
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 91
    :cond_20
    iput v13, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    .line 92
    :cond_21
    :goto_10
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 93
    iget v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    if-le v1, v4, :cond_22

    return v13

    .line 94
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const/high16 v5, 0x800000

    and-int/2addr v5, v2

    if-eqz v5, :cond_23

    .line 95
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v13

    :cond_23
    const/high16 v5, 0x400000

    and-int/2addr v5, v2

    if-eqz v5, :cond_24

    move v9, v3

    goto :goto_11

    :cond_24
    move v9, v13

    :goto_11
    or-int/lit8 v5, v9, 0x0

    const v7, 0x1fff00

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x8

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_25

    move v9, v3

    goto :goto_12

    :cond_25
    move v9, v13

    :goto_12
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_26

    move v8, v3

    goto :goto_13

    :cond_26
    move v8, v13

    :goto_13
    if-eqz v8, :cond_27

    .line 96
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    :cond_27
    if-nez v6, :cond_28

    .line 97
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v13

    .line 98
    :cond_28
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v8, v14, :cond_2a

    and-int/lit8 v2, v2, 0xf

    .line 99
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 100
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v8, v2, :cond_29

    .line 101
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v13

    :cond_29
    add-int/2addr v8, v3

    and-int/lit8 v8, v8, 0xf

    if-eq v2, v8, :cond_2a

    .line 102
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    :cond_2a
    if-eqz v9, :cond_2c

    .line 103
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 104
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_2b

    move v10, v14

    goto :goto_14

    :cond_2b
    move v10, v13

    :goto_14
    or-int/2addr v5, v10

    .line 105
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sub-int/2addr v2, v3

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    :cond_2c
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    .line 107
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v8, v14, :cond_2e

    if-nez v2, :cond_2e

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    .line 108
    invoke-virtual {v8, v7, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_15

    :cond_2d
    move v9, v13

    goto :goto_16

    :cond_2e
    :goto_15
    move v9, v3

    :goto_16
    if-eqz v9, :cond_2f

    .line 109
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 110
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v6, v7, v5}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 111
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 112
    :cond_2f
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    if-eq v4, v14, :cond_30

    if-nez v2, :cond_30

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v2, :cond_30

    const-wide/16 v4, -0x1

    cmp-long v2, v11, v4

    if-eqz v2, :cond_30

    .line 113
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    .line 114
    :cond_30
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v13
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_5

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, p2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-nez v5, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_3

    :cond_2
    move v5, v0

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 6
    invoke-virtual {v4, p3, p4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->reset(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 9
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    .line 11
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 13
    :cond_7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->bytesSinceLastSync:I

    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    .line 4
    invoke-virtual {p1, p0, v0, v1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    .line 5
    aget-byte v3, p0, v3

    const/16 v5, 0x47

    if-eq v3, v5, :cond_0

    move v2, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFully(I)V

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
