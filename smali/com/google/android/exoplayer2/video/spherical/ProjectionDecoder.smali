.class public final Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;
.super Ljava/lang/Object;
.source "ProjectionDecoder.java"


# direct methods
.method public static parseMshp(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x64666c38

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 4
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    .line 5
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 6
    :try_start_0
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 8
    throw v1

    :cond_2
    const v4, 0x72617720

    if-eq v3, v4, :cond_3

    return-object v2

    .line 9
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget v4, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 11
    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    :goto_1
    if-ge v4, v6, :cond_14

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/2addr v7, v4

    if-le v7, v4, :cond_13

    if-le v7, v6, :cond_4

    goto/16 :goto_d

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v8, 0x6d657368

    if-ne v4, v8, :cond_12

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v8, 0x2710

    if-le v4, v8, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    new-array v8, v4, [F

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 17
    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const/16 v11, 0x7d00

    if-le v10, v11, :cond_7

    :goto_3
    move-object/from16 p0, v3

    goto/16 :goto_7

    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    move-object/from16 p0, v3

    int-to-double v2, v4

    mul-double/2addr v2, v11

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 21
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 22
    iget-object v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 23
    array-length v15, v9

    invoke-direct {v3, v9, v15}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 24
    iget v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/16 v15, 0x8

    mul-int/2addr v9, v15

    .line 25
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    mul-int/lit8 v9, v10, 0x5

    .line 26
    new-array v9, v9, [F

    const/4 v11, 0x5

    new-array v12, v11, [I

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v15, v10, :cond_a

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v11, :cond_9

    .line 27
    aget v19, v12, v1

    .line 28
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    shr-int/lit8 v21, v20, 0x1

    and-int/lit8 v11, v20, 0x1

    neg-int v11, v11

    xor-int v11, v11, v21

    add-int v11, v19, v11

    if-ge v11, v4, :cond_b

    if-gez v11, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v19, v18, 0x1

    .line 29
    aget v20, v8, v11

    aput v20, v9, v18

    .line 30
    aput v11, v12, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v18, v19

    const/4 v11, 0x5

    goto :goto_5

    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x7

    const/4 v11, 0x5

    goto :goto_4

    .line 31
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/4 v2, 0x7

    add-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x8

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/16 v1, 0x20

    .line 32
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 33
    new-array v8, v4, [Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_10

    const/16 v12, 0x8

    .line 34
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v15

    .line 35
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 36
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    const v1, 0x1f400

    if-le v12, v1, :cond_c

    :cond_b
    :goto_7
    move/from16 v20, v5

    move/from16 v19, v6

    goto/16 :goto_a

    :cond_c
    move/from16 v19, v6

    int-to-double v5, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v16

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v6, v12, 0x3

    .line 38
    new-array v6, v6, [F

    mul-int/lit8 v1, v12, 0x2

    .line 39
    new-array v1, v1, [F

    move-object/from16 v21, v1

    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_8
    if-ge v1, v12, :cond_f

    .line 40
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v23

    shr-int/lit8 v24, v23, 0x1

    move-object/from16 v25, v3

    const/16 v20, 0x1

    and-int/lit8 v3, v23, 0x1

    move/from16 v23, v4

    move-object/from16 v4, v21

    neg-int v3, v3

    xor-int v3, v3, v24

    add-int v3, v22, v3

    if-ltz v3, :cond_e

    if-lt v3, v10, :cond_d

    goto :goto_9

    :cond_d
    mul-int/lit8 v21, v1, 0x3

    mul-int/lit8 v22, v3, 0x5

    .line 41
    aget v24, v9, v22

    aput v24, v6, v21

    add-int/lit8 v24, v21, 0x1

    add-int/lit8 v26, v22, 0x1

    .line 42
    aget v26, v9, v26

    aput v26, v6, v24

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v24, v22, 0x2

    .line 43
    aget v24, v9, v24

    aput v24, v6, v21

    mul-int/lit8 v21, v1, 0x2

    add-int/lit8 v24, v22, 0x3

    .line 44
    aget v24, v9, v24

    aput v24, v4, v21

    const/16 v20, 0x1

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v22, v22, 0x4

    .line 45
    aget v22, v9, v22

    aput v22, v4, v21

    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v4, v23

    move-object/from16 v3, v25

    goto :goto_8

    :cond_e
    :goto_9
    const/16 v20, 0x1

    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v25, v3

    move/from16 v23, v4

    move-object/from16 v4, v21

    const/16 v20, 0x1

    .line 46
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    invoke-direct {v1, v15, v6, v4, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    aput-object v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v19

    move/from16 v5, v20

    move/from16 v4, v23

    const/16 v1, 0x20

    const/4 v2, 0x7

    goto/16 :goto_6

    :cond_10
    move/from16 v20, v5

    move/from16 v19, v6

    .line 47
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;-><init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    :goto_b
    if-nez v1, :cond_11

    goto :goto_d

    :cond_11
    move-object/from16 v2, p0

    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    move-object v2, v3

    move/from16 v20, v5

    move/from16 v19, v6

    .line 49
    :goto_c
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object v3, v2

    move v4, v7

    move/from16 v6, v19

    move/from16 v5, v20

    const/4 v1, 0x7

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_13
    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_14
    move-object v2, v3

    :goto_e
    return-object v2
.end method
