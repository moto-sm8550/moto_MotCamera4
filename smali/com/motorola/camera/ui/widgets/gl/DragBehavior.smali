.class public abstract Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.super Ljava/lang/Object;
.source "DragBehavior.java"


# instance fields
.field public mDragEnable:Z

.field public mLastSampleTime:J

.field public final mVelocityTracker:Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;

    return-void
.end method


# virtual methods
.method public final drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    .line 3
    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    .line 4
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    .line 5
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragStart()V

    goto/16 :goto_4

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_b

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mDragEnable:Z

    .line 8
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 9
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;

    .line 10
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne v3, v6, :cond_3

    .line 11
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    goto/16 :goto_3

    .line 12
    :cond_3
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    .line 13
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    .line 14
    new-array v8, v3, [F

    .line 15
    new-array v9, v3, [F

    move v10, v1

    :goto_0
    if-ge v10, v3, :cond_4

    .line 16
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    sub-float/2addr v11, v5

    aput v11, v8, v10

    .line 17
    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    move v10, v1

    move v11, v4

    :goto_1
    if-ge v10, v3, :cond_5

    .line 18
    aget v12, v9, v10

    add-float/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    int-to-float v10, v3

    div-float/2addr v11, v10

    sub-float/2addr v7, v5

    move v5, v1

    move v12, v4

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_2
    if-ge v5, v3, :cond_6

    .line 19
    aget v16, v8, v5

    add-float v13, v13, v16

    .line 20
    aget v16, v9, v5

    add-float v15, v15, v16

    .line 21
    aget v16, v8, v5

    aget v17, v8, v5

    mul-float v16, v16, v17

    add-float v12, v16, v12

    .line 22
    aget v16, v8, v5

    aget v17, v9, v5

    mul-float v16, v16, v17

    add-float v14, v16, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    mul-float v3, v10, v12

    mul-float v5, v13, v13

    sub-float/2addr v3, v5

    mul-float/2addr v10, v14

    mul-float v5, v13, v15

    sub-float/2addr v10, v5

    div-float/2addr v10, v3

    mul-float/2addr v12, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    div-float/2addr v12, v3

    mul-float/2addr v10, v7

    add-float/2addr v10, v12

    .line 23
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    mul-float v3, v10, v11

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    cmpl-float v3, v11, v4

    if-lez v3, :cond_8

    const/4 v6, -0x1

    .line 24
    :cond_8
    iput v6, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mScrollBackDirection:I

    .line 25
    :cond_9
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mScrollBackDirection:I

    if-nez v2, :cond_a

    move v4, v10

    .line 26
    :cond_a
    :goto_3
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragEnd(F)V

    .line 27
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;

    .line 28
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 29
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mScrollBackDirection:I

    return-void

    .line 30
    :cond_b
    :goto_4
    iget-wide v5, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_e

    .line 31
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mVelocityTracker:Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;

    sub-long v5, v3, v5

    long-to-float v5, v5

    .line 32
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;-><init>(Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$1;)V

    .line 33
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_c

    move v7, v5

    goto :goto_5

    .line 34
    :cond_c
    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    add-float/2addr v7, v5

    :goto_5
    iput v7, v6, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mDuration:F

    div-float v5, v1, v5

    .line 35
    iput v5, v6, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker$Movement;->mVelocity:F

    .line 36
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_d

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/VelocityTracker;->mMovementQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 38
    :cond_d
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->mLastSampleTime:J

    .line 39
    :cond_e
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->onDragApplyValue(F)V

    return-void
.end method

.method public abstract onDragApplyValue(F)V
.end method

.method public abstract onDragEnd(F)V
.end method

.method public abstract onDragStart()V
.end method
