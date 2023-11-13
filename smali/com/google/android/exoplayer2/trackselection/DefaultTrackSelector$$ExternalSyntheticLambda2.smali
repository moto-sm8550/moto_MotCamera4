.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$1:[I

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda2;->f$1:[I

    .line 1
    aget v10, v0, p1

    .line 2
    iget v0, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    iget v1, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v2, v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    const/4 v11, -0x1

    const v12, 0x7fffffff

    if-eq v0, v12, :cond_7

    if-ne v1, v12, :cond_0

    goto/16 :goto_5

    :cond_0
    move v4, v12

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v5, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v5, :cond_6

    .line 4
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v5, v5, v3

    .line 5
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v6, :cond_5

    iget v7, v5, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_5

    if-eqz v2, :cond_3

    if-le v6, v7, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-le v0, v1, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eq v15, v13, :cond_3

    move v13, v0

    move v15, v1

    goto :goto_3

    :cond_3
    move v15, v0

    move v13, v1

    :goto_3
    mul-int v14, v6, v13

    mul-int v12, v7, v15

    if-lt v14, v12, :cond_4

    .line 6
    new-instance v7, Landroid/graphics/Point;

    sget v13, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 7
    div-int/2addr v12, v6

    .line 8
    invoke-direct {v7, v15, v12}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 9
    :cond_4
    new-instance v6, Landroid/graphics/Point;

    sget v12, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int/2addr v14, v7

    add-int/2addr v14, v11

    .line 10
    div-int/2addr v14, v7

    .line 11
    invoke-direct {v6, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    move-object v7, v6

    .line 12
    :goto_4
    iget v6, v5, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v12, v6, v5

    .line 13
    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148

    mul-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v6, v13, :cond_5

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v14

    float-to-int v6, v6

    if-lt v5, v6, :cond_5

    if-ge v12, v4, :cond_5

    move v4, v12

    :cond_5
    add-int/lit8 v3, v3, 0x1

    const v12, 0x7fffffff

    goto :goto_0

    :cond_6
    move v12, v4

    goto :goto_6

    :cond_7
    :goto_5
    const v12, 0x7fffffff

    .line 14
    :goto_6
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 15
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_7
    iget v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v0, :cond_d

    .line 17
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v14

    .line 18
    iget v1, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v11, :cond_9

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v0, v11, :cond_8

    goto :goto_8

    :cond_8
    mul-int/2addr v1, v0

    goto :goto_9

    :cond_9
    :goto_8
    move v1, v11

    :goto_9
    const v7, 0x7fffffff

    if-eq v12, v7, :cond_b

    if-eq v1, v11, :cond_a

    if-gt v1, v12, :cond_a

    goto :goto_a

    :cond_a
    const/16 v16, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/16 v16, 0x1

    .line 19
    :goto_b
    new-instance v17, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    aget v5, p3, v14

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move-object v4, v9

    move v6, v10

    move/from16 v18, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IIZ)V

    add-int/lit8 v0, v15, 0x1

    .line 20
    array-length v1, v13

    if-ge v1, v0, :cond_c

    .line 21
    array-length v1, v13

    .line 22
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 23
    :cond_c
    aput-object v17, v13, v15

    add-int/lit8 v14, v14, 0x1

    move v15, v0

    goto :goto_7

    .line 24
    :cond_d
    invoke-static {v13, v15}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
