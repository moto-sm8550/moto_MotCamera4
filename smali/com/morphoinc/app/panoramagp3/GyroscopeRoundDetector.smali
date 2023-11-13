.class public final Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;
.super Lcom/morphoinc/app/panoramagp3/RoundDetector;
.source "GyroscopeRoundDetector.java"


# instance fields
.field public mLastTimestamp:F

.field public mRadianLandscape:F

.field public mRadianPortrait:F

.field public mTargetDegree:F

.field public useSensor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    iput v0, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mTargetDegree:F

    return-void
.end method


# virtual methods
.method public final detect()Z
    .locals 10

    .line 1
    sget-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_0
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mTargetDegree:F

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x4076800000000000L    # 360.0

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mTargetDegree:F

    float-to-double v8, p0

    sub-double/2addr v6, v8

    cmpg-double p0, v4, v6

    if-gtz p0, :cond_3

    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->useSensor:Z

    if-nez v1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mLastTimestamp:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 6
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v2, v5

    sub-float/2addr v2, v1

    const v1, 0x3089705f

    mul-float/2addr v2, v1

    .line 7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v1, v3

    .line 8
    aget v1, v1, v4

    .line 9
    iget v6, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianLandscape:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianLandscape:F

    .line 10
    iget v5, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianPortrait:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    iput v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianPortrait:F

    .line 11
    :cond_2
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v1

    iput p1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mLastTimestamp:F

    .line 12
    iget p1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianLandscape:F

    invoke-static {p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->radianToDegree(F)I

    move-result p1

    .line 13
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianPortrait:F

    invoke-static {v1}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->radianToDegree(F)I

    move-result v1

    if-gtz p1, :cond_3

    .line 14
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    if-ne v2, v4, :cond_3

    add-int/lit16 p1, p1, 0x168

    :cond_3
    if-gtz v1, :cond_4

    .line 15
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    if-ne v2, v4, :cond_4

    add-int/lit16 v1, v1, 0x168

    .line 16
    :cond_4
    iget-boolean v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    if-eqz v2, :cond_5

    move v5, p1

    goto :goto_0

    :cond_5
    move v5, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 17
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    .line 18
    :goto_1
    iget v6, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    const/16 v7, 0xb4

    if-eqz v6, :cond_9

    if-eqz v2, :cond_8

    if-lt v2, v5, :cond_7

    sub-int/2addr v5, v2

    .line 19
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v7, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v4

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_8

    if-gt v2, v5, :cond_7

    sub-int/2addr v5, v2

    .line 20
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v7, :cond_7

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_a

    .line 21
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    .line 22
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    .line 23
    :cond_a
    iget-boolean p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    if-nez p1, :cond_c

    .line 24
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p1

    if-gt v7, p1, :cond_b

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p1

    const/16 v1, 0xbe

    if-gt p1, v1, :cond_b

    move v3, v4

    :cond_b
    iput-boolean v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    .line 25
    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setStartPosition(IIFFZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 1
    :goto_1
    iput-boolean p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    .line 2
    sget-object p1, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput v2, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mLastTimestamp:F

    .line 4
    iput v2, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianLandscape:F

    .line 5
    iput v2, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mRadianPortrait:F

    .line 6
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    .line 7
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    .line 8
    iput p2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    .line 9
    iput-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    .line 10
    iput-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->useSensor:Z

    if-nez p5, :cond_3

    .line 11
    iget-boolean p2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    const/high16 p5, 0x41a00000    # 20.0f

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x43b40000    # 360.0f

    if-eqz p2, :cond_2

    mul-float/2addr p3, v0

    sub-float/2addr v1, p3

    add-float/2addr v1, p5

    .line 12
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mTargetDegree:F

    goto :goto_2

    :cond_2
    mul-float/2addr p4, v0

    sub-float/2addr v1, p4

    add-float/2addr v1, p5

    .line 13
    iput v1, p0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;->mTargetDegree:F

    .line 14
    :cond_3
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
