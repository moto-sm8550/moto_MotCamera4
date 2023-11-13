.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field public static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_ORDER:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public final trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda6;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static access$2200(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const-string p2, "-"

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7
    aget-object p0, p0, v0

    .line 8
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 9
    aget-object p1, p1, v0

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isSupported(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

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

.method public static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final maybeUpdateApplicableOverrides(Landroid/util/SparseArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;",
            "I)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p0, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final selectTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Landroid/util/Pair;
    .locals 28
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 2
    iget v9, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    .line 3
    new-array v10, v9, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    .line 4
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;

    move-object/from16 v0, p3

    invoke-direct {v4, v8, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v0, v10, v1

    :cond_0
    const/4 v11, 0x0

    move v0, v11

    .line 6
    :goto_0
    iget v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v1, v1, v0

    if-ne v12, v1, :cond_1

    .line 8
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 9
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v11

    :goto_1
    const/4 v1, 0x1

    .line 10
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Z)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda4;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v2, v10, v1

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v0, v0, v11

    .line 13
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v1, v0

    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 15
    :goto_2
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    aput-object v0, v10, v1

    :cond_5
    move v0, v11

    :goto_3
    if-ge v0, v9, :cond_d

    .line 17
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v1, v1, v0

    if-eq v1, v12, :cond_c

    if-eq v1, v13, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 18
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 19
    aget-object v2, p2, v0

    move v3, v11

    move v5, v3

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 20
    :goto_4
    iget v12, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v12, :cond_a

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    .line 22
    aget-object v16, v2, v3

    move v14, v11

    .line 23
    :goto_5
    iget v11, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v11, :cond_9

    .line 24
    aget v11, v16, v14

    iget-boolean v13, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 25
    iget-object v11, v12, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v11, v11, v14

    .line 26
    new-instance v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;

    move-object/from16 v17, v1

    aget v1, v16, v14

    invoke-direct {v13, v11, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplayer2/Format;I)V

    if-eqz v15, :cond_6

    .line 27
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v1

    if-lez v1, :cond_8

    :cond_6
    move-object v4, v12

    move-object v15, v13

    move v5, v14

    goto :goto_6

    :cond_7
    move-object/from16 v17, v1

    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v17, v1

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    if-nez v4, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    .line 28
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x0

    aput v5, v3, v2

    invoke-direct {v1, v4, v3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    .line 29
    :goto_7
    aput-object v1, v10, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_3

    .line 30
    :cond_d
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    iget v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_f

    .line 32
    iget-object v3, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    .line 33
    :goto_9
    iget v5, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_e

    .line 34
    iget-object v5, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->trackSelectionOverrides:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    .line 36
    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v11}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    .line 37
    invoke-virtual {v6, v0, v5, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeUpdateApplicableOverrides(Landroid/util/SparseArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 38
    :cond_f
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v2, 0x0

    .line 39
    :goto_a
    iget v3, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_10

    .line 40
    iget-object v3, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->trackSelectionOverrides:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 42
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    .line 43
    invoke-virtual {v6, v0, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->maybeUpdateApplicableOverrides(Landroid/util/SparseArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    .line 44
    :goto_b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 45
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 46
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v9, :cond_13

    if-ne v2, v11, :cond_11

    .line 48
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v13, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v14, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 49
    invoke-static {v14}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    aput-object v12, v10, v11

    goto :goto_d

    .line 50
    :cond_11
    iget-object v12, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v12, v12, v11

    if-ne v12, v3, :cond_12

    const/4 v12, 0x0

    .line 51
    aput-object v12, v10, v11

    :cond_12
    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v9, :cond_19

    .line 52
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 53
    iget-object v2, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_15

    .line 55
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_18

    .line 56
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v1, v1, v0

    .line 57
    iget-object v2, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_16

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_17

    const/4 v3, 0x0

    goto :goto_11

    .line 60
    :cond_17
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget v5, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 61
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v5, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v3, v1, v5, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    .line 62
    :goto_11
    aput-object v3, v10, v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v9, :cond_1d

    .line 63
    iget-object v1, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v1, v1, v0

    .line 64
    iget-object v2, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 65
    iget-object v2, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v1, 0x0

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    .line 67
    aput-object v1, v10, v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 68
    :cond_1d
    iget-object v0, v6, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;

    .line 69
    iget-object v1, v6, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 70
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_15
    const-wide/16 v5, 0x0

    if-ge v2, v9, :cond_1f

    .line 73
    aget-object v3, v10, v2

    if-eqz v3, :cond_1e

    aget-object v3, v10, v2

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    const/4 v11, 0x1

    if-le v3, v11, :cond_1e

    .line 74
    sget-object v3, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 75
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 76
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v11, v5, v6, v5, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_16

    :cond_1e
    const/4 v12, 0x0

    .line 78
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    const/4 v12, 0x0

    .line 79
    new-array v2, v9, [[J

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v9, :cond_22

    .line 80
    aget-object v11, v10, v3

    if-nez v11, :cond_20

    const/4 v13, 0x0

    new-array v11, v13, [J

    .line 81
    aput-object v11, v2, v3

    goto :goto_19

    .line 82
    :cond_20
    iget-object v13, v11, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v13, v13

    new-array v13, v13, [J

    aput-object v13, v2, v3

    const/4 v13, 0x0

    .line 83
    :goto_18
    iget-object v14, v11, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v15, v14

    if-ge v13, v15, :cond_21

    .line 84
    aget-object v15, v2, v3

    iget-object v5, v11, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v6, v14, v13

    .line 85
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v6

    .line 86
    iget v5, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    int-to-long v5, v5

    aput-wide v5, v15, v13

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, 0x0

    goto :goto_18

    .line 87
    :cond_21
    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    :goto_19
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v5, 0x0

    goto :goto_17

    .line 88
    :cond_22
    new-array v3, v9, [I

    .line 89
    new-array v5, v9, [J

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v9, :cond_24

    .line 90
    aget-object v11, v2, v6

    array-length v11, v11

    if-nez v11, :cond_23

    const-wide/16 v14, 0x0

    goto :goto_1b

    :cond_23
    aget-object v11, v2, v6

    const/4 v13, 0x0

    aget-wide v14, v11, v13

    :goto_1b
    aput-wide v14, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 91
    :cond_24
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 92
    sget-object v6, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    const-string v11, "expectedValuesPerKey"

    const/4 v13, 0x2

    .line 93
    invoke-static {v13, v11}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 94
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 95
    new-instance v6, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    invoke-direct {v6, v13}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 96
    new-instance v13, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v13, v11, v6}, Lcom/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v9, :cond_2a

    .line 97
    aget-object v11, v2, v6

    array-length v11, v11

    const/4 v14, 0x1

    if-gt v11, v14, :cond_25

    move-object/from16 v19, v5

    goto :goto_21

    .line 98
    :cond_25
    aget-object v11, v2, v6

    array-length v11, v11

    new-array v14, v11, [D

    const/4 v15, 0x0

    .line 99
    :goto_1d
    aget-object v12, v2, v6

    array-length v12, v12

    const-wide/16 v17, 0x0

    if-ge v15, v12, :cond_27

    .line 100
    aget-object v12, v2, v6

    aget-wide v19, v12, v15

    const-wide/16 v21, -0x1

    cmp-long v12, v19, v21

    if-nez v12, :cond_26

    move-object/from16 v19, v5

    goto :goto_1e

    :cond_26
    aget-object v12, v2, v6

    move-object/from16 v19, v5

    aget-wide v4, v12, v15

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    :goto_1e
    aput-wide v17, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v19

    const/4 v4, -0x1

    goto :goto_1d

    :cond_27
    move-object/from16 v19, v5

    add-int/lit8 v11, v11, -0x1

    .line 101
    aget-wide v4, v14, v11

    const/4 v12, 0x0

    aget-wide v20, v14, v12

    sub-double v4, v4, v20

    const/4 v12, 0x0

    :goto_1f
    if-ge v12, v11, :cond_29

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 102
    aget-wide v22, v14, v12

    add-int/lit8 v12, v12, 0x1

    aget-wide v24, v14, v12

    add-double v22, v22, v24

    mul-double v22, v22, v20

    cmpl-double v15, v4, v17

    if-nez v15, :cond_28

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_20

    :cond_28
    const/4 v15, 0x0

    .line 103
    aget-wide v20, v14, v15

    sub-double v22, v22, v20

    div-double v20, v22, v4

    .line 104
    :goto_20
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move-wide/from16 v20, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v15, v4}, Lcom/google/common/collect/AbstractListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-wide/from16 v4, v20

    goto :goto_1f

    :cond_29
    :goto_21
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v19

    const/4 v4, -0x1

    const/4 v12, 0x0

    goto :goto_1c

    :cond_2a
    move-object/from16 v19, v5

    .line 105
    iget-object v4, v13, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    if-nez v4, :cond_2b

    .line 106
    new-instance v4, Lcom/google/common/collect/AbstractMultimap$Values;

    invoke-direct {v4, v13}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    .line 107
    iput-object v4, v13, Lcom/google/common/collect/AbstractMultimap;->values:Lcom/google/common/collect/AbstractMultimap$Values;

    .line 108
    :cond_2b
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    .line 109
    :goto_22
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_2c

    .line 110
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 111
    aget v11, v3, v6

    const/4 v12, 0x1

    add-int/2addr v11, v12

    aput v11, v3, v6

    .line 112
    aget-object v12, v2, v6

    aget-wide v11, v12, v11

    aput-wide v11, v19, v6

    move-object/from16 v6, v19

    .line 113
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_2c
    move-object/from16 v6, v19

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v9, :cond_2e

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 115
    aget-wide v3, v6, v2

    const-wide/16 v11, 0x2

    mul-long/2addr v3, v11

    aput-wide v3, v6, v2

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 116
    :cond_2e
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    const/4 v2, 0x4

    const-string v3, "initialCapacity"

    .line 117
    invoke-static {v2, v3}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 118
    :goto_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_31

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v5, :cond_2f

    .line 120
    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_25

    .line 121
    :cond_2f
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 122
    :goto_25
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    .line 123
    array-length v11, v3

    if-ge v11, v6, :cond_30

    .line 124
    array-length v11, v3

    .line 125
    invoke-static {v11, v6}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 126
    :cond_30
    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_24

    .line 127
    :cond_31
    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 128
    new-array v2, v9, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v9, :cond_35

    .line 129
    aget-object v4, v10, v3

    if-eqz v4, :cond_34

    .line 130
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v5

    if-nez v6, :cond_32

    goto :goto_28

    .line 131
    :cond_32
    array-length v6, v5

    const/4 v11, 0x1

    if-ne v6, v11, :cond_33

    .line 132
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v11, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v12, 0x0

    aget v5, v5, v12

    iget v4, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v6, v11, v5, v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_27

    :cond_33
    const/4 v12, 0x0

    .line 133
    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v4, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 134
    move-object v11, v0

    check-cast v11, Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v11, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v26, v11

    check-cast v26, Lcom/google/common/collect/ImmutableList;

    .line 135
    new-instance v11, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    const/16 v13, 0x2710

    int-to-long v13, v13

    const/16 v15, 0x61a8

    move-wide/from16 v22, v13

    int-to-long v12, v15

    sget-object v27, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/SystemClock;

    move-object/from16 v17, v11

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    move/from16 v20, v4

    move-object/from16 v21, v1

    move-wide/from16 v24, v12

    invoke-direct/range {v17 .. v27}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v6, v11

    .line 136
    :goto_27
    aput-object v6, v2, v3

    :cond_34
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 137
    :cond_35
    new-array v0, v9, [Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v9, :cond_3b

    .line 138
    iget-object v3, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v3, v3, v1

    .line 139
    iget-object v4, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_37

    .line 140
    iget-object v4, v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_2a

    :cond_36
    const/4 v3, 0x0

    goto :goto_2b

    :cond_37
    :goto_2a
    const/4 v3, 0x1

    :goto_2b
    if-nez v3, :cond_39

    .line 141
    iget-object v3, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v3, v3, v1

    const/4 v4, -0x2

    if-eq v3, v4, :cond_38

    .line 142
    aget-object v3, v2, v1

    if-eqz v3, :cond_39

    :cond_38
    const/4 v3, 0x1

    goto :goto_2c

    :cond_39
    const/4 v3, 0x0

    :goto_2c
    if-eqz v3, :cond_3a

    .line 143
    sget-object v12, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_2d

    :cond_3a
    const/4 v12, 0x0

    :goto_2d
    aput-object v12, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 144
    :cond_3b
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 145
    :goto_2e
    iget v5, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v1, v5, :cond_43

    .line 146
    iget-object v5, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v5, v5, v1

    .line 147
    aget-object v6, v2, v1

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3d

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3c

    goto :goto_2f

    :cond_3c
    const/4 v5, -0x1

    goto :goto_33

    :cond_3d
    const/4 v8, 0x2

    :goto_2f
    if-eqz v6, :cond_3c

    .line 148
    aget-object v9, p2, v1

    .line 149
    iget-object v10, v7, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v10, v10, v1

    .line 150
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    const/4 v11, 0x0

    .line 151
    :goto_30
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v12

    if-ge v11, v12, :cond_3f

    .line 152
    aget-object v12, v9, v10

    invoke-interface {v6, v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v13

    aget v12, v12, v13

    const/16 v13, 0x20

    and-int/2addr v12, v13

    if-eq v12, v13, :cond_3e

    const/4 v6, 0x0

    goto :goto_31

    :cond_3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    :cond_3f
    const/4 v6, 0x1

    :goto_31
    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    if-ne v5, v6, :cond_41

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    goto :goto_32

    :cond_40
    move v4, v1

    goto :goto_33

    :cond_41
    const/4 v5, -0x1

    if-eq v3, v5, :cond_42

    :goto_32
    const/4 v1, 0x0

    goto :goto_34

    :cond_42
    move v3, v1

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_43
    const/4 v5, -0x1

    const/4 v1, 0x1

    :goto_34
    if-eq v4, v5, :cond_44

    if-eq v3, v5, :cond_44

    const/4 v11, 0x1

    goto :goto_35

    :cond_44
    const/4 v11, 0x0

    :goto_35
    and-int/2addr v1, v11

    if-eqz v1, :cond_45

    .line 153
    new-instance v1, Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    .line 154
    aput-object v1, v0, v4

    .line 155
    aput-object v1, v0, v3

    .line 156
    :cond_45
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final selectTracksForType(ILcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 3
    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v5, v5, v4

    move/from16 v6, p1

    if-ne v6, v5, :cond_6

    .line 4
    iget-object v5, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v5, v5, v4

    const/4 v7, 0x0

    .line 5
    :goto_1
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_6

    .line 6
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 7
    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    .line 8
    invoke-interface {v10, v4, v8, v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object v9

    .line 9
    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    .line 10
    :goto_2
    iget v13, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_5

    .line 11
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 12
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 13
    aget-boolean v15, v11, v12

    if-nez v15, :cond_4

    if-nez v14, :cond_0

    goto :goto_6

    :cond_0
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 14
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_5

    .line 15
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    .line 17
    :goto_3
    iget v15, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v15, :cond_3

    .line 18
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 19
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 20
    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 22
    aput-boolean v0, v11, v3

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    move-object v13, v14

    .line 23
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    :goto_6
    move/from16 v17, v2

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_0

    .line 24
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p5

    .line 25
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 27
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;

    .line 30
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
