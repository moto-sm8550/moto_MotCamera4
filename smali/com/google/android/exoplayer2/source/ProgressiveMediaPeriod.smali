.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

.field public static final ICY_METADATA_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field public callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field public final continueLoadingCheckIntervalBytes:J

.field public final customCacheKey:Ljava/lang/String;

.field public final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field public dataType:I

.field public final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field public durationUs:J

.field public enabledTrackCount:I

.field public extractedSamplesCountAtStartOfLoad:I

.field public final handler:Landroid/os/Handler;

.field public haveAudioVideoTracks:Z

.field public icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field public isLive:Z

.field public lastSeekPositionUs:J

.field public length:J

.field public final listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

.field public final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field public final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field public loadingFinished:Z

.field public final maybeFinishPrepareRunnable:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public notifyDiscontinuity:Z

.field public final onContinueLoadingRequestedRunnable:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda3;

.field public pendingDeferredRetry:Z

.field public pendingResetPositionUs:J

.field public prepared:Z

.field public final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field public released:Z

.field public sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

.field public sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field public sampleQueuesBuilt:Z

.field public seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field public seenFirstTrackSelection:Z

.field public trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "icy"

    .line 6
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string v1, "application/x-icy"

    .line 7
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 8
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    .line 9
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 10
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p11

    .line 11
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 13
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 15
    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda3;

    .line 17
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p3, p1, [Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 18
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 19
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const-wide/16 p5, -0x1

    .line 21
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->length:J

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 23
    iput p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    return-void
.end method


# virtual methods
.method public final assertPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final continueLoading(J)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_3

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    move-result p1

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->startLoading()V

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0

    :cond_3
    :goto_2
    return p2
.end method

.method public final copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->length:J

    :cond_0
    return-void
.end method

.method public final discardBuffer(JZ)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v3

    aget-boolean v5, v1, v3

    .line 6
    iget-object v11, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 7
    monitor-enter v4

    .line 8
    :try_start_0
    iget v6, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const-wide/16 v12, -0x1

    if-eqz v6, :cond_4

    iget-object v7, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v8, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v9, v7, v8

    cmp-long v7, p1, v9

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    .line 9
    iget v5, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-eq v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    move-object v5, v4

    move v6, v8

    move-wide v8, p1

    move/from16 v10, p3

    .line 10
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 11
    monitor-exit v4

    goto :goto_3

    .line 12
    :cond_3
    :try_start_1
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    monitor-exit v4

    .line 14
    :goto_3
    invoke-virtual {v11, v12, v13}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v4

    throw v0

    :cond_5
    return-void
.end method

.method public final endTracks()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    .line 5
    iget-wide v11, v3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    cmp-long v0, v11, v5

    if-nez v0, :cond_1

    iget-wide v13, v3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    cmp-long v0, v13, v5

    if-nez v0, :cond_1

    move-wide v13, v1

    goto/16 :goto_5

    :cond_1
    const-wide/high16 v13, -0x8000000000000000L

    .line 6
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    sub-long v15, v1, v11

    xor-long/2addr v11, v1

    xor-long v17, v1, v15

    and-long v11, v11, v17

    cmp-long v0, v11, v5

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v13, v15

    .line 7
    :goto_0
    iget-wide v3, v3, Lcom/google/android/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide v11, 0x7fffffffffffffffL

    add-long v15, v1, v3

    xor-long v17, v1, v15

    xor-long/2addr v3, v15

    and-long v3, v3, v17

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v11, v15

    :goto_1
    cmp-long v0, v13, v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_4

    cmp-long v0, v7, v11

    if-gtz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    cmp-long v5, v13, v9

    if-gtz v5, :cond_5

    cmp-long v5, v9, v11

    if-gtz v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    sub-long v3, v7, v1

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    :goto_4
    move-wide v13, v7

    goto :goto_5

    :cond_7
    if-eqz v3, :cond_9

    :cond_8
    move-wide v13, v9

    :cond_9
    :goto_5
    return-wide v13
.end method

.method public final getBufferedPositionUs()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 8
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v9, v9, v6

    .line 9
    monitor-enter v9

    .line 10
    :try_start_0
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    if-nez v10, :cond_2

    .line 11
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v9, v9, v6

    .line 12
    monitor-enter v9

    .line 13
    :try_start_1
    iget-wide v10, v9, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 14
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v9

    throw p0

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v9

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 18
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    :cond_6
    return-wide v7
.end method

.method public final getExtractedSamplesCount()I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 2
    iget v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getLargestQueuedTimestampUs()J
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, p0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p0, v3

    .line 2
    monitor-enter v4

    .line 3
    :try_start_0
    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 4
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v4

    throw p0

    :cond_0
    return-wide v1
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeFinishPrepare()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 3
    monitor-enter v5

    .line 4
    :try_start_0
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v5, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    if-nez v4, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 7
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 8
    new-array v3, v0, [Z

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v0, :cond_b

    .line 9
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v7, v7, v5

    .line 10
    monitor-enter v7

    .line 11
    :try_start_1
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v8, :cond_4

    move-object v8, v4

    goto :goto_3

    :cond_4
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    monitor-exit v7

    .line 12
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v7, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 14
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 15
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v6

    .line 16
    :goto_5
    aput-boolean v7, v3, v5

    .line 17
    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v7, v10

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 18
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_a

    if-nez v9, :cond_7

    .line 19
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v10, :cond_9

    .line 20
    :cond_7
    iget-object v10, v8, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v10, :cond_8

    .line 21
    new-instance v10, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v11, v2

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_6

    :cond_8
    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v11, v2

    .line 22
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v10

    .line 23
    :goto_6
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 24
    iput-object v10, v8, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 25
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    :cond_9
    if-eqz v9, :cond_a

    .line 26
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a

    iget v9, v8, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v9, v10, :cond_a

    iget v9, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v9, v10, :cond_a

    .line 27
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 28
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 29
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 30
    :cond_a
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v7

    .line 31
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v8

    .line 32
    iput v7, v8, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 33
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 34
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Lcom/google/android/exoplayer2/Format;

    aput-object v7, v6, v2

    invoke-direct {v8, v9, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    .line 35
    monitor-exit v7

    throw p0

    .line 36
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    .line 37
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_c
    :goto_7
    return-void
.end method

.method public final maybeNotifyDownstreamFormat(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v2

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 8
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;J)V

    const/4 p0, 0x1

    .line 9
    aput-boolean p0, v1, p1

    :cond_0
    return-void
.end method

.method public final maybeStartDeferredRetry(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 8
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string v0, "Loading finished before preparation is complete."

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 2
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 4
    iget-object p3, p2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 5
    iget-object p2, p2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 6
    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 9
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 10
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;JJ)V

    if-nez p6, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    aget-object p5, p1, p4

    .line 14
    invoke-virtual {p5, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public final onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 2
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, p4

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result p2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide p3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    add-long/2addr p3, v0

    .line 5
    :goto_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 6
    iget-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$Listener;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isLive:Z

    check-cast p5, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    invoke-virtual {p5, p3, p4, p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;->onSourceInfoRefreshed(JZZ)V

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 9
    iget-object p3, p2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 10
    iget-object p2, p2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 11
    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v2, 0x0

    .line 14
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 15
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/Format;JJ)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public final onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 4
    new-instance v3, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 5
    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 6
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 7
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 8
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 10
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    .line 11
    instance-of v2, v9, Lcom/google/android/exoplayer2/ParserException;

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v2, :cond_3

    instance-of v2, v9, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_3

    instance-of v2, v9, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    if-nez v2, :cond_3

    instance-of v2, v9, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    if-nez v2, :cond_3

    sget v2, Lcom/google/android/exoplayer2/upstream/DataSourceException;->$r8$clinit:I

    move-object v2, v9

    :goto_0
    if-eqz v2, :cond_1

    .line 12
    instance-of v8, v2, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v8, :cond_0

    .line 13
    move-object v8, v2

    check-cast v8, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v8, v8, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    const/16 v10, 0x7d8

    if-ne v8, v10, :cond_0

    move v2, v4

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v8, 0x1388

    .line 15
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v10, v2

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v10, v5

    :goto_3
    cmp-long v2, v10, v5

    if-nez v2, :cond_4

    .line 16
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_4
    move-object v11, v2

    goto/16 :goto_a

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v2

    .line 18
    iget v8, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v2, v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move v8, v7

    .line 19
    :goto_5
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v12, :cond_6

    invoke-interface {v12}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-eqz v5, :cond_6

    goto :goto_7

    .line 20
    :cond_6
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v2

    if-nez v2, :cond_7

    .line 21
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    move v2, v7

    goto :goto_9

    .line 22
    :cond_7
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v5, 0x0

    .line 23
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 24
    iput v7, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v12, v2

    move v13, v7

    :goto_6
    if-ge v13, v12, :cond_8

    aget-object v14, v2, v13

    .line 26
    invoke-virtual {v14, v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 27
    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 28
    iput-wide v5, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 29
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 30
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    goto :goto_8

    .line 31
    :cond_9
    :goto_7
    iput v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    :goto_8
    move v2, v4

    :goto_9
    if-eqz v2, :cond_a

    .line 32
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 33
    invoke-direct {v2, v8, v10, v11}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    goto :goto_4

    .line 34
    :cond_a
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_4

    .line 35
    :goto_a
    iget v2, v11, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    if-eqz v2, :cond_b

    if-ne v2, v4, :cond_c

    :cond_b
    move v7, v4

    :cond_c
    xor-int/lit8 v12, v7, 0x1

    .line 36
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 37
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 38
    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v13

    move-object/from16 v9, p6

    move v10, v12

    .line 39
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V

    if-eqz v12, :cond_d

    .line 40
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v11
.end method

.method public final prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->startLoading()V

    return-void
.end method

.method public final prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 5
    new-instance v4, Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 9
    iput-object p0, v4, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 11
    aput-object p1, v1, v0

    .line 12
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 14
    aput-object v4, p1, v0

    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    return-object v4
.end method

.method public final readDiscontinuity()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final seekToUs(J)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide p1

    .line 8
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 10
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v3

    .line 11
    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-wide p1

    .line 13
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 15
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 18
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 20
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    goto :goto_5

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v2, 0x0

    .line 22
    iput-object v2, v0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 23
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, p0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    .line 24
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->trackState:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 7
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 8
    iget v5, v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 9
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 10
    iget v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 11
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 12
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 14
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 15
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 16
    aget-object v4, p1, v2

    .line 17
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 18
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 19
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 20
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 21
    iget v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 22
    aput-boolean v6, v0, v4

    .line 23
    new-instance v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V

    aput-object v5, p3, v2

    .line 24
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 25
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v4

    .line 26
    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 27
    iget v4, p2, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget p2, p2, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v4, p2

    if-eqz v4, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_c

    .line 29
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 30
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    move p3, v3

    :goto_7
    if-ge p3, p2, :cond_a

    aget-object p4, p1, p3

    .line 33
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 34
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 35
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    goto :goto_a

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 37
    invoke-virtual {p4, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 38
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 39
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 40
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 41
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 42
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method public final startLoading()V
    .locals 14

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 5
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v0, v8, v9}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 10
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide v0, v4, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 11
    iput-wide v8, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 12
    iput-boolean v5, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->sampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 15
    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 16
    iput-wide v8, v5, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->dataType:I

    .line 20
    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    .line 21
    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v12

    .line 22
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 24
    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    move-object v8, v1

    .line 25
    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    const/4 v2, 0x0

    .line 26
    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 27
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->durationUs:J

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method public final suppressRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isPendingReset()Z

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

.method public final track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
