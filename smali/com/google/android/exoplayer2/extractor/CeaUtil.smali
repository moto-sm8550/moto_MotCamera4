.class public final Lcom/google/android/exoplayer2/extractor/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# direct methods
.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 10

    .line 1
    :goto_0
    iget v0, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    move v2, v0

    .line 2
    :cond_0
    iget v3, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v4, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v4

    const/16 v4, 0xff

    const/4 v5, -0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    add-int/2addr v2, v3

    if-eq v3, v4, :cond_0

    move v3, v2

    :goto_1
    move v2, v0

    .line 4
    :cond_2
    iget v6, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v7, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_3

    move v2, v5

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v2, v6

    if-eq v6, v4, :cond_2

    .line 6
    :goto_2
    iget v4, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int v6, v4, v2

    if-eq v2, v5, :cond_b

    .line 7
    iget v5, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    sub-int/2addr v5, v4

    if-le v2, v5, :cond_4

    goto :goto_6

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    const/16 v3, 0x8

    if-lt v2, v3, :cond_c

    .line 8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v0

    .line 11
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v3, v8, :cond_6

    .line 12
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_6
    const/16 v9, 0xb5

    if-ne v2, v9, :cond_8

    if-eq v3, v4, :cond_7

    if-ne v3, v8, :cond_8

    :cond_7
    const/4 v2, 0x3

    if-ne v7, v2, :cond_8

    move v2, v1

    goto :goto_4

    :cond_8
    move v2, v0

    :goto_4
    if-ne v3, v4, :cond_a

    const v3, 0x47413934

    if-ne v5, v3, :cond_9

    goto :goto_5

    :cond_9
    move v1, v0

    :goto_5
    and-int/2addr v2, v1

    :cond_a
    if-eqz v2, :cond_c

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_7

    :cond_b
    :goto_6
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget v6, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 16
    :cond_c
    :goto_7
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static consumeCcData(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 3
    iget v1, p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 4
    array-length v2, p3

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 5
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    invoke-interface {v4, p2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p0, v5

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    move v8, v0

    .line 7
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
