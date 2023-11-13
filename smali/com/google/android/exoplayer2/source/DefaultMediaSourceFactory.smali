.class public final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
    }
.end annotation


# instance fields
.field public final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public final delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public liveMaxOffsetMs:J

.field public liveMaxSpeed:F

.field public liveMinOffsetMs:J

.field public liveMinSpeed:F

.field public liveTargetOffsetMs:J

.field public loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method

.method public static access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v4, "ssai"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 7
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v2, :cond_c

    .line 8
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v10, "rtsp"

    if-ne v10, v2, :cond_2

    goto :goto_4

    .line 9
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v5, v11, :cond_3

    goto :goto_3

    :cond_3
    move v11, v6

    :goto_1
    if-ge v11, v5, :cond_6

    .line 10
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 11
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_2

    :cond_4
    or-int/lit8 v12, v12, 0x20

    add-int/lit8 v12, v12, -0x61

    int-to-char v12, v12

    const/16 v14, 0x1a

    if-ge v12, v14, :cond_5

    or-int/lit8 v13, v13, 0x20

    add-int/lit8 v13, v13, -0x61

    int-to-char v13, v13

    if-ne v12, v13, :cond_5

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    move v2, v6

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v9

    :goto_5
    if-eqz v2, :cond_7

    goto/16 :goto_7

    .line 12
    :cond_7
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_a

    .line 13
    :cond_8
    invoke-static {v2}, Landroidx/preference/R$color;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".mpd"

    .line 14
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v4, ".m3u8"

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_9

    .line 16
    :cond_a
    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->ISM_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 18
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v4, "format=mpd-time-csf"

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    const-string v4, "format=m3u8-aapl"

    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_c
    const/4 v4, -0x1

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v10, "application/x-rtsp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    move v4, v7

    goto :goto_6

    :sswitch_1
    const-string v10, "application/dash+xml"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    move v4, v8

    goto :goto_6

    :sswitch_2
    const-string v10, "application/vnd.ms-sstr+xml"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_f
    move v4, v9

    goto :goto_6

    :sswitch_3
    const-string v10, "application/x-mpegURL"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_10
    move v4, v6

    :goto_6
    packed-switch v4, :pswitch_data_0

    goto :goto_a

    :goto_7
    :pswitch_0
    move v5, v7

    goto :goto_a

    :goto_8
    :pswitch_1
    move v5, v6

    goto :goto_a

    :cond_11
    :pswitch_2
    move v5, v9

    goto :goto_a

    :goto_9
    :pswitch_3
    move v5, v8

    .line 22
    :cond_12
    :goto_a
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 23
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    if-eqz v4, :cond_13

    move-object v3, v4

    goto :goto_b

    .line 24
    :cond_13
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v4

    if-nez v4, :cond_14

    goto :goto_b

    .line 25
    :cond_14
    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 26
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    if-eqz v4, :cond_15

    .line 27
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 28
    :cond_15
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v4, :cond_16

    .line 29
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 30
    :cond_16
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    const/16 v2, 0x44

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "No suitable media source factory found for content type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 33
    new-instance v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 34
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v7, v10

    if-nez v5, :cond_17

    .line 35
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 36
    iput-wide v7, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 37
    :cond_17
    iget v5, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v7, -0x800001

    cmpl-float v5, v5, v7

    if-nez v5, :cond_18

    .line 38
    iget v5, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 39
    iput v5, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 40
    :cond_18
    iget v5, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_19

    .line 41
    iget v5, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 42
    iput v5, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 43
    :cond_19
    iget-wide v7, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v5, v7, v10

    if-nez v5, :cond_1a

    .line 44
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 45
    iput-wide v7, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 46
    :cond_1a
    iget-wide v7, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v2, v7, v10

    if-nez v2, :cond_1b

    .line 47
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 48
    iput-wide v7, v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 49
    :cond_1b
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V

    .line 50
    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v1

    .line 52
    new-instance v4, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v4, v2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    .line 53
    iput-object v4, v1, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    .line 55
    :cond_1c
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    .line 56
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 57
    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 58
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v9

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 60
    aput-object v2, v4, v6

    .line 61
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_1e

    add-int/lit8 v2, v6, 0x1

    .line 62
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 63
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v7, :cond_1d

    goto :goto_d

    .line 65
    :cond_1d
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    .line 66
    :goto_d
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 67
    new-instance v8, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    invoke-direct {v8, v6, v5, v7, v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Z)V

    .line 68
    aput-object v8, v4, v2

    move v6, v2

    goto :goto_c

    .line 69
    :cond_1e
    new-instance v2, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_1f
    move-object v11, v2

    .line 70
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_20

    iget-wide v4, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v0, :cond_20

    goto :goto_e

    .line 71
    :cond_20
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    .line 72
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v12

    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 73
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v14

    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaItem;->clippingConfiguration:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v16, v3, 0x1

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    move-object v10, v0

    move/from16 v17, v3

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJZZZ)V

    move-object v11, v0

    .line 74
    :goto_e
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 2
    iput-object p1, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 3
    iput-object p1, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-object p0
.end method
