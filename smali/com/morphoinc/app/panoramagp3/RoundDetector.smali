.class public Lcom/morphoinc/app/panoramagp3/RoundDetector;
.super Ljava/lang/Object;
.source "RoundDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;,
        Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;
    }
.end annotation


# static fields
.field public static final SynchronizedObject:Ljava/lang/Object;


# instance fields
.field public isLandscape:Z

.field public mAccelerometerValues:[F

.field public mCurrentDegreeLandscape:I

.field public mCurrentDegreePortrait:I

.field public mDirection:I

.field public mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

.field public final mI:[F

.field public final mInR:[F

.field public mIsEndOk:Z

.field public mMagneticValues:[F

.field public final mOutR:[F

.field public mStartDegree:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;-><init>(II)V

    .line 3
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mI:[F

    const/4 v0, 0x0

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    return-void
.end method

.method public static correctionCircleDegree(I)I
    .locals 1

    const/16 v0, 0x168

    if-gez p0, :cond_0

    add-int/2addr p0, v0

    return p0

    :cond_0
    if-ge v0, p0, :cond_1

    sub-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method public static radianToDegree(F)I
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final currentDegree()I
    .locals 1

    iget-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    :goto_0
    return p0
.end method

.method public detect()Z
    .locals 4

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
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p0

    if-lt v1, p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    .line 6
    :cond_2
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p0

    if-gt v1, p0, :cond_3

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

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    array-length v0, p1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    array-length v2, v0

    if-gtz v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    iget-object v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mI:[F

    invoke-static {v2, v3, v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 6
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    const/16 v3, 0x81

    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v2, p1, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 7
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v2, 0x0

    aget v3, v0, v2

    .line 8
    invoke-static {v3}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->radianToDegree(F)I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x168

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v4, v1, p1, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 10
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, v0, v2

    .line 11
    invoke-static {p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->radianToDegree(F)I

    move-result p1

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x168

    .line 12
    :cond_4
    sget-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iput v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    .line 14
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    .line 15
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->contains(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public setStartPosition(IIFFZ)V
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

    if-eqz p1, :cond_2

    float-to-int p1, p3

    goto :goto_2

    :cond_2
    float-to-int p1, p4

    .line 2
    :goto_2
    sget-object p3, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p5, :cond_3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_3
    if-nez p2, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p4

    add-int/lit8 p5, p1, -0x14

    add-int/2addr p5, p4

    invoke-static {p5}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->correctionCircleDegree(I)I

    move-result p4

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p4

    add-int/lit8 p5, p1, -0x14

    sub-int/2addr p4, p5

    invoke-static {p4}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->correctionCircleDegree(I)I

    move-result p4

    :goto_3
    const/16 p5, 0x168

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    .line 6
    iput-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    .line 7
    new-instance p1, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;-><init>(II)V

    .line 8
    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    .line 9
    monitor-exit p3

    return-void

    :cond_5
    mul-int/lit8 v0, p1, 0x3

    .line 10
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    goto :goto_4

    :cond_6
    add-int v0, p4, p1

    .line 11
    :goto_4
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 12
    invoke-static {v0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->correctionCircleDegree(I)I

    move-result v0

    .line 13
    invoke-static {p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->correctionCircleDegree(I)I

    move-result p1

    if-nez p2, :cond_8

    if-ge v0, p4, :cond_7

    goto :goto_5

    :cond_7
    move p5, v0

    .line 14
    :goto_5
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;

    invoke-direct {v0, p5, p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;-><init>(II)V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    goto :goto_6

    :cond_8
    if-ge p4, p1, :cond_9

    move p1, v1

    .line 15
    :cond_9
    new-instance p5, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    invoke-direct {p5, v0, p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;-><init>(II)V

    iput-object p5, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;

    .line 16
    :goto_6
    iput p2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    .line 17
    iput p4, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    .line 18
    iput-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    .line 19
    monitor-exit p3

    return-void

    :goto_7
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
