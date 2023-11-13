.class public final Lcom/motorola/camera/panorama/PanoProcessFramesCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "PanoProcessFramesCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/panorama/PanoCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mByteBuffers:[Ljava/nio/ByteBuffer;

.field public final mCenter:[D

.field public final mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

.field public final mPixelStride:[I

.field public final mRowStride:[I


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzg;Lcom/motorola/camera/panorama/PanoCallableListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    const/4 p2, 0x3

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    new-array v0, p2, [I

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    new-array p2, p2, [I

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    const/4 p2, 0x2

    new-array p2, p2, [D

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/panorama/PanoCallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 5
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 8
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 9
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 10
    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 11
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 12
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 14
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    .line 15
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    goto :goto_0

    :cond_0
    const-string v1, "PanoProcessFramesCallable"

    const-string v2, "get abnormal image"

    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/internal/zzg;->close()V

    .line 18
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    .line 20
    iget-boolean v1, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    .line 21
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    iget-object v8, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    if-eqz v1, :cond_2

    .line 22
    iget-object v2, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    .line 23
    :cond_2
    monitor-enter v6

    .line 24
    :try_start_1
    iget-object v10, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v10, :cond_3

    .line 25
    monitor-exit v6

    goto/16 :goto_d

    .line 26
    :cond_3
    :try_start_2
    iget-boolean v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v11, :cond_4

    .line 27
    monitor-exit v6

    goto/16 :goto_d

    .line 28
    :cond_4
    :try_start_3
    iget-boolean v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v11, :cond_5

    .line 29
    invoke-virtual {v10}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v10

    const-wide/16 v12, 0x5

    .line 30
    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 31
    invoke-virtual {v6}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setInitialRotationByGravity()V

    .line 32
    iput-boolean v4, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    .line 33
    :cond_5
    invoke-virtual {v6}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionValue()V

    .line 34
    iget-object v10, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v10, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    aget-object v11, v7, v5

    aget-object v12, v7, v4

    aget-object v13, v7, v3

    aget v14, v8, v5

    aget v15, v8, v4

    aget v16, v8, v3

    aget v17, v9, v5

    aget v18, v9, v4

    aget v19, v9, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v10 .. v20}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v7

    if-eqz v2, :cond_8

    .line 36
    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    .line 37
    iget v8, v8, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    const-wide v9, 0x3ff19999a0000000L    # 1.100000023841858

    if-eqz v8, :cond_7

    if-ne v8, v4, :cond_6

    goto :goto_1

    .line 38
    :cond_6
    aget-wide v11, v2, v5

    div-double/2addr v11, v9

    aput-wide v11, v2, v5

    goto :goto_2

    .line 39
    :cond_7
    :goto_1
    aget-wide v11, v2, v4

    div-double/2addr v11, v9

    aput-wide v11, v2, v4

    .line 40
    :cond_8
    :goto_2
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_9

    const-string v2, "MorphoEngine"

    .line 42
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "mMorphoPanoramaGP3.attach error ret:0x%08X"

    new-array v10, v4, [Ljava/lang/Object;

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v5

    .line 44
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    monitor-exit v6

    goto/16 :goto_d

    .line 46
    :cond_9
    :try_start_4
    iget-boolean v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v2, :cond_17

    .line 47
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getDirection()I

    move-result v2

    .line 48
    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v7, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v2, v7, :cond_17

    new-array v7, v3, [I

    .line 49
    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v8, v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getOutputImageSize([I)I

    move-result v8

    if-eqz v8, :cond_a

    const-string v2, "MorphoEngine"

    .line 50
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    new-array v10, v4, [Ljava/lang/Object;

    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v5

    .line 52
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 53
    monitor-exit v6

    goto/16 :goto_d

    :cond_a
    :try_start_5
    aget v8, v7, v5

    aget v9, v7, v4

    const v10, 0x3f8ccccd

    if-le v8, v9, :cond_b

    aget v8, v7, v5

    .line 54
    iput v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    aget v7, v7, v4

    int-to-float v7, v7

    div-float/2addr v7, v10

    float-to-int v7, v7

    .line 55
    iput v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    goto :goto_3

    :cond_b
    aget v8, v7, v5

    int-to-float v8, v8

    div-float/2addr v8, v10

    float-to-int v8, v8

    .line 56
    iput v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    aget v7, v7, v4

    .line 57
    iput v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    .line 58
    :goto_3
    invoke-virtual {v6, v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->createDirection(I)V

    .line 59
    iput-boolean v4, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    .line 60
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    invoke-virtual {v2}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    .line 61
    new-instance v15, Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    .line 62
    iget v8, v7, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    .line 63
    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v10, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    .line 64
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v12

    iget-object v13, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v14, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/morphoinc/app/panoramagp3/PositionDetector;-><init>(IIIIILcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;I)V

    iput-object v15, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    .line 65
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    if-eqz v2, :cond_d

    .line 66
    iget v7, v2, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    if-eq v7, v4, :cond_c

    if-nez v7, :cond_d

    :cond_c
    move v7, v4

    goto :goto_4

    :cond_d
    move v7, v5

    :goto_4
    if-eqz v7, :cond_e

    .line 67
    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v9, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    .line 68
    iget v10, v2, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    .line 69
    iget-wide v11, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    double-to-float v11, v11

    iget-wide v12, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    double-to-float v12, v12

    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v13, v2, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    .line 70
    invoke-virtual/range {v8 .. v13}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->setStartPosition(IIFFZ)V

    .line 71
    :cond_e
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    .line 72
    iget v2, v2, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xb4

    if-eqz v2, :cond_13

    if-ne v2, v4, :cond_f

    goto :goto_8

    .line 73
    :cond_f
    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 74
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v2, :cond_11

    if-ne v2, v8, :cond_10

    goto :goto_5

    :cond_10
    move v2, v5

    goto :goto_6

    :cond_11
    :goto_5
    move v2, v4

    :goto_6
    if-eqz v2, :cond_12

    .line 75
    iget v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    goto :goto_7

    .line 76
    :cond_12
    iget v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    :goto_7
    int-to-float v8, v2

    .line 77
    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v7

    float-to-int v7, v8

    goto :goto_c

    .line 78
    :cond_13
    :goto_8
    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 79
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v2, :cond_15

    if-ne v2, v8, :cond_14

    goto :goto_9

    :cond_14
    move v2, v5

    goto :goto_a

    :cond_15
    :goto_9
    move v2, v4

    :goto_a
    if-nez v2, :cond_16

    .line 80
    iget v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    goto :goto_b

    .line 81
    :cond_16
    iget v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    :goto_b
    int-to-float v8, v2

    .line 82
    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v8, v7

    float-to-int v7, v8

    move/from16 v21, v7

    move v7, v2

    move/from16 v2, v21

    .line 83
    :goto_c
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {v6, v7, v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setPreviewImage(II)V

    .line 85
    :cond_17
    iget-object v2, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v2, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 86
    monitor-exit v6

    .line 87
    :goto_d
    iget-object v2, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 88
    iget-object v6, v2, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    if-eqz v6, :cond_18

    .line 89
    invoke-virtual {v2}, Lcom/google/mlkit/vision/barcode/internal/zzg;->close()V

    :cond_18
    if-eqz v1, :cond_1e

    .line 90
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    .line 91
    monitor-enter v1

    .line 92
    :try_start_6
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    if-nez v6, :cond_19

    goto :goto_e

    .line 93
    :cond_19
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v6}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->detect()Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_1a

    .line 94
    monitor-exit v1

    move v7, v4

    goto :goto_10

    .line 95
    :cond_1a
    :try_start_7
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    aget-wide v7, v2, v5

    aget-wide v9, v2, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/morphoinc/app/panoramagp3/PositionDetector;->detect(DD)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v1

    goto :goto_f

    :cond_1b
    :goto_e
    const/16 v2, -0xc8

    .line 96
    monitor-exit v1

    :goto_f
    move v7, v2

    .line 97
    :goto_10
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    .line 98
    monitor-enter v1

    .line 99
    :try_start_8
    iget-object v2, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    if-nez v2, :cond_1c

    goto :goto_11

    .line 100
    :cond_1c
    iget v2, v2, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 101
    monitor-exit v1

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v2, -0x1

    .line 102
    monitor-exit v1

    :goto_12
    move v9, v2

    .line 103
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v8

    new-array v1, v3, [I

    .line 104
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getMaxOutputSize([I)V

    .line 105
    iget-object v2, v0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/motorola/camera/panorama/PanoCaptureListener;

    if-eqz v6, :cond_1e

    .line 106
    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    aget-wide v10, v0, v5

    aget-wide v12, v0, v4

    aget v14, v1, v5

    aget v15, v1, v4

    invoke-interface/range {v6 .. v15}, Lcom/motorola/camera/panorama/PanoCaptureListener;->onProgress(ILandroid/graphics/Bitmap;IDDII)V

    goto :goto_13

    :catchall_0
    move-exception v0

    .line 107
    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    .line 108
    monitor-exit v1

    throw v0

    .line 109
    :cond_1e
    :goto_13
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object v0

    :catchall_2
    move-exception v0

    .line 110
    monitor-exit v6

    throw v0

    :catchall_3
    move-exception v0

    .line 111
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoProcessFramesCallable"

    return-object p0
.end method

.method public final setPlane(Landroid/media/Image$Plane;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, v0, p2

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method
