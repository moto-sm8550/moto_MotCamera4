.class public final Lcom/morphoinc/app/panoramagp3/PositionDetector;
.super Ljava/lang/Object;
.source "PositionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;
    }
.end annotation


# instance fields
.field public count:J

.field public volatile cur_x:D

.field public volatile cur_y:D

.field public final direction:I

.field public idle_rect:Landroid/graphics/RectF;

.field public idle_start_time:J

.field public idle_thres:D

.field public final mCameraOrientation:I

.field public final mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

.field public final mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public final output_height:I

.field public final output_width:I

.field public peak:D

.field public prev_x:D

.field public prev_y:D

.field public reset_idle_timer:Z

.field public reverse_thres:D

.field public reverse_thres2:D

.field public too_fast_thres:D

.field public too_slow_thres:D


# direct methods
.method public constructor <init>(IIIIILcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 2
    iput-object v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    .line 3
    new-instance v6, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    invoke-direct {v6}, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;-><init>()V

    iput-object v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    const-wide/16 v6, 0x0

    .line 4
    iput-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    .line 5
    iput v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    .line 6
    iput v2, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    .line 7
    iput v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    move/from16 v6, p4

    .line 8
    iput v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewWidth:I

    move/from16 v6, p5

    .line 9
    iput v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewHeight:I

    .line 10
    iput-object v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 11
    iput v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    const/4 v6, 0x1

    .line 12
    iput-boolean v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    const-wide/16 v7, 0x0

    .line 13
    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const v13, 0x3ca3d70a

    const v14, 0x3f4ccccd

    const v15, 0x3d8f5c29

    const/16 v9, 0xb4

    const/16 v10, 0x5a

    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_8

    .line 14
    :cond_0
    iget v1, v4, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x168

    if-eq v1, v10, :cond_2

    if-ne v1, v9, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v3

    .line 15
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_1
    int-to-float v1, v3

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 17
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v4, v14

    .line 18
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v1, v1

    .line 19
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v11, v1

    .line 20
    iput-wide v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    const-wide v3, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v1, v3

    .line 21
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    goto/16 :goto_8

    .line 22
    :cond_3
    iget v1, v4, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x168

    if-eq v1, v10, :cond_5

    if-ne v1, v9, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_3

    :cond_5
    :goto_2
    int-to-double v1, v3

    .line 24
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_3
    int-to-float v1, v3

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 25
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v4, v14

    .line 26
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v1, v1

    .line 27
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v11, v1

    .line 28
    iput-wide v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    const-wide v3, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v1, v3

    .line 29
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    goto :goto_8

    .line 30
    :cond_6
    iget v1, v4, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x168

    if-eq v1, v10, :cond_8

    if-ne v1, v9, :cond_7

    goto :goto_4

    :cond_7
    int-to-double v3, v2

    .line 31
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_5

    .line 32
    :cond_8
    :goto_4
    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_5
    int-to-float v1, v2

    mul-float/2addr v15, v1

    float-to-double v3, v15

    .line 33
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v3, v14

    .line 34
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v3, v1

    .line 35
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double v1, v2

    mul-double/2addr v11, v1

    .line 36
    iput-wide v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    const-wide v3, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v1, v3

    .line 37
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    goto :goto_8

    .line 38
    :cond_9
    iget v1, v4, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x168

    if-eq v1, v10, :cond_b

    if-ne v1, v9, :cond_a

    goto :goto_6

    .line 39
    :cond_a
    iput-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    goto :goto_7

    :cond_b
    :goto_6
    int-to-double v3, v2

    .line 40
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :goto_7
    int-to-float v1, v2

    mul-float/2addr v15, v1

    float-to-double v3, v15

    .line 41
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v3, v14

    .line 42
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v3, v1

    .line 43
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    int-to-double v1, v2

    mul-double/2addr v11, v1

    .line 44
    iput-wide v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    const-wide v3, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v1, v3

    .line 45
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    :goto_8
    return-void
.end method


# virtual methods
.method public final detect(DD)I
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1
    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    .line 2
    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    .line 3
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    iput-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    .line 5
    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    .line 6
    :goto_0
    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_1

    .line 7
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    goto :goto_1

    .line 8
    :cond_1
    iget-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    iput-wide v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    .line 9
    iput-wide v3, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    .line 10
    :goto_1
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    .line 11
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    .line 12
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    .line 13
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    goto :goto_2

    .line 14
    :cond_2
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    .line 15
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    .line 16
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    .line 17
    :goto_2
    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v12, :cond_3

    if-eq v6, v2, :cond_3

    .line 18
    iget-object v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v13, v13, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    if-eqz v13, :cond_5

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_4

    goto :goto_3

    .line 19
    :cond_3
    iget-object v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v13, v13, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mCameraOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_5

    const/16 v14, 0xb4

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_4
    move v13, v12

    goto :goto_4

    :cond_5
    :goto_3
    move v13, v11

    :goto_4
    if-eqz v13, :cond_9

    sub-double/2addr v9, v4

    .line 20
    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    cmpl-double v9, v9, v13

    if-lez v9, :cond_6

    goto :goto_5

    .line 21
    :cond_6
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    cmpg-double v9, v4, v9

    if-gez v9, :cond_7

    .line 22
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :cond_7
    int-to-double v9, v1

    cmpl-double v1, v4, v9

    if-lez v1, :cond_8

    goto :goto_5

    .line 23
    :cond_8
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    sub-double/2addr v4, v9

    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    cmpl-double v1, v4, v9

    if-lez v1, :cond_d

    goto :goto_5

    :cond_9
    sub-double v9, v4, v9

    .line 24
    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres2:D

    cmpl-double v1, v9, v13

    if-lez v1, :cond_a

    goto :goto_5

    .line 25
    :cond_a
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    cmpl-double v1, v4, v9

    if-lez v1, :cond_b

    .line 26
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    :cond_b
    cmpg-double v1, v4, v7

    if-gez v1, :cond_c

    goto :goto_5

    .line 27
    :cond_c
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->peak:D

    sub-double/2addr v9, v4

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reverse_thres:D

    cmpl-double v1, v9, v4

    if-lez v1, :cond_d

    :goto_5
    move v1, v12

    goto :goto_6

    :cond_d
    move v1, v11

    :goto_6
    if-eqz v1, :cond_e

    const/4 v0, -0x2

    return v0

    :cond_e
    if-eq v6, v3, :cond_f

    if-eq v6, v2, :cond_f

    .line 28
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    .line 29
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_width:I

    .line 30
    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewWidth:I

    div-int/2addr v6, v3

    goto :goto_7

    .line 31
    :cond_f
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    .line 32
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->output_height:I

    .line 33
    iget v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mPreviewHeight:I

    div-int/2addr v6, v3

    .line 34
    :goto_7
    iget v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    if-eq v9, v12, :cond_11

    if-eq v9, v2, :cond_11

    int-to-double v9, v6

    cmpg-double v1, v4, v9

    if-gez v1, :cond_10

    :goto_8
    move v1, v12

    goto :goto_9

    :cond_10
    move v1, v11

    goto :goto_9

    :cond_11
    sub-int/2addr v1, v6

    int-to-double v9, v1

    cmpl-double v1, v4, v9

    if-lez v1, :cond_10

    goto :goto_8

    :goto_9
    if-eqz v1, :cond_12

    return v12

    .line 35
    :cond_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 36
    iget-boolean v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    if-eqz v1, :cond_13

    .line 37
    iput-boolean v11, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    .line 38
    iput-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_start_time:J

    .line 39
    :cond_13
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    if-nez v1, :cond_14

    .line 40
    iget-wide v9, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_thres:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v13

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    sub-double/2addr v13, v9

    double-to-float v6, v13

    iget-wide v13, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    sub-double/2addr v13, v9

    double-to-float v13, v13

    iget-wide v14, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    add-double/2addr v14, v9

    double-to-float v14, v14

    iget-wide v7, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    add-double/2addr v7, v9

    double-to-float v7, v7

    invoke-direct {v1, v6, v13, v14, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_14
    const-wide v6, 0x12a05f200L

    .line 42
    iget-wide v8, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_start_time:J

    sub-long/2addr v4, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_15

    move v1, v12

    goto :goto_a

    .line 43
    :cond_15
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    double-to-float v4, v4

    iget-wide v5, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    double-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_16

    .line 44
    iput-boolean v12, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->reset_idle_timer:Z

    const/4 v1, 0x0

    .line 45
    iput-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_16
    move v1, v11

    :goto_a
    if-eqz v1, :cond_17

    const/4 v0, -0x1

    return v0

    .line 46
    :cond_17
    iget v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->direction:I

    if-eq v1, v3, :cond_18

    if-eq v1, v2, :cond_18

    .line 47
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_x:D

    .line 48
    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_x:D

    goto :goto_b

    .line 49
    :cond_18
    iget-wide v4, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->cur_y:D

    .line 50
    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->prev_y:D

    :goto_b
    sub-double/2addr v4, v6

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 52
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    .line 53
    iget-object v6, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->pos:[D

    iget v7, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    aput-wide v4, v6, v7

    add-int/2addr v7, v12

    .line 54
    iput v7, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    const/4 v4, 0x5

    if-lt v7, v4, :cond_19

    .line 55
    iput v11, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->index:I

    .line 56
    :cond_19
    iget v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    if-ge v5, v4, :cond_1a

    add-int/2addr v5, v12

    .line 57
    iput v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    :cond_1a
    move v4, v11

    const-wide/16 v7, 0x0

    .line 58
    :goto_c
    iget v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->add_num:I

    if-ge v4, v5, :cond_1b

    .line 59
    iget-object v5, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->pos:[D

    aget-wide v5, v5, v4

    add-double/2addr v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1b
    int-to-double v4, v5

    div-double/2addr v7, v4

    .line 60
    iput-wide v7, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->ave:D

    const-wide/16 v4, 0xf

    .line 61
    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->count:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1d

    .line 62
    iget-object v1, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->mDiffManager:Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;

    .line 63
    iget-wide v4, v1, Lcom/morphoinc/app/panoramagp3/PositionDetector$DiffManager;->ave:D

    .line 64
    iget-wide v6, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_slow_thres:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1c

    goto :goto_d

    .line 65
    :cond_1c
    iget-wide v0, v0, Lcom/morphoinc/app/panoramagp3/PositionDetector;->too_fast_thres:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_1d

    move v2, v3

    goto :goto_d

    :cond_1d
    move v2, v11

    :goto_d
    return v2
.end method
