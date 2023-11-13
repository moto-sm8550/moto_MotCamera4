.class public final Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;
.super Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;
.source "PanoPreviewRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 2
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_b

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 6
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 7
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 8
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    if-nez v3, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1d

    .line 10
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 12
    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_GAIN_DETECT"

    .line 14
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 15
    invoke-static {v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getGain(Landroid/media/Image;)D

    move-result-wide v4

    .line 16
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 17
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v6, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 20
    sget-object v7, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v7, :cond_16

    if-eqz v6, :cond_16

    .line 21
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_16

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_16

    const-wide/16 v11, 0x0

    cmpl-double v13, v4, v11

    if-nez v13, :cond_2

    goto/16 :goto_7

    .line 22
    :cond_2
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 23
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    .line 24
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Rational;

    .line 25
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    const/16 v16, 0x640

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v15, v11}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    .line 26
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v11

    .line 27
    monitor-enter v11

    .line 28
    :try_start_0
    iget-object v12, v11, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_3

    move v12, v10

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    monitor-exit v11

    if-eqz v12, :cond_4

    .line 29
    invoke-virtual {v14}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v11

    .line 30
    iget-object v14, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    int-to-double v11, v10

    mul-double/2addr v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    :cond_4
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 31
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v11, v6

    mul-double/2addr v4, v11

    .line 32
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    .line 33
    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBuf:[D

    iget v7, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    and-int/lit8 v7, v7, 0x7

    aput-wide v4, v6, v7

    move v4, v9

    const-wide/16 v5, 0x0

    :goto_3
    const/16 v7, 0x8

    if-ge v4, v7, :cond_5

    int-to-double v11, v4

    .line 34
    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBuf:[D

    iget v14, v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/2addr v14, v4

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v7, v14

    mul-double/2addr v11, v14

    add-double/2addr v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-wide v11, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v5, v11

    .line 35
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;-><init>()V

    .line 36
    sget-object v7, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 37
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 38
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-wide v11, 0x4157d78400000000L    # 6250000.0

    cmpg-double v11, v5, v11

    const-wide v14, 0x416312d000000000L    # 1.0E7

    if-gtz v11, :cond_6

    if-nez v7, :cond_6

    const-wide v11, 0x40fe848000000000L    # 125000.0

    .line 40
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 41
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    int-to-double v11, v7

    div-double v11, v5, v11

    .line 42
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    goto/16 :goto_4

    :cond_6
    const-wide v11, 0x4177d78400000000L    # 2.5E7

    cmpg-double v11, v5, v11

    if-gtz v11, :cond_7

    if-nez v7, :cond_7

    const-wide v11, 0x410e848000000000L    # 250000.0

    .line 43
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 44
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto/16 :goto_4

    :cond_7
    const-wide v11, 0x4197d78400000000L    # 1.0E8

    cmpg-double v16, v5, v11

    if-gtz v16, :cond_8

    if-nez v7, :cond_8

    const-wide v11, 0x411e848000000000L    # 500000.0

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 46
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto/16 :goto_4

    :cond_8
    const-wide v17, 0x41b7d78400000000L    # 4.0E8

    cmpg-double v16, v5, v17

    if-gtz v16, :cond_9

    if-nez v7, :cond_9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 47
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto/16 :goto_4

    :cond_9
    const-wide v17, 0x41edcd6500000000L    # 4.0E9

    cmpg-double v16, v5, v17

    if-gtz v16, :cond_a

    if-nez v7, :cond_a

    const/16 v7, 0x190

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    int-to-double v11, v7

    div-double v11, v5, v11

    .line 50
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    goto/16 :goto_4

    :cond_a
    const-wide v17, 0x41f65a0bc0000000L    # 6.0E9

    cmpg-double v7, v5, v17

    if-gtz v7, :cond_b

    .line 51
    invoke-static {v14, v15}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto/16 :goto_4

    :cond_b
    const-wide v17, 0x41fbf08eb0000000L    # 7.5E9

    cmpg-double v7, v5, v17

    if-gtz v7, :cond_c

    const/16 v7, 0x258

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    int-to-double v11, v7

    div-double v11, v5, v11

    .line 54
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    goto/16 :goto_4

    :cond_c
    const-wide v17, 0x4222a05f20000000L    # 4.0E10

    cmpg-double v7, v5, v17

    if-gtz v7, :cond_d

    const-wide v11, 0x416fca0555555555L    # 1.6666666666666666E7

    .line 55
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 56
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto/16 :goto_4

    :cond_d
    const-wide v17, 0x4238d5d42aaaaaabL    # 1.0666666666666667E11

    cmpg-double v7, v5, v17

    if-gtz v7, :cond_e

    const/16 v7, 0xc80

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    int-to-double v11, v7

    div-double v11, v5, v11

    .line 58
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    goto/16 :goto_4

    .line 59
    :cond_e
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v14, v7

    const-wide v19, 0x41cdcd6500000000L    # 1.0E9

    mul-double v14, v14, v19

    const-wide/high16 v21, 0x403e000000000000L    # 30.0

    div-double v14, v14, v21

    cmpg-double v7, v5, v14

    if-gtz v7, :cond_f

    const-wide v11, 0x417fca0555555555L    # 3.3333333333333332E7

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 61
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto :goto_4

    .line 62
    :cond_f
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v14, v7

    mul-double v14, v14, v19

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    div-double v14, v14, v19

    cmpg-double v7, v5, v14

    if-gtz v7, :cond_10

    .line 63
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    int-to-double v11, v7

    div-double v11, v5, v11

    .line 64
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    goto :goto_4

    .line 65
    :cond_10
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v11, v11

    div-double v11, v5, v11

    .line 66
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    .line 67
    :goto_4
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_14

    .line 68
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_14

    .line 69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v2, :cond_11

    const-wide v11, 0x415fca0555555555L    # 8333333.333333333

    goto :goto_5

    .line 70
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_12

    const-wide v11, 0x416312d000000000L    # 1.0E7

    goto :goto_5

    :cond_12
    const-wide/16 v11, 0x0

    :goto_5
    const-wide v14, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v14, v11

    move-object v7, v3

    .line 71
    iget-wide v2, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v2, v2

    cmpg-double v14, v14, v2

    if-gtz v14, :cond_13

    cmpg-double v14, v2, v11

    if-gez v14, :cond_13

    .line 72
    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v2, v2

    div-double/2addr v5, v2

    .line 73
    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto :goto_6

    :cond_13
    cmpl-double v14, v2, v11

    if-ltz v14, :cond_15

    div-double/2addr v2, v11

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 75
    invoke-virtual {v13, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    long-to-double v2, v2

    div-double/2addr v5, v2

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    goto :goto_6

    :cond_14
    move-object v7, v3

    :cond_15
    :goto_6
    move-object v8, v4

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 77
    monitor-exit v11

    throw v1

    :cond_16
    :goto_7
    move-object v7, v3

    :goto_8
    if-nez v8, :cond_17

    goto/16 :goto_9

    .line 78
    :cond_17
    sget-object v2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 79
    iget-object v2, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession$enumunboxing$(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_1a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_18

    goto/16 :goto_a

    .line 81
    :cond_18
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 82
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    .line 83
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v3, "PANO_SENSOR_EXPOSURE_TIME"

    .line 84
    iget-wide v5, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "PANO_SENSOR_SENSITIVITY"

    .line 85
    iget v5, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->sensorSensitivity:I

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-wide v2, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    const-wide/32 v5, 0x3938700

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$CaptureRequestParams;->exposureTimeNs:J

    .line 87
    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 88
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 89
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 90
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 91
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 92
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 93
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 94
    iget-object v2, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 95
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    .line 96
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    .line 97
    monitor-enter v2

    .line 98
    :try_start_1
    iget-object v3, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 99
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    .line 100
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_GAIN_DETECT"

    .line 101
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    monitor-exit v2

    goto :goto_a

    .line 102
    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v5, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 104
    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, v7, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mSetRepeatingRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;

    .line 106
    iget-object v8, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 107
    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-static {v3, v5, v7, v6, v8}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    .line 109
    monitor-exit v2

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1a
    :goto_9
    const/4 v4, 0x2

    goto :goto_a

    :cond_1b
    move v4, v2

    .line 110
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 111
    :cond_1c
    :goto_a
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 112
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 113
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 114
    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    .line 115
    invoke-virtual {v2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v3

    move v2, v4

    goto/16 :goto_0

    :cond_1d
    :goto_b
    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 3
    iget-object p2, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 7
    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 11
    invoke-static {p1, p2, p2, p0}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    return-void
.end method
