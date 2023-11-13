.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field public currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public abstract selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 2
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 3
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v14, 0x0

    move v7, v14

    :goto_0
    if-ge v7, v4, :cond_0

    .line 4
    iget v8, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v9, v5, v7

    .line 5
    new-array v8, v8, [[I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, v0

    new-array v15, v4, [I

    move v7, v14

    :goto_1
    if-ge v7, v4, :cond_1

    .line 7
    aget-object v8, v0, v7

    invoke-interface {v8}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v8

    aput v8, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v4, v14

    .line 8
    :goto_2
    iget v7, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v7, :cond_a

    .line 9
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 10
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v8, v8, v14

    .line 11
    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    move v8, v14

    .line 12
    :goto_3
    array-length v9, v0

    move v12, v3

    move v10, v14

    move v11, v10

    .line 13
    :goto_4
    array-length v13, v0

    if-ge v10, v13, :cond_7

    .line 14
    aget-object v13, v0, v10

    move v3, v14

    .line 15
    :goto_5
    iget v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v1, :cond_3

    .line 16
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v14

    .line 17
    invoke-interface {v13, v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 18
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 19
    :cond_3
    aget v1, v2, v10

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v11, :cond_5

    if-ne v3, v11, :cond_6

    if-eqz v8, :cond_6

    if-nez v12, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v12, v1

    move v11, v3

    move v9, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v14, 0x0

    goto :goto_4

    .line 20
    :cond_7
    array-length v1, v0

    if-ne v9, v1, :cond_8

    .line 21
    iget v1, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v1, [I

    goto :goto_8

    .line 22
    :cond_8
    aget-object v1, v0, v9

    .line 23
    iget v3, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [I

    const/4 v8, 0x0

    .line 24
    :goto_7
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v10, :cond_9

    .line 25
    iget-object v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v10, v10, v8

    .line 26
    invoke-interface {v1, v10}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v10

    aput v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 27
    :goto_8
    aget v3, v2, v9

    .line 28
    aget-object v8, v5, v9

    aput-object v7, v8, v3

    .line 29
    aget-object v7, v6, v9

    aput-object v1, v7, v3

    .line 30
    aget v1, v2, v9

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 31
    :cond_a
    array-length v1, v0

    new-array v10, v1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 32
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 33
    array-length v1, v0

    new-array v9, v1, [I

    const/4 v1, 0x0

    .line 34
    :goto_9
    array-length v4, v0

    if-ge v1, v4, :cond_b

    .line 35
    aget v4, v2, v1

    .line 36
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, v5, v1

    .line 37
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v7, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v7, v10, v1

    .line 38
    aget-object v7, v6, v1

    .line 39
    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v6, v1

    .line 40
    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    .line 41
    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v4

    aput v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 42
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 43
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 44
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v13, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v7, v0

    move-object v11, v15

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    move-object/from16 v1, p0

    .line 46
    invoke-virtual {v1, v0, v6, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;

    move-result-object v1

    .line 47
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 48
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v5, 0x0

    .line 49
    :goto_a
    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v5, v6, :cond_f

    .line 50
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, v5

    .line 51
    aget-object v7, v2, v5

    const/4 v8, 0x0

    .line 52
    :goto_b
    iget v9, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_e

    .line 53
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 54
    iget v10, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v11, v10, [I

    .line 55
    new-array v10, v10, [Z

    const/4 v12, 0x0

    .line 56
    :goto_c
    iget v13, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_d

    .line 57
    invoke-virtual {v0, v5, v8, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v13

    aput v13, v11, v12

    if-eqz v7, :cond_c

    .line 58
    invoke-interface {v7}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 59
    invoke-interface {v7, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    move v13, v3

    goto :goto_d

    :cond_c
    const/4 v13, 0x0

    .line 60
    :goto_d
    aput-boolean v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 61
    :cond_d
    iget-object v12, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v12, v12, v5

    .line 62
    new-instance v13, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-direct {v13, v9, v11, v12, v10}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V

    invoke-virtual {v4, v13}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 63
    :cond_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v3, 0x0

    .line 64
    :goto_e
    iget v5, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v5, :cond_10

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 66
    iget v6, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v6, v6, [I

    const/4 v7, 0x0

    .line 67
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 68
    iget-object v8, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v8, v8, v7

    .line 69
    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    .line 70
    iget v9, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v9, v9, [Z

    .line 71
    new-instance v10, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-direct {v10, v5, v6, v8, v9}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V

    invoke-virtual {v4, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 72
    :cond_10
    new-instance v2, Lcom/google/android/exoplayer2/TracksInfo;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/TracksInfo;-><init>(Ljava/util/List;)V

    .line 73
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/exoplayer2/RendererConfiguration;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/TracksInfo;Ljava/lang/Object;)V

    return-object v3
.end method
