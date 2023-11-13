.class public final Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# instance fields
.field public final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final onSeekFinished()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public final searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 6
    invoke-interface {v6, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v4

    move-wide v8, v5

    .line 8
    :goto_0
    iget v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v11, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v11

    const/4 v12, 0x4

    if-lt v10, v12, :cond_e

    .line 9
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 10
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v10

    const/4 v11, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 11
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 13
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ts/PsDurationReader;->readScrValueFromPack(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_4

    .line 14
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->scrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_2

    cmp-long v0, v8, v5

    if-nez v0, :cond_1

    .line 15
    invoke-static {v14, v15, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    .line 17
    iget v0, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 18
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    goto/16 :goto_3

    .line 19
    :cond_3
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move v7, v4

    move-wide v8, v14

    .line 20
    :cond_4
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 21
    iget v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v10, v4, v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 22
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 23
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 25
    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v15, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v14, v15

    if-ge v14, v10, :cond_6

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    iget v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v14

    if-ge v10, v12, :cond_7

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 30
    :cond_7
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 31
    invoke-static {v10, v14}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-ne v10, v14, :cond_9

    .line 32
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 34
    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v15, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v14, v15

    if-ge v14, v10, :cond_8

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 36
    :cond_8
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    :cond_9
    :goto_1
    iget v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v14

    if-lt v10, v12, :cond_d

    .line 38
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 39
    invoke-static {v10, v14}, Lcom/google/android/exoplayer2/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v10

    if-eq v10, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v10, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v10, v10, 0x8

    if-eq v10, v11, :cond_b

    goto :goto_2

    .line 40
    :cond_b
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    iget v10, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v14

    const/4 v14, 0x2

    if-ge v10, v14, :cond_c

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 43
    :cond_c
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 44
    iget v14, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 45
    iget v15, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v15, v10

    .line 46
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 47
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 48
    :cond_d
    :goto_2
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    goto/16 :goto_0

    :cond_e
    cmp-long v0, v8, v5

    if-eqz v0, :cond_f

    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 49
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    goto :goto_3

    .line 50
    :cond_f
    sget-object v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    :goto_3
    return-object v0
.end method
