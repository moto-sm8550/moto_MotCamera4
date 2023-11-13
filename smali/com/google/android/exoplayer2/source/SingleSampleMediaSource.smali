.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final durationUs:J

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final timeline:Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

.field public transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    move-object/from16 v2, p2

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    move-object/from16 v2, p3

    .line 4
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    move/from16 v2, p4

    .line 5
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 7
    iput-object v3, v2, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 8
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v3, v2, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    .line 14
    iput-object v3, v2, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "text/x-unknown"

    .line 17
    :goto_0
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 18
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 19
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 20
    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 21
    iput v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 22
    iget v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 23
    iput v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 24
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 25
    iput-object v4, v2, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 26
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v4

    .line 27
    :cond_1
    iput-object v3, v2, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 28
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 29
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    const/16 v23, 0x0

    const/16 v21, 0x0

    const-wide/16 v17, 0x0

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v16

    const-wide/16 v19, -0x1

    .line 31
    iget-object v11, v1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    const/16 v22, 0x1

    const-string v1, "The uri must be set."

    .line 32
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v10, v1

    .line 34
    invoke-direct/range {v10 .. v23}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 35
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 36
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZLcom/google/android/exoplayer2/MediaItem;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    return-void
.end method


# virtual methods
.method public final createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 10

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p2
.end method

.method public final getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public final releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 0

    return-void
.end method
