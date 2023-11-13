.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field public final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public length:J

.field public volatile loadCanceled:Z

.field public final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field public final loadTaskId:J

.field public pendingExtractorSeek:Z

.field public final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field public final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field public seekTimeUs:J

.field public seenIcyMetadata:Z

.field public final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    const-wide/16 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method


# virtual methods
.method public final buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 15

    move-object v0, p0

    const/4 v4, 0x1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const-wide/16 v9, -0x1

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 4
    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    const/4 v12, 0x6

    .line 5
    sget-object v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    const-string v0, "The uri must be set."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v14, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-wide/from16 v7, p1

    .line 8
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v14
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public final load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_a

    .line 1
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_a

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 3
    invoke-virtual {v1, v13, v14}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 4
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 5
    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 6
    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    .line 7
    iput-object v7, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 8
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 9
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 10
    iget-object v7, v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_1

    .line 11
    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 12
    new-instance v8, Lcom/google/android/exoplayer2/source/IcyDataSource;

    invoke-direct {v8, v6, v7, v1}, Lcom/google/android/exoplayer2/source/IcyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V

    .line 13
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;

    invoke-direct {v7, v0, v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$TrackId;)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v6

    .line 15
    iput-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 16
    sget-object v7, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 17
    check-cast v6, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    :cond_1
    move-object v8, v6

    .line 18
    :goto_1
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 19
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 20
    move-object v7, v6

    check-cast v7, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    invoke-virtual/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 21
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 22
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_2

    .line 23
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v6, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    .line 24
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v7, v6, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v7, :cond_2

    .line 25
    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    .line 26
    iput-boolean v3, v6, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    .line 27
    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_3

    .line 28
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    check-cast v6, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    .line 29
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 30
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 32
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_3
    :goto_2
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_6

    .line 33
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_6

    .line 34
    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 35
    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :goto_3
    :try_start_2
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v5, :cond_5

    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 38
    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    check-cast v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    .line 40
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    .line 43
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    .line 45
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->getCurrentInputPosition()J

    move-result-wide v4

    .line 46
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 47
    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 48
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 49
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 50
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    .line 51
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda3;

    .line 52
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 53
    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :catch_0
    :try_start_6
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    if-ne v2, v3, :cond_7

    move v2, v0

    goto :goto_4

    .line 55
    :cond_7
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v3, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->getCurrentInputPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    .line 56
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v4, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 57
    :cond_8
    :goto_4
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/gson/internal/ConstructorConstructor$5;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eq v2, v3, :cond_9

    .line 58
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v2, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->getCurrentInputPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 59
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    check-cast v3, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 60
    :cond_9
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/gson/internal/ConstructorConstructor$5;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 61
    throw v0

    :cond_a
    return-void
.end method
