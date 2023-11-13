.class public final Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field public static final DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v5, v1, v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 6
    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 7
    new-array v5, v1, [I

    .line 8
    div-int/lit8 v6, v1, 0x2

    .line 9
    new-array v1, v1, [I

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 13
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v11, v9, v10

    if-lt v11, v2, :cond_15

    .line 14
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v14, v15

    if-ge v14, v2, :cond_0

    goto/16 :goto_11

    :cond_0
    add-int/2addr v14, v11

    add-int/2addr v14, v2

    .line 15
    div-int/lit8 v14, v14, 0x2

    add-int v11, v2, v6

    .line 16
    aput v10, v5, v11

    .line 17
    aput v9, v1, v11

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_15

    .line 18
    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v10, v11

    .line 19
    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v11, v15

    sub-int/2addr v10, v11

    .line 20
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-ne v10, v2, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 21
    :goto_2
    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v11, v15

    .line 22
    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v15, v12

    sub-int/2addr v11, v15

    neg-int v12, v9

    move v15, v12

    :goto_3
    if-gt v15, v9, :cond_9

    if-eq v15, v12, :cond_3

    if-eq v15, v9, :cond_2

    add-int/lit8 v16, v15, 0x1

    add-int v16, v16, v6

    .line 23
    aget v2, v5, v16

    add-int/lit8 v16, v15, -0x1

    add-int v16, v16, v6

    aget v13, v5, v16

    if-le v2, v13, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v15, -0x1

    add-int/2addr v2, v6

    .line 24
    aget v2, v5, v2

    add-int/lit8 v13, v2, 0x1

    goto :goto_5

    :cond_3
    :goto_4
    add-int/lit8 v2, v15, 0x1

    add-int/2addr v2, v6

    .line 25
    aget v2, v5, v2

    move v13, v2

    :goto_5
    move/from16 v16, v14

    .line 26
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v17, v4

    iget v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v4, v13, v4

    add-int/2addr v4, v14

    sub-int/2addr v4, v15

    if-eqz v9, :cond_5

    if-eq v13, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v14, v4, -0x1

    goto :goto_7

    :cond_5
    :goto_6
    move v14, v4

    :goto_7
    move-object/from16 v18, v7

    .line 27
    :goto_8
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v13, v7, :cond_6

    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v4, v7, :cond_6

    .line 28
    invoke-virtual {v0, v13, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_6
    add-int v7, v15, v6

    .line 29
    aput v13, v5, v7

    if-eqz v10, :cond_7

    sub-int v7, v11, v15

    move/from16 v19, v10

    add-int/lit8 v10, v12, 0x1

    if-lt v7, v10, :cond_8

    add-int/lit8 v10, v9, -0x1

    if-gt v7, v10, :cond_8

    add-int/2addr v7, v6

    .line 30
    aget v7, v1, v7

    if-gt v7, v13, :cond_8

    .line 31
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v7}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 32
    iput v2, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 33
    iput v14, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 34
    iput v13, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 35
    iput v4, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v2, 0x0

    .line 36
    iput-boolean v2, v7, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_9

    :cond_7
    move/from16 v19, v10

    :cond_8
    const/4 v2, 0x0

    add-int/lit8 v15, v15, 0x2

    move/from16 v14, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move/from16 v10, v19

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move/from16 v16, v14

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_a

    move-object v12, v7

    move-object/from16 v19, v8

    goto/16 :goto_12

    .line 37
    :cond_a
    iget v4, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v4, v7

    .line 38
    iget v7, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v7, v10

    sub-int/2addr v4, v7

    .line 39
    rem-int/lit8 v7, v4, 0x2

    if-nez v7, :cond_b

    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    move v7, v2

    :goto_a
    move v10, v12

    :goto_b
    if-gt v10, v9, :cond_13

    if-eq v10, v12, :cond_d

    if-eq v10, v9, :cond_c

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v6

    .line 40
    aget v11, v1, v11

    add-int/lit8 v13, v10, -0x1

    add-int/2addr v13, v6

    aget v13, v1, v13

    if-ge v11, v13, :cond_c

    goto :goto_c

    :cond_c
    add-int/lit8 v11, v10, -0x1

    add-int/2addr v11, v6

    .line 41
    aget v11, v1, v11

    add-int/lit8 v13, v11, -0x1

    goto :goto_d

    :cond_d
    :goto_c
    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v6

    .line 42
    aget v11, v1, v11

    move v13, v11

    .line 43
    :goto_d
    iget v14, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v15, v13

    sub-int/2addr v15, v10

    sub-int/2addr v14, v15

    if-eqz v9, :cond_f

    if-eq v13, v11, :cond_e

    goto :goto_e

    :cond_e
    add-int/lit8 v15, v14, 0x1

    goto :goto_f

    :cond_f
    :goto_e
    move v15, v14

    .line 44
    :goto_f
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v13, v2, :cond_10

    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v14, v2, :cond_10

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v19, v8

    add-int/lit8 v8, v14, -0x1

    .line 45
    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v20

    if-eqz v20, :cond_11

    move v13, v2

    move v14, v8

    move-object/from16 v8, v19

    goto :goto_f

    :cond_10
    move-object/from16 v19, v8

    :cond_11
    add-int v2, v10, v6

    .line 46
    aput v13, v1, v2

    if-eqz v7, :cond_12

    sub-int v2, v4, v10

    if-lt v2, v12, :cond_12

    if-gt v2, v9, :cond_12

    add-int/2addr v2, v6

    .line 47
    aget v2, v5, v2

    if-lt v2, v13, :cond_12

    .line 48
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    .line 49
    iput v13, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 50
    iput v14, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 51
    iput v11, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 52
    iput v15, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v4, 0x1

    .line 53
    iput-boolean v4, v2, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_10

    :cond_12
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v8, v19

    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    move-object/from16 v19, v8

    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_14

    move-object v12, v2

    goto :goto_12

    :cond_14
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_15
    :goto_11
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v12, 0x0

    :goto_12
    if-eqz v12, :cond_1d

    .line 54
    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v2

    if-lez v2, :cond_1b

    .line 55
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v4, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v2, v4

    iget v7, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v8, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_16

    const/4 v9, 0x1

    goto :goto_13

    :cond_16
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_1a

    .line 56
    iget-boolean v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v9, :cond_17

    .line 57
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_17
    if-le v2, v7, :cond_18

    const/4 v13, 0x1

    goto :goto_14

    :cond_18
    const/4 v13, 0x0

    :goto_14
    if-eqz v13, :cond_19

    .line 58
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    .line 59
    :cond_19
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v7

    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    .line 60
    :cond_1a
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v2, v8, v4, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 61
    :goto_15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    const/4 v4, 0x1

    goto :goto_16

    .line 63
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move-object/from16 v7, v18

    .line 64
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v8, v19

    .line 65
    :goto_16
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 66
    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 67
    iget v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 68
    iget v9, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v2, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v9, v17

    .line 69
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 71
    iget v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 72
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 73
    iget v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v2, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 74
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1d
    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    const/4 v4, 0x1

    .line 75
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    move v2, v4

    move-object v4, v9

    goto/16 :goto_0

    .line 76
    :cond_1e
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 78
    invoke-direct {v2, v0, v3, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[I)V

    return-object v2
.end method
