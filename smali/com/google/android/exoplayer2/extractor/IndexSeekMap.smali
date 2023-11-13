.class public final Lcom/google/android/exoplayer2/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "IndexSeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# instance fields
.field public final durationUs:J

.field public final isSeekable:Z

.field public final positions:[J

.field public final timesUs:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    array-length v0, p2

    if-lez v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 4
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    if-eqz v1, :cond_2

    .line 5
    aget-wide v4, p2, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 6
    new-array v4, v1, [J

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    .line 7
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    .line 8
    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {p2, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 10
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    .line 12
    :goto_2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    .line 3
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZ)I

    move-result v0

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->positions:[J

    aget-wide v6, p0, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-eqz p1, :cond_2

    .line 7
    array-length p1, v3

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    add-int/2addr v0, v1

    aget-wide v3, v3, v0

    aget-wide v0, p0, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 9
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 10
    :cond_2
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 11
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;->isSeekable:Z

    return p0
.end method
