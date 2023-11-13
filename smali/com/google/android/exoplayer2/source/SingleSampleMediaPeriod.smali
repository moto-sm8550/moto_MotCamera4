.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final durationUs:J

.field public final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field public final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field public loadingFinished:Z

.field public sampleData:[B

.field public sampleSize:I

.field public final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 8
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance p5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array p2, p2, [Lcom/google/android/exoplayer2/Format;

    const/4 p6, 0x0

    aput-object p4, p2, p6

    const-string p4, ""

    .line 11
    invoke-direct {p5, p4, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object p5, p3, p6

    .line 12
    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 6
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 8
    check-cast v4, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v4

    .line 9
    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v9

    .line 10
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v12, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    const-wide/16 v14, 0x0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/Format;JJ)V

    return v3

    :cond_3
    :goto_1
    return v2
.end method

.method public final discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public final getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public final onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 6
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;JJ)V

    return-void
.end method

.method public final onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 2
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 3
    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->bytesRead:J

    long-to-int p2, p2

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    .line 5
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 10
    new-instance v1, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 11
    iget-object p2, p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 12
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 13
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    const-wide/16 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method public final onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p6

    move/from16 v1, p7

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 2
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 3
    new-instance v3, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    .line 4
    iget-object v4, v2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 5
    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 6
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(Ljava/util/Map;)V

    .line 7
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 8
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    .line 9
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

    .line 10
    instance-of v8, v2, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v8, :cond_0

    .line 11
    move-object v8, v2

    check-cast v8, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v8, v8, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    const/16 v10, 0x7d8

    if-ne v8, v10, :cond_0

    move v2, v4

    goto :goto_1

    .line 12
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
    add-int/lit8 v2, v1, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v8, 0x1388

    .line 13
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v10, v2

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v10, v5

    :goto_3
    cmp-long v2, v10, v5

    if-eqz v2, :cond_5

    .line 14
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 15
    check-cast v5, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v5

    if-lt v1, v5, :cond_4

    goto :goto_4

    :cond_4
    move v1, v7

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v4

    .line 16
    :goto_5
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    .line 17
    invoke-static {v1, v2, v9}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 19
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_7

    .line 20
    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 21
    invoke-direct {v1, v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    goto :goto_6

    .line 22
    :cond_7
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_6
    move-object v11, v1

    .line 23
    iget v1, v11, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->type:I

    if-eqz v1, :cond_8

    if-ne v1, v4, :cond_9

    :cond_8
    move v7, v4

    :cond_9
    xor-int/lit8 v12, v7, 0x1

    .line 24
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    const-wide/16 v13, 0x0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-wide v5, v13

    move-object/from16 v9, p6

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V

    if-eqz v12, :cond_a

    .line 25
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v11
.end method

.method public final prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final seekToUs(J)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    .line 3
    iget v2, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    aput-object v2, p3, v0

    .line 5
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 9
    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method
