.class public final Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# instance fields
.field public final dataEndPosition:J

.field public durationUs:J

.field public final positions:Lcom/google/android/exoplayer2/util/LongArray;

.field public final timesUs:Lcom/google/android/exoplayer2/util/LongArray;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    .line 3
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    const-wide/16 p5, 0x0

    .line 6
    invoke-virtual {p1, p5, p6}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 7
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    return-void
.end method


# virtual methods
.method public final getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;J)I

    move-result v0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide p0

    invoke-direct {p2, v2, v3, p0, p1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 9
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 10
    invoke-direct {p0, v1, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final getTimeUs(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->positions:Lcom/google/android/exoplayer2/util/LongArray;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Lcom/google/android/exoplayer2/util/LongArray;J)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isTimeUsInIndex(J)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->timesUs:Lcom/google/android/exoplayer2/util/LongArray;

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
