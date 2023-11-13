.class public final Lcom/motorola/camera/panorama/morpho/MorphoEngine;
.super Ljava/lang/Object;
.source "MorphoEngine.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;


# instance fields
.field public final mACMatrix:[D

.field public mAccelerometer:Landroid/hardware/Sensor;

.field public mCameraOrientation:I

.field public final mDateTaken:[J

.field public mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

.field public mGravities:[F

.field public final mGyroMatrix:[D

.field public mGyroscope:Landroid/hardware/Sensor;

.field public final mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

.field public mIsCapturing:Z

.field public mIsDirectionDecided:Z

.field public mIsSensorAverage:Z

.field public mMagnetic:Landroid/hardware/Sensor;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

.field public final mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

.field public mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field public mPreviewImageHeight:I

.field public mPreviewImageWidth:I

.field public final mRVMatrix:[D

.field public mRotationVector:Landroid/hardware/Sensor;

.field public mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

.field public mSensorCnt:I

.field public mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettings:Lcom/motorola/camera/panorama/morpho/Settings;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 3
    new-instance v0, Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    const/16 v1, 0x9

    new-array v2, v1, [D

    .line 9
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroMatrix:[D

    new-array v2, v1, [D

    .line 10
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRVMatrix:[D

    new-array v1, v1, [D

    .line 11
    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mACMatrix:[D

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    return-void
.end method

.method public static formatDateString(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "GMT"

    .line 3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final applySettings()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    const/16 v1, 0x7e90

    .line 2
    iput v1, v0, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    const/4 v3, 0x0

    .line 5
    aget-wide v4, v2, v3

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    const/4 v4, 0x1

    .line 6
    aget-wide v5, v2, v4

    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    const/4 v5, 0x2

    .line 7
    aget-wide v5, v2, v5

    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    const/4 v5, 0x3

    .line 8
    aget-wide v5, v2, v5

    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 9
    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    const-wide v5, 0x3feeb851eb851eb8L    # 0.96

    .line 10
    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 11
    iput-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    .line 12
    iput-wide v7, v0, Lcom/motorola/camera/panorama/morpho/Settings;->shrink_ratio:D

    const/16 v2, 0x200

    .line 13
    iput v2, v0, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    const-wide v9, 0x3fee666666666666L    # 0.95

    .line 14
    iput-wide v9, v0, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    .line 15
    iget v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoNoiseReductionLevel:I

    .line 16
    iput v1, v0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v0, v7, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setShrinkRatio(D)I

    move-result v0

    const-string v1, "MorphoEngine"

    if-eqz v0, :cond_0

    .line 18
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setShrinkRatio error ret:0x%08X"

    .line 20
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setCalcseamPixnum(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setCalcseamPixnum error ret:0x%08X"

    .line 24
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUseDeform(Z)I

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setUseDeform error ret:0x%08X"

    .line 28
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUseLuminanceCorrection(Z)I

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setUseLuminanceCorrection error ret:0x%08X"

    .line 32
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v7, v2, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    invoke-virtual {v0, v7, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setSeamsearchRatio(D)I

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setSeamsearchRatio error ret:0x%08X"

    .line 36
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v7, v2, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    invoke-virtual {v0, v7, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setZrotationCoeff(D)I

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setZrotationCoeff error ret:0x%08X"

    .line 40
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v7, v2, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    invoke-virtual {v0, v7, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setDrawThreshold(D)I

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setDrawThreshold error ret:0x%08X"

    .line 44
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUnsharpStrength(I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "MorphoPanoramaGP3.setUnsharpStrength error ret:0x%08X"

    .line 48
    invoke-static {v2, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAovGain(D)I

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setAovGain error ret:0x%08X"

    .line 52
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_8
    iget-object v5, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v6, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    iget-wide v8, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    iget-wide v10, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    iget-wide v12, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    invoke-virtual/range {v5 .. v13}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setDistortionCorrectionParam(DDDD)I

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setDistortionCorrectionParam error ret:0x%08X"

    .line 56
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v5, v2, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    invoke-virtual {v0, v5, v6}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setRotationRatio(D)I

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setRotationRatio error ret:0x%08X"

    .line 60
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setSensorUseMode(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setSensorUseMode error ret:0x%08X"

    .line 64
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setProjectionMode(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setProjectionMode error ret:0x%08X"

    .line 68
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setMotionDetectionMode(I)I

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v4, [Ljava/lang/Object;

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "MorphoPanoramaGP3.setMotionDetectionMode error ret:0x%08X"

    .line 72
    invoke-static {v2, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget p0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    invoke-virtual {v0, p0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setNoiseReductionParam(I)I

    move-result p0

    if-eqz p0, :cond_e

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "MorphoPanoramaGP3.setNoiseReductionParam error ret:0x%08X"

    .line 76
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final createDirection(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x5a

    if-eq v2, v7, :cond_9

    const/16 v8, 0x10e

    if-ne v2, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v14

    .line 3
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_2

    .line 4
    new-instance v1, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v12, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v15, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 5
    :cond_2
    new-instance v1, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v12, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v15, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 6
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v1

    .line 7
    iget v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v2, v7, :cond_4

    .line 8
    new-instance v9, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v3, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v5, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v8, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;-><init>(IIIIII)V

    iput-object v9, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 9
    :cond_4
    new-instance v9, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v3, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v5, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v8, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;-><init>(IIIIII)V

    iput-object v9, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 10
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v15

    .line 11
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_6

    .line 12
    new-instance v1, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 13
    :cond_6
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 14
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v8

    .line 15
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_8

    .line 16
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 17
    :cond_8
    new-instance v1, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    :cond_9
    :goto_0
    if-eq v1, v6, :cond_10

    if-eq v1, v5, :cond_e

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_a

    goto/16 :goto_1

    .line 18
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v15

    .line 19
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_b

    .line 20
    new-instance v1, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 21
    :cond_b
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 22
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v8

    .line 23
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_d

    .line 24
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto/16 :goto_1

    .line 25
    :cond_d
    new-instance v1, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/DownDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto :goto_1

    .line 26
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v15

    .line 27
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_f

    .line 28
    new-instance v1, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto :goto_1

    .line 29
    :cond_f
    new-instance v1, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto :goto_1

    .line 30
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v8

    .line 31
    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v7, :cond_11

    .line 32
    new-instance v1, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    goto :goto_1

    .line 33
    :cond_11
    new-instance v1, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/morphoinc/app/panoramagp3/LeftDirectionFunction;-><init>(IIIIII)V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    :goto_1
    return-void
.end method

.method public final declared-synchronized getMaxOutputSize([I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    aput v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPreviewImage()Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "MorphoEngine"

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "mMorphoPanoramaGP3.updatePreviewImage error ret:0x%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 6
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScaleH()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v1, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr v1, p0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getScaleV()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v1, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/2addr v1, p0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final initSensorFusion()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v1, "sensor"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 5
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    .line 9
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    .line 11
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 12
    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iput v1, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMode:I

    .line 17
    iget-object v3, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v3, v1}, Lcom/morphoinc/core/MorphoSensorFusion;->setMode(I)I

    move-result v1

    const/4 v3, 0x0

    or-int/2addr v1, v3

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_5

    const-string v0, "MorphoEngine"

    .line 19
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.setMode error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_1
    iget-object v0, v1, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, v3}, Lcom/morphoinc/core/MorphoSensorFusion;->setOffsetMode(I)I

    move-result v0

    or-int/2addr v0, v3

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    const-string v1, "MorphoEngine"

    .line 24
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.setOffsetMode error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    .line 26
    monitor-enter p0

    .line 27
    :try_start_2
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, v2}, Lcom/morphoinc/core/MorphoSensorFusion;->setAppState(I)I

    move-result v0

    or-int/2addr v0, v3

    .line 28
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    const-string p0, "MorphoEngine"

    .line 29
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SensorFusion.setAppState error ret:0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 31
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 32
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final initializeEngine(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->createNativeOutputInfo()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MorphoEngine"

    if-eqz p0, :cond_0

    .line 2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "MorphoPanoramaGP3.createNativeOutputInfo error ret:0x%08X"

    .line 4
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->initialize(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "MorphoPanoramaGP3.initialize error ret:0x%08X"

    .line 8
    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    aget v4, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, p1, v2

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 3
    aget v2, v0, v3

    aget v4, p1, v3

    add-float/2addr v2, v4

    aput v2, v0, v3

    .line 4
    aget v2, v0, v1

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 5
    iget p1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v2

    aput v4, v0, v2

    .line 7
    aget v2, p1, v3

    aput v2, v0, v3

    .line 8
    aget p1, p1, v1

    aput p1, v0, v1

    .line 9
    iput v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    :goto_0
    return-void
.end method

.method public final registerSensorListeners()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    .line 2
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/16 v3, 0x9

    .line 5
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iput v1, v3, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMode:I

    .line 13
    iget-object v4, v3, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v4, v1}, Lcom/morphoinc/core/MorphoSensorFusion;->setMode(I)I

    .line 14
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v3, v3, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    if-ne v3, v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v2, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final releaseSensorFusion()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/morphoinc/core/MorphoSensorFusion;->finish()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SensorFusion"

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoSensorFusion.finish error ret:0x%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    .line 6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized saveOutputImage(I[I)Z
    .locals 15

    move-object v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v2

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v3, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v0, "MorphoEngine"

    .line 5
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "mMorphoPanoramaGP3.getClippingRect error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 7
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return v2

    .line 9
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eqz v6, :cond_6

    if-nez v7, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    aput v6, p2, v2

    .line 12
    aput v7, p2, v4

    .line 13
    iget-object v3, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v3, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->createOutputImage(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "MorphoEngine"

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoPanoramaGP3.createOutputImage error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    monitor-exit p0

    return v2

    .line 16
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    aget-wide v8, v0, v2

    invoke-static {v8, v9}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->formatDateString(J)Ljava/lang/String;

    move-result-object v9

    .line 17
    iget-object v0, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    aget-wide v10, v0, v4

    invoke-static {v10, v11}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->formatDateString(J)Ljava/lang/String;

    move-result-object v10

    .line 18
    new-instance v12, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;

    invoke-direct {v12}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;-><init>()V

    .line 19
    iget-object v5, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanorama360ViewDisable()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    if-le v0, v3, :cond_4

    move v14, v4

    goto :goto_0

    :cond_4
    move v14, v2

    :goto_0
    move/from16 v8, p1

    .line 21
    invoke-virtual/range {v5 .. v14}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->savePanorama360(IIILjava/lang/String;Ljava/lang/String;ZLcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;ZZ)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "PanoramaGP3"

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePanorama360 ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return v2

    .line 24
    :cond_5
    monitor-exit p0

    return v4

    .line 25
    :cond_6
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setInitialRotationByGravity()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    if-lez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    const/4 v8, 0x0

    aget v2, p0, v8

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v9, 0x1

    .line 3
    aget v3, p0, v9

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x2

    .line 4
    aget p0, p0, v4

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v4, v2

    float-to-double v6, v3

    float-to-double v10, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v10

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setInitialRotationByGravity(DDD)I

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v9, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "MorphoPanoramaGP3.setInitialRotationByGravity error ret:0x%08X"

    .line 8
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MorphoEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final declared-synchronized setPreviewImage(II)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "MorphoEngine"

    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MorphoPanoramaGP3.setPreviewImage error ret:0x%08X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 6
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSensorFusionRotation(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v1

    .line 2
    :goto_0
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->camera_rotation:I

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/morphoinc/core/MorphoSensorFusion;->setRotation(I)I

    move-result p1

    or-int/2addr p1, v2

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const-string p0, "MorphoEngine"

    .line 6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setRotation error ret:0x%08X"

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 8
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final setSensorFusionValue()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroMatrix:[D

    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRVMatrix:[D

    iget-object v5, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mACMatrix:[D

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->isUpdateSensorMatrix()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->updateSensorMatrix()I

    move-result v6

    or-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v9, v8, v7

    aget-object v8, v8, v7

    array-length v8, v8

    invoke-static {v9, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x3

    if-eqz v4, :cond_2

    .line 7
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v9, v8, v3

    aget-object v8, v8, v3

    array-length v8, v8

    invoke-static {v9, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v4, 0x1

    if-eqz v5, :cond_3

    .line 8
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v9, v8, v4

    aget-object v8, v8, v4

    array-length v8, v8

    invoke-static {v9, v7, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_3
    iget-boolean v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v1, v5, :cond_4

    move v5, v7

    .line 10
    :goto_1
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 11
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_5

    const-string v0, "MorphoEngine"

    .line 13
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.getSensorMatrix error ret:0x%08X"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v7

    invoke-static {v2, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-boolean v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    if-eqz v5, :cond_6

    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v2, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    .line 19
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 20
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    if-ne v0, v4, :cond_7

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v0

    .line 22
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    .line 24
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-array v2, v3, [Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    .line 26
    invoke-virtual {v0, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setGyroscopeData([Lcom/morphoinc/core/MorphoSensorFusion$SensorData;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "MorphoEngine"

    .line 27
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoPanoramaGP3.setGyroscopeData error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 29
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    if-ne v0, v1, :cond_8

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v0, v0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-virtual {v1, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setRotationVector([D)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "MorphoEngine"

    .line 33
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoPanoramaGP3.setRotationVector error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    .line 35
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->clearStockData()V

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method public final setupRoundSensorFusion()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 7
    new-instance v0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    :cond_3
    :goto_0
    return-void
.end method
