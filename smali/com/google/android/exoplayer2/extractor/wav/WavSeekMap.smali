.class public final Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;
.super Ljava/lang/Object;
.source "WavSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# instance fields
.field public final blockCount:J

.field public final durationUs:J

.field public final firstBlockPosition:J

.field public final framesPerBlock:I

.field public final wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/wav/WavFormat;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->framesPerBlock:I

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->firstBlockPosition:J

    sub-long/2addr p5, p3

    .line 5
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockCount:J

    .line 6
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public final blockIndexToTimeUs(J)J
    .locals 8

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, p0

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v4, v0, v2

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockCount:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 3
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    int-to-long v6, v6

    mul-long/2addr v6, v0

    add-long/2addr v6, v4

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v4

    .line 5
    new-instance v8, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    .line 6
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockCount:J

    sub-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v0, v2

    .line 7
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->firstBlockPosition:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    add-long/2addr v2, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide p0

    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p2, p0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v8, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 11
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 12
    invoke-direct {p0, v8, v8}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
