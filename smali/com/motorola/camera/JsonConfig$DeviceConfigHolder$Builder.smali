.class public final Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;
.super Ljava/lang/Object;
.source "JsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public m3ATimeoutFrames:I

.field public mAnalogGainThreshold:F

.field public mBarcodeDetectionBackoff:Z

.field public mBarcodeDetectionEnabled:[Z

.field public mBarcodeTimeBetweenScans:[I

.field public mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

.field public mDepthDualConfigInputBufferCnt:[I

.field public mDepthDualConfigOutputBufferCnt:[I

.field public mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

.field public mDisableAppZslScenes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisableHalZslModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayCutoutConfigs:[F

.field public mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

.field public mDisplayScaleFactor:F

.field public mDualConfigInputBufferCnt:[I

.field public mDualConfigMaxJobCnt:[I

.field public mDualConfigOutputBufferCnt:[I

.field public mDualDepthConfigMaxJobCnt:[I

.field public mEngineMfnrEstimate:J

.field public mExtraFreeMemSizeMb:[I

.field public mFastCaptureUITimeoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mFlashAlpha:F

.field public mFlashAwbSpeed:F

.field public mFlashCctTable:Ljava/lang/String;

.field public mFlashColor:I

.field public mFlashDelay:J

.field public mFlashLuxRange:[F

.field public mFlashTorchEnable:Z

.field public mFocusTimeoutDurationFlash:I

.field public mFullFrameConfigSkipPatternCnt:[I

.field public mGainOnlyQcfaDecision:Z

.field public mGestureRemoveDelay:Z

.field public mGrallocUsageFlags:[Ljava/lang/String;

.field public mLowMemKillSizeMb:[I

.field public mMaxConcurrentJobsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public mMaxJobCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxJobSlipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxMultishotRates:[F

.field public mMaxMultishotRatesLvl1:[F

.field public mMcfSlowCaptureModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMotoFlashTuningEnable:[Z

.field public mNonSingleSessionRemosaicEstimate:J

.field public mNormalConfigInputBufferCnt:[I

.field public mNormalConfigOutputBufferCnt:[I

.field public mOfflineReprocEnabled:[Z

.field public mPanoDistortions:[D

.field public mPanoExpAdj:F

.field public mPanoNoiseReductionLevel:I

.field public mPhysicalCameraCount:I

.field public mPortraitLens:Z

.field public mPortraitLensBlurLevel:[I

.field public mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

.field public mPortraitLensZoomValue:[F

.field public mPreviewRateDepthLimit:[I

.field public mPreviewRateLimitDefault:[I

.field public mPreviewRateLimitLvl1:[I

.field public mPreviewRateLimitLvl2:[I

.field public mQcfaFastCaptureUITimeout:J

.field public mQuickCaptureVibrationConfigs:[I

.field public mRetryCount:I

.field public mRetryDelays:[I

.field public mSceneDetectionPlatform:Ljava/lang/String;

.field public mSetRepeatingSendErrorDelay:I

.field public mSingleConfigMaxJobCnt:[I

.field public mSingleConfigNormalOverrideJobCnt:[I

.field public mSingleConfigSpecialOverrideJobCnt:[I

.field public mSingleSessionRemosaicEstimate:[J

.field public mSingleSlipConfigMaxJobCnt:[I

.field public mSkinToneCountryMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/SkinToneDetection$SkinTone;",
            ">;"
        }
    .end annotation
.end field

.field public mSkinToneDetectionEnabled:Z

.field public mSkinToneSkuMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/SkinToneDetection$SkinTone;",
            ">;"
        }
    .end annotation
.end field

.field public mSlideScanConfigs:[F

.field public mSnapshotMinInterval:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field public mSuperRemosaicTriggers:[F

.field public mSuperSlowMotionLib:Ljava/lang/String;

.field public mSuperSlowMotionLowLightThreshold:I

.field public mToHighResRgThreshold:F

.field public mToNormalResRgThreshold:F

.field public mTorchControlEnable:[Z

.field public mUltraResReminderRgThreshold:F

.field public mUseAppShutterControl:Z

.field public mUseCustomNoiseReduction:[Z

.field public mUseHQPreview:[Z

.field public mUseHighResolutionOutput:[Z

.field public mVideoPortraitConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mZoomBlendingManualX:[F

.field public mZoomBlendingSegments:[F

.field public mZoomOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/motorola/camera/JsonConfig$ZoomOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public mZslDepthDualConfigInputBufferCnt:[I

.field public mZslDepthDualConfigOutputBufferCnt:[I


# direct methods
.method public constructor <init>()V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_1

    const-string v4, "default"

    .line 4
    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [I

    .line 5
    fill-array-data v5, :array_2

    new-array v6, v1, [I

    .line 6
    fill-array-data v6, :array_3

    new-array v7, v1, [I

    .line 7
    fill-array-data v7, :array_4

    new-array v8, v1, [I

    .line 8
    fill-array-data v8, :array_5

    new-array v9, v1, [I

    .line 9
    fill-array-data v9, :array_6

    new-array v10, v1, [F

    .line 10
    fill-array-data v10, :array_7

    new-array v11, v1, [I

    .line 11
    fill-array-data v11, :array_8

    new-array v12, v1, [I

    .line 12
    fill-array-data v12, :array_9

    const/4 v13, 0x1

    new-array v14, v13, [F

    const/4 v15, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v14, v15

    move-object/from16 v17, v14

    new-array v14, v13, [F

    aput v1, v14, v15

    const/4 v1, 0x3

    new-array v13, v1, [Z

    .line 13
    fill-array-data v13, :array_a

    new-array v15, v1, [Z

    .line 14
    fill-array-data v15, :array_b

    move-object/from16 v19, v15

    new-array v15, v1, [Z

    .line 15
    fill-array-data v15, :array_c

    move-object/from16 v20, v15

    new-array v15, v1, [Z

    .line 16
    fill-array-data v15, :array_d

    new-array v1, v1, [Lcom/motorola/camera/settings/CameraType;

    .line 17
    sget-object v21, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v22, v15

    const/4 v15, 0x0

    aput-object v21, v1, v15

    sget-object v18, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v15, 0x1

    aput-object v18, v1, v15

    sget-object v16, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    const/4 v15, 0x2

    aput-object v16, v1, v15

    const-string v15, "HDR"

    .line 18
    filled-new-array {v15, v15, v15}, [Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v1

    move-object/from16 v23, v15

    const/4 v15, 0x0

    new-array v1, v15, [Ljava/lang/String;

    const/16 v15, 0x8

    new-array v15, v15, [Z

    .line 19
    fill-array-data v15, :array_e

    move-object/from16 v26, v1

    move-object/from16 v25, v15

    const/4 v15, 0x1

    new-array v1, v15, [Lcom/motorola/camera/settings/CameraType;

    .line 20
    sget-object v15, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v27, v13

    const/4 v13, 0x0

    aput-object v15, v1, v13

    new-array v15, v13, [Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v24, v15

    new-array v15, v13, [F

    move-object/from16 v28, v15

    new-array v15, v13, [I

    .line 21
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    .line 22
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    .line 23
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    .line 24
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    .line 25
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    .line 26
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    .line 27
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    .line 28
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    .line 29
    iput-object v4, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    .line 30
    iput-object v5, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    .line 31
    iput-boolean v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    .line 32
    iput v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    const/16 v2, 0x9

    .line 33
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    const/16 v2, 0x1388

    .line 34
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    const/16 v2, 0x3e8

    .line 35
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    .line 36
    iput-boolean v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 37
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 39
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    .line 40
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    const/4 v2, 0x2

    new-array v3, v2, [J

    .line 41
    fill-array-data v3, :array_f

    .line 42
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    const-wide/16 v3, 0x1388

    .line 43
    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    const-wide/16 v3, 0x0

    .line 44
    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    .line 45
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRetryCount:I

    .line 46
    iput-object v6, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    .line 47
    iput-object v7, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    .line 48
    iput-object v8, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    .line 49
    iput-object v9, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    .line 50
    iput-object v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    .line 51
    iput-object v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    .line 52
    iput-object v11, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    .line 53
    iput-object v12, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v2, v17

    .line 54
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    .line 55
    iput-object v14, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    move-object/from16 v2, v27

    .line 56
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    move-object/from16 v2, v19

    .line 57
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    const-string v2, "none"

    .line 58
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    const/4 v2, 0x0

    .line 59
    iput-boolean v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    move-object/from16 v2, v20

    .line 60
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v2, v22

    .line 61
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    .line 62
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getSuperRemosaicDefaultValues()[F

    move-result-object v2

    .line 63
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    .line 64
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayScaleFactor:F

    const/4 v2, -0x1

    .line 66
    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:I

    .line 67
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    const-wide/16 v1, 0x3e8

    .line 68
    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashDelay:J

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 70
    fill-array-data v3, :array_10

    .line 71
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    move-object/from16 v2, v21

    .line 72
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    new-array v2, v1, [Lcom/motorola/camera/JsonConfig$CameraMapping;

    .line 73
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    .line 75
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    .line 76
    new-instance v1, Ljava/util/HashSet;

    .line 77
    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 78
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 79
    fill-array-data v1, :array_11

    .line 80
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 81
    fill-array-data v2, :array_12

    .line 82
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    const-string v2, ""

    .line 83
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    move-object/from16 v2, v25

    .line 84
    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    new-array v3, v1, [Z

    .line 86
    fill-array-data v3, :array_13

    .line 87
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    .line 88
    iput-boolean v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    const-wide/16 v3, -0x1

    .line 89
    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    const/16 v1, 0xc8

    .line 90
    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v3, 0x42960000    # 75.0f

    aput v3, v1, v2

    .line 91
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    .line 92
    iput-boolean v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    move-object/from16 v1, v24

    .line 93
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, v28

    .line 94
    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    .line 95
    iput-object v15, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 96
    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRetryDelays:[I

    move v15, v2

    :goto_0
    if-ge v15, v1, :cond_0

    .line 97
    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRetryDelays:[I

    const/16 v3, 0x1f4

    aput v3, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_1
    .array-data 4
        0xe
        0xe
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_5
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data

    :array_6
    .array-data 4
        0xf
        0xf
        0xf
    .end array-data

    :array_7
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_8
    .array-data 4
        0x12c
        0x12c
        0x12c
    .end array-data

    :array_9
    .array-data 4
        0xc8
        0xc8
        0xc8
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 8
        0xbb8
        0xbb8
    .end array-data

    :array_10
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_11
    .array-data 4
        0x42dc0000    # 110.0f
        0x429a0000    # 77.0f
        0x3ecccccd
        0x3e4ccccd
    .end array-data

    :array_12
    .array-data 4
        0xc8
        0x190
    .end array-data

    :array_13
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static access$1000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomOverride:Ljava/util/List;

    return-void
.end method

.method public static access$1100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSnapshotMinInterval:Ljava/util/Map;

    return-void
.end method

.method public static access$1200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    return-void
.end method

.method public static access$1300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    return-void
.end method

.method public static access$1400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    return-void
.end method

.method public static access$1500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    return-void
.end method

.method public static access$1600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    return-void
.end method

.method public static access$1700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    return-void
.end method

.method public static access$1800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    return-void
.end method

.method public static access$1900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    return-void
.end method

.method public static access$2000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[J)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    return-void
.end method

.method public static access$2100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    return-void
.end method

.method public static access$2200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    return-void
.end method

.method public static access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    .line 1
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    .line 2
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3
    :cond_0
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    .line 4
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_2

    .line 5
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    .line 6
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 7
    :cond_2
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    .line 8
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_4

    .line 9
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    .line 10
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 11
    :cond_4
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    .line 12
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    .line 13
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    .line 14
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 15
    :cond_6
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    .line 16
    array-length p0, p3

    invoke-static {p3, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static access$2400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Ljava/lang/String;)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 3
    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static access$2500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static access$2600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static access$2700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static access$2800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static access$2900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    .line 2
    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static access$300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
    .locals 99

    move-object/from16 v0, p0

    new-instance v96, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-object/from16 v1, v96

    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    iget-object v4, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    iget-object v5, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    iget-object v6, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    iget-object v7, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    iget-object v8, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    iget-object v9, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    iget-object v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    iget-object v11, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    iget-object v12, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigMaxJobCnt:[I

    iget-object v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigNormalOverrideJobCnt:[I

    iget-object v14, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigSpecialOverrideJobCnt:[I

    iget-object v15, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSlipConfigMaxJobCnt:[I

    move-object/from16 v97, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigMaxJobCnt:[I

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualDepthConfigMaxJobCnt:[I

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomOverride:Ljava/util/List;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    move/from16 v19, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    move/from16 v20, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    move/from16 v22, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    move/from16 v23, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    move/from16 v24, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    move/from16 v25, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    move/from16 v26, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    move-object/from16 v27, v1

    move-object/from16 v98, v2

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    move-wide/from16 v30, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRetryCount:I

    move/from16 v32, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRetryDelays:[I

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSnapshotMinInterval:Ljava/util/Map;

    move-object/from16 v44, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    move/from16 v45, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    move-object/from16 v46, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:I

    move/from16 v47, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    move/from16 v48, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashDelay:J

    move-wide/from16 v49, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    move/from16 v51, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    move-object/from16 v53, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    move/from16 v54, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    move-object/from16 v56, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    move/from16 v57, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneCountryMapping:Ljava/util/Map;

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneSkuMapping:Ljava/util/Map;

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMotoFlashTuningEnable:[Z

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    move-object/from16 v69, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoDistortions:[D

    move-object/from16 v70, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoExpAdj:F

    move/from16 v71, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoNoiseReductionLevel:I

    move/from16 v72, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

    move-object/from16 v73, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    move/from16 v74, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    move-object/from16 v75, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    move-object/from16 v76, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    move-object/from16 v77, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobCountMap:Ljava/util/Map;

    move-object/from16 v78, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxConcurrentJobsMap:Ljava/util/Map;

    move-object/from16 v79, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobSlipMap:Ljava/util/Map;

    move-object/from16 v80, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    move-object/from16 v81, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeTimeBetweenScans:[I

    move-object/from16 v82, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    move/from16 v83, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    move-wide/from16 v84, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    move/from16 v86, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    move/from16 v87, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLib:Ljava/lang/String;

    move-object/from16 v88, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    move-object/from16 v89, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    move/from16 v90, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v91, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    move-object/from16 v92, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    move-object/from16 v93, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    move-object/from16 v94, v1

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mVideoPortraitConfigs:Ljava/util/Map;

    move-object/from16 v95, v0

    move-object/from16 v1, v97

    move-object/from16 v2, v98

    invoke-direct/range {v1 .. v95}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;-><init>([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[I[ILjava/util/List;IIIZFFFF[JJJI[I[I[I[I[I[F[F[I[I[F[FLjava/util/Map;Z[ZIFJZ[FLjava/lang/String;F[ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;[Z[Z[Z[F[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;[DFILorg/json/JSONArray;I[F[I[ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Z[IZJZILjava/lang/String;[FZ[Lcom/motorola/camera/settings/CameraType;[F[ILjava/util/Map;Ljava/util/Map;)V

    return-object v96
.end method

.method public static access$3000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    return-void
.end method

.method public static access$3100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    return-void
.end method

.method public static access$3200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    return-void
.end method

.method public static access$3300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    return-void
.end method

.method public static access$3400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    return-void
.end method

.method public static access$3500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    return-void
.end method

.method public static access$3600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    return-void
.end method

.method public static access$3700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    return-void
.end method

.method public static access$3800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    return-void
.end method

.method public static access$3900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    return-void
.end method

.method public static access$4000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneCountryMapping:Ljava/util/Map;

    return-void
.end method

.method public static access$4100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneSkuMapping:Ljava/util/Map;

    return-void
.end method

.method public static access$4200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMotoFlashTuningEnable:[Z

    return-void
.end method

.method public static access$4300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    return-void
.end method

.method public static access$4400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    return-void
.end method

.method public static access$4500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    return-void
.end method

.method public static access$4600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public static access$4700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayScaleFactor:F

    return-void
.end method

.method public static access$4800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    return-void
.end method

.method public static access$4900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    return-void
.end method


# virtual methods
.method public final set3ATimeoutFrames(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    return-void
.end method

.method public final setBarcodeDetectionBackoff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    return-void
.end method

.method public final setBarcodeDetectionEnabled([Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    return-void
.end method

.method public final setBarcodeTimeBetweenScans([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeTimeBetweenScans:[I

    return-void
.end method

.method public final setCameraMappings([Lcom/motorola/camera/JsonConfig$CameraMapping;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    return-void
.end method

.method public final setCameraTypes([Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public final setDisableAppZslScenes(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    return-void
.end method

.method public final setDisableHalZslModes(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    return-void
.end method

.method public final setDisplayCutoutConfigs([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    return-void
.end method

.method public final setDisplayCutoutsCoordinates(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

    return-void
.end method

.method public final setFastCaptureUITimeoutMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    return-void
.end method

.method public final setFlashAwbSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    return-void
.end method

.method public final setFocusTimeoutDurationFlash(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    return-void
.end method

.method public final setMaxConcurrentJobsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxConcurrentJobsMap:Ljava/util/Map;

    return-void
.end method

.method public final setMaxJobCountMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobCountMap:Ljava/util/Map;

    return-void
.end method

.method public final setMaxJobSlipMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobSlipMap:Ljava/util/Map;

    return-void
.end method

.method public final setMcfSlowCaptureModes(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    return-void
.end method

.method public final setPortraitLens(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    return-void
.end method

.method public final setPortraitLensBlurLevel([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    return-void
.end method

.method public final setPortraitLensCameraType([Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public final setPortraitLensZoomValue([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    return-void
.end method

.method public final setQuickCaptureVibrationConfigs([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    return-void
.end method

.method public final setSetRepeatingSendErrorDelay(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    return-void
.end method

.method public final setSlideScanConfigs([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    return-void
.end method

.method public final setSuperSlowMotionLib(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLib:Ljava/lang/String;

    return-void
.end method

.method public final setSuperSlowMotionLowLightThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    return-void
.end method

.method public final setVideoPortraitConfigs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mVideoPortraitConfigs:Ljava/util/Map;

    return-void
.end method
