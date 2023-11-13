.class public final Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;,
        Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# instance fields
.field public absoluteFirstIndex:I

.field public capacity:I

.field public cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field public final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field public final extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

.field public flags:[I

.field public isLastSampleQueued:Z

.field public largestDiscardedTimestampUs:J

.field public largestQueuedTimestampUs:J

.field public length:I

.field public loggedUnexpectedNonSyncSample:Z

.field public offsets:[J

.field public readPosition:I

.field public relativeFirstIndex:I

.field public final sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

.field public final sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SpannedData<",
            "Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public sizes:[I

.field public sourceIds:[I

.field public startTimeUs:J

.field public timesUs:[J

.field public upstreamAllSamplesAreSyncSamples:Z

.field public upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field public upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field public upstreamFormatRequired:Z

.field public upstreamKeyframeRequired:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p2, p1, [I

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    new-array p2, p1, [J

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    new-array p2, p1, [J

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    new-array p2, p1, [I

    .line 10
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    new-array p2, p1, [I

    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SpannedData;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    const-wide/high16 p1, -0x8000000000000000L

    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 16
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 18
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    return-void
.end method


# virtual methods
.method public final discardSamples(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 8
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    const/4 p1, 0x0

    if-gez v1, :cond_1

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 11
    :goto_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_3

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 12
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 14
    iget p1, v1, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 15
    iput p1, v1, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    :cond_2
    move p1, v3

    goto :goto_0

    .line 16
    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez p1, :cond_5

    .line 17
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final discardToEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 4
    monitor-exit p0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 6
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public final findSampleBefore(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_4

    .line 1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v4, v4, p3

    if-gtz v4, :cond_4

    if-eqz p5, :cond_0

    .line 2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 3
    :cond_0
    aget-wide v3, v3, p1

    cmp-long v1, v3, p3

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 4
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne p1, v3, :cond_3

    move p1, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public final format(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 6
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_1

    .line 10
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 12
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    move v0, v2

    .line 15
    :goto_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    .line 16
    check-cast p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1
.end method

.method public final getLargestTimestamp(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final getRelativeIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public final hasNextSample()Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized isReady(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 3
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v2

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_3

    .line 6
    monitor-exit p0

    return v1

    .line 7
    :cond_3
    :try_start_2
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final mayReadSample(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 4
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    .line 8
    iput v3, v4, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 9
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 10
    :goto_2
    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 13
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v1, v2, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 16
    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    return-void
.end method

.method public final reset(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    .line 5
    monitor-enter v2

    move-object v5, v1

    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 6
    :try_start_0
    iget-object v6, v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v7, v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    .line 7
    iget-object v8, v5, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    aput-object v8, v6, v7

    .line 10
    iget v6, v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/2addr v6, v3

    iput v6, v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 11
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez v6, :cond_1

    :cond_2
    move-object v5, v4

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v2

    .line 14
    iput-object v4, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 15
    iput-object v4, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 16
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget v2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocationLength:I

    .line 17
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v8, 0x0

    .line 18
    iput-wide v8, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->startPosition:J

    int-to-long v10, v2

    add-long/2addr v10, v8

    .line 19
    iput-wide v10, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 21
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    .line 22
    iput-wide v8, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 23
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trim()V

    .line 24
    iput v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 25
    iput v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 26
    iput v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 27
    iput v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 28
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 29
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 30
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 31
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 32
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 34
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    .line 35
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SpannedData;->removeCallback:Lcom/google/android/exoplayer2/util/Consumer;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 36
    :cond_5
    iput v3, v0, Lcom/google/android/exoplayer2/source/SpannedData;->memoizedReadIndex:I

    .line 37
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_6

    .line 38
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 39
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v2

    throw p0
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v0

    .line 5
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    move p1, p2

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 7
    :cond_1
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    .line 9
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    :cond_2
    :goto_0
    return p1
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 5

    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->preAppend(I)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 13
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 14
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    .line 15
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 17
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    return-void

    .line 2
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    :cond_2
    const-wide/16 v3, 0x0

    add-long/2addr p1, v3

    .line 3
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    if-eqz v3, :cond_5

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_5

    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v0, :cond_4

    const-string v0, "SampleQueue"

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_4
    or-int/lit8 p3, p3, 0x1

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 10
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-lez p5, :cond_7

    sub-int/2addr p5, v1

    .line 13
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p5

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v5, v0, p5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p5, v0, p5

    int-to-long v7, p5

    add-long/2addr v5, v7

    cmp-long p5, v5, v3

    if-gtz p5, :cond_6

    move p5, v1

    goto :goto_1

    :cond_6
    move p5, v2

    :goto_1
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :cond_7
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_8

    move p5, v1

    goto :goto_2

    :cond_8
    move p5, v2

    .line 15
    :goto_2
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 16
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 17
    iget p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p5

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aput-wide p1, v0, p5

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aput-wide v3, p1, p5

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aput p4, p1, p5

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aput p3, p1, p5

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p6, p1, p5

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    aput v2, p1, p5

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 25
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SpannedData;->spans:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_9

    move p1, v1

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    if-nez p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_b

    .line 29
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p1

    goto :goto_4

    .line 30
    :cond_b
    sget-object p1, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    .line 31
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/SpannedData;

    .line 32
    iget p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr p3, p4

    .line 33
    new-instance p4, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    iget-object p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 34
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-direct {p4, p5, p1}, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;)V

    .line 36
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/source/SpannedData;->appendSpan(ILjava/lang/Object;)V

    .line 37
    :cond_c
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 38
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_d

    add-int/lit16 p1, p2, 0x3e8

    .line 39
    new-array p3, p1, [I

    .line 40
    new-array p4, p1, [J

    .line 41
    new-array p5, p1, [J

    .line 42
    new-array p6, p1, [I

    .line 43
    new-array v0, p1, [I

    .line 44
    new-array v1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 45
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr p2, v3

    .line 46
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v4, v3, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 53
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v4, v2, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    invoke-static {v4, v2, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    invoke-static {v4, v2, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    invoke-static {v4, v2, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    invoke-static {v4, v2, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 60
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 61
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 62
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 63
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    .line 65
    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;

    iput-object v2, v1, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleDataQueue$AllocationNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit p0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v1, v1, v4

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v5, p3, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v6, p1

    .line 9
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 10
    monitor-exit p0

    return v0

    .line 11
    :cond_1
    :try_start_3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 12
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
