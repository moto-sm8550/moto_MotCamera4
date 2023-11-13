.class public final Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;
.super Ljava/lang/Object;
.source "TouchRoiComponent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_15

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 2
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 3
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 4
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 5
    aget v2, v2, v7

    .line 6
    iget-object v8, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_f

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 9
    iget-wide v10, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    const-wide/16 v16, 0x0

    cmp-long v8, v10, v16

    if-eqz v8, :cond_e

    sub-long v10, v13, v10

    long-to-float v8, v10

    const/high16 v10, 0x42200000    # 40.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_1

    return-void

    :cond_1
    mul-float/2addr v4, v8

    .line 10
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    add-float/2addr v10, v4

    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    mul-float/2addr v6, v8

    .line 11
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    add-float/2addr v4, v6

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    mul-float/2addr v2, v8

    .line 12
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    add-float/2addr v4, v2

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v9, :cond_5

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 16
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v9, :cond_2

    move-wide/from16 v25, v13

    goto/16 :goto_1

    .line 19
    :cond_2
    monitor-enter v6

    move v8, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_0
    if-ge v8, v1, :cond_3

    .line 20
    :try_start_0
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v2, v24

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    move-wide/from16 v25, v13

    .line 21
    iget-wide v12, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v2, v12

    add-float/2addr v11, v2

    .line 22
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 23
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 24
    aget v2, v2, v3

    add-float v19, v19, v2

    .line 25
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 26
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 27
    aget v2, v2, v5

    add-float v21, v21, v2

    .line 28
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 29
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 30
    aget v2, v2, v7

    add-float v23, v23, v2

    float-to-double v12, v10

    .line 31
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 32
    iget-wide v9, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-double v9, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 33
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v12, v9

    double-to-float v10, v12

    .line 34
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 35
    iget-wide v12, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v9, v12

    .line 36
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 37
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 38
    aget v12, v12, v3

    mul-float/2addr v9, v12

    add-float v18, v9, v18

    .line 39
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 40
    iget-wide v12, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v9, v12

    .line 41
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 42
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 43
    aget v12, v12, v5

    mul-float/2addr v9, v12

    add-float v20, v9, v20

    .line 44
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 45
    iget-wide v12, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v9, v12

    .line 46
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    .line 47
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    .line 48
    aget v12, v12, v7

    mul-float/2addr v9, v12

    add-float v22, v9, v22

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v13, v25

    const/16 v9, 0xa

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v25, v13

    .line 49
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    mul-float/2addr v10, v1

    mul-float v6, v11, v11

    sub-float/2addr v10, v6

    const/4 v6, 0x0

    cmpl-float v8, v10, v6

    if-nez v8, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    mul-float v18, v18, v1

    mul-float v19, v19, v11

    sub-float v18, v18, v19

    div-float v18, v18, v10

    mul-float v20, v20, v1

    mul-float v21, v21, v11

    sub-float v20, v20, v21

    div-float v20, v20, v10

    mul-float v1, v1, v22

    mul-float v11, v11, v23

    sub-float/2addr v1, v11

    div-float/2addr v1, v10

    new-array v6, v4, [F

    aput v18, v6, v3

    aput v20, v6, v5

    aput v1, v6, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move-wide/from16 v25, v13

    :goto_2
    const/4 v6, 0x0

    .line 50
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 51
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_a

    .line 53
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 54
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 55
    monitor-enter v1

    move v9, v5

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 56
    :goto_4
    :try_start_2
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 57
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 58
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 59
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 60
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 61
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v3

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 62
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    add-int/lit8 v13, v9, -0x1

    .line 63
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v3

    sub-float/2addr v10, v11

    add-float/2addr v12, v10

    .line 64
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 65
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 66
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v5

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 67
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 68
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v5

    sub-float/2addr v10, v11

    add-float/2addr v2, v10

    .line 69
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 70
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 71
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v7

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 72
    iget-object v11, v11, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 73
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v7

    sub-float/2addr v10, v11

    add-float/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 74
    :cond_6
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 75
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    if-nez v10, :cond_7

    new-array v10, v4, [F

    aput v12, v10, v3

    aput v2, v10, v5

    aput v8, v10, v7

    .line 76
    iput-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 77
    :cond_7
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 78
    aget v10, v10, v3

    invoke-static {v9, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 79
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 80
    aget v10, v10, v5

    invoke-static {v9, v2, v10}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 81
    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    .line 82
    aget v9, v9, v7

    invoke-static {v2, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->access$2000(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v2, v5

    .line 83
    :goto_6
    monitor-exit v1

    if-eqz v2, :cond_a

    move v1, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_a
    move v1, v3

    :goto_7
    if-eqz v6, :cond_c

    .line 84
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 85
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 86
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 88
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 89
    monitor-enter v2

    .line 90
    :try_start_3
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 91
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 92
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0xa

    if-le v6, v8, :cond_b

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 93
    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    .line 94
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    :cond_b
    monitor-exit v2

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 96
    :cond_c
    :goto_8
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 97
    iget-wide v8, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    sub-long v8, v25, v8

    new-array v4, v4, [F

    .line 98
    iget v10, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    aput v10, v4, v3

    .line 99
    iget v10, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    aput v10, v4, v5

    .line 100
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    aput v5, v4, v7

    .line 101
    invoke-direct {v2, v8, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;-><init>(J[F)V

    .line 102
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 103
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 104
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 106
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 107
    monitor-enter v2

    .line 108
    :try_start_4
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 109
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_d

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 111
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    .line 112
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_d
    monitor-exit v2

    move v5, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_e
    move-wide/from16 v25, v13

    move v5, v3

    .line 114
    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    move-wide/from16 v6, v25

    .line 115
    iput-wide v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    .line 116
    iget-wide v8, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    cmp-long v2, v8, v16

    if-nez v2, :cond_13

    .line 117
    iput-wide v6, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    goto/16 :goto_b

    .line 118
    :cond_f
    iget-object v7, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_12

    .line 119
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 120
    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_10

    .line 121
    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v9, v9

    sub-float/2addr v9, v8

    const v8, 0x3089705f

    mul-float/2addr v9, v8

    mul-float v8, v4, v9

    .line 122
    iget v10, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    add-float/2addr v10, v8

    iput v10, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    mul-float v8, v6, v9

    .line 123
    iget v11, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    add-float/2addr v11, v8

    iput v11, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    mul-float/2addr v9, v2

    .line 124
    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    add-float/2addr v8, v9

    iput v8, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v7, v10

    .line 125
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v12, v7

    .line 126
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 127
    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    float-to-double v7, v7

    .line 128
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 129
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 130
    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v8, v8

    .line 131
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    goto :goto_a

    :cond_10
    move v7, v9

    move v8, v7

    move v12, v8

    .line 132
    :goto_a
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v10, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v10

    .line 133
    iput v1, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    float-to-double v9, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 134
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    float-to-double v5, v6

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v9

    float-to-double v9, v2

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    float-to-double v4, v12

    .line 135
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v7

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    float-to-double v4, v8

    .line 136
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3fe66666

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_11

    const/high16 v2, 0x41c80000    # 25.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_12

    :cond_11
    const/4 v5, 0x1

    goto :goto_b

    :cond_12
    move v5, v3

    :cond_13
    :goto_b
    if-eqz v5, :cond_15

    .line 138
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->registerSensor(Z)V

    .line 139
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 140
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 141
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_14

    .line 142
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    .line 143
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 144
    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    if-nez v2, :cond_14

    .line 145
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 146
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->isShutterButtonMode()Z

    move-result v1

    .line 147
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    .line 148
    :cond_14
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    .line 149
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_15
    :goto_c
    return-void
.end method
