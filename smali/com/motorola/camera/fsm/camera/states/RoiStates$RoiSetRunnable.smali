.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "RoiStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/RoiStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoiSetRunnable"
.end annotation


# instance fields
.field public final mAutoMode:Z

.field public final mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

.field public final mForceSetRoi:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    .line 4
    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 3
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5
    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "ROI_INNER"

    .line 6
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "LOCK_FOCUS_STATE"

    .line 7
    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "ENABLE"

    .line 8
    invoke-virtual {v8, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v12, 0x1

    xor-int/2addr v8, v12

    .line 9
    iget-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    const/4 v14, 0x0

    if-nez v13, :cond_1

    if-eqz v9, :cond_1

    if-nez v8, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    move v8, v12

    goto :goto_0

    :cond_1
    move v8, v14

    :goto_0
    const/4 v9, 0x2

    if-eqz v8, :cond_5

    .line 10
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 11
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 12
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 15
    invoke-static {v2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 16
    :cond_2
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;-><init>(Z)V

    invoke-virtual {v5, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMoto3ALib()Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 19
    :cond_3
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 22
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v7, v14, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 23
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 24
    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 25
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-array v5, v14, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 26
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 27
    invoke-virtual {v4, v2, v5, v14}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 29
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    .line 31
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v9

    .line 32
    invoke-static {v5, v6, v7, v4}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    goto/16 :goto_8

    .line 33
    :cond_4
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->cancelRoi()V

    goto/16 :goto_8

    .line 34
    :cond_5
    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 35
    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;

    invoke-direct {v5, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;-><init>(Z)V

    invoke-virtual {v5, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$FaceDetectionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMoto3ALib()Z

    move-result v5

    if-nez v5, :cond_6

    .line 37
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 38
    :cond_6
    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    .line 39
    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    const-string v6, "LOCATION"

    .line 40
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 41
    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    .line 42
    iget v8, v6, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const-string v10, "ROI_WIDTH"

    .line 43
    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v13, "ROI_HIGHT"

    .line 44
    invoke-virtual {v5, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "ROI_WEIGHT"

    .line 45
    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 46
    new-instance v12, Lcom/motorola/camera/PreviewSize;

    const-string v14, "SURFACE_WIDTH"

    .line 47
    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v9, "SURFACE_HEIGHT"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v12, v14, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 48
    new-instance v9, Landroid/graphics/PointF;

    iget v14, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v14, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v6, "ROI_TARGET_LOCATION"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "ROI_TARGET_WIDTH"

    .line 49
    invoke-virtual {v5, v6, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "ROI_TARGET_HIGHT"

    .line 50
    invoke-virtual {v5, v6, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "ROI_TARGET_WEIGHT"

    .line 51
    invoke-virtual {v5, v6, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "ROI_DRAG"

    .line 53
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 54
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    int-to-float v6, v7

    int-to-float v7, v8

    .line 55
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    iget v9, v12, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v11, -0x40000000    # -2.0f

    div-float/2addr v9, v11

    iget v11, v12, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v11, v11

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, -0x40800000    # -1.0f

    .line 57
    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v9, 0x2

    new-array v11, v9, [F

    const/16 v19, 0x0

    aput v6, v11, v19

    const/4 v6, 0x1

    aput v7, v11, v6

    new-array v7, v9, [F

    .line 58
    invoke-virtual {v8, v7, v11}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 59
    new-instance v8, Landroid/graphics/PointF;

    aget v9, v7, v19

    aget v7, v7, v6

    invoke-direct {v8, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 60
    iget v6, v8, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, v8, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v6, v6

    int-to-float v7, v7

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    .line 62
    new-instance v9, Landroid/graphics/RectF;

    .line 63
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 64
    iget-object v11, v11, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 65
    invoke-direct {v9, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 66
    new-instance v11, Landroid/graphics/PointF;

    iget v14, v12, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v14, v14

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v12, v12

    invoke-direct {v11, v14, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget v14, v9, Landroid/graphics/RectF;->left:F

    iget v1, v11, Landroid/graphics/PointF;->x:F

    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v1, v19

    sub-float/2addr v14, v1

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/RectF;->top:F

    sub-float v3, v11, v3

    div-float v20, v11, v19

    sub-float v3, v3, v20

    iget v0, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v1

    sub-float v11, v11, v20

    invoke-direct {v12, v14, v3, v0, v11}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    .line 68
    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result v0

    .line 69
    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v1

    neg-float v3, v0

    neg-float v9, v1

    .line 70
    invoke-virtual {v12, v3, v9}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->offset(FF)V

    sub-float/2addr v6, v0

    sub-float/2addr v7, v1

    .line 71
    invoke-virtual {v12, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_5

    .line 72
    :cond_8
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 75
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 76
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 77
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_3

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    const/high16 v9, -0x40800000    # -1.0f

    .line 78
    invoke-virtual {v1, v9, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 79
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v3, v8}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v3

    int-to-float v3, v3

    .line 81
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 82
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 83
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_b

    .line 84
    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    add-int/lit16 v3, v3, -0x168

    .line 85
    rem-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v8

    div-float/2addr v3, v8

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v9

    goto :goto_4

    .line 88
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v8

    div-float/2addr v3, v8

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v9

    :goto_4
    div-float/2addr v8, v9

    .line 90
    invoke-virtual {v1, v3, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    add-float/2addr v0, v3

    .line 93
    invoke-virtual {v1, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v8, 0x0

    aput v6, v3, v8

    const/4 v6, 0x1

    aput v7, v3, v6

    new-array v7, v0, [F

    .line 94
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 95
    new-instance v0, Landroid/graphics/PointF;

    aget v1, v7, v8

    aget v3, v7, v6

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 96
    :goto_5
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 97
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 98
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 99
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v3

    if-nez v3, :cond_c

    int-to-float v3, v10

    mul-float/2addr v3, v1

    float-to-int v10, v3

    int-to-float v3, v13

    mul-float/2addr v3, v1

    float-to-int v13, v3

    .line 100
    :cond_c
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 101
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 102
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 103
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x2

    aget v7, v3, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v9, v7, v1

    aget v1, v3, v6

    cmpl-float v1, v9, v1

    if-ltz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_e

    const/16 v1, 0x1f4

    goto :goto_7

    :cond_e
    const/16 v1, 0x190

    .line 104
    :goto_7
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 106
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 107
    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v7, v8

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v8

    invoke-static {v7, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v7

    .line 108
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v0, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v8

    invoke-static {v0, v9, v10}, Lcom/motorola/camera/Util;->clamp(III)I

    move-result v0

    const/4 v8, 0x0

    .line 109
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 110
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 111
    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v7

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 112
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 113
    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object/from16 v16, v8

    move/from16 v17, v7

    move/from16 v18, v0

    move/from16 v19, v3

    move/from16 v20, v1

    move/from16 v21, v15

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 114
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 115
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 116
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x2

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    div-int/2addr v1, v10

    add-int/2addr v1, v0

    invoke-direct {v9, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v4, v2, v6, v5}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    aget-object v3, v6, v3

    .line 119
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v0, v1, v4, v3}, Lcom/motorola/camera/mcfmanagers/McfRoiManager;->addRoi(JII)V

    .line 121
    :goto_8
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    .line 123
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const-string v6, "VIDEO_RECORDING"

    .line 8
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 9
    :goto_1
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ROI_DRAG"

    .line 10
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    move v3, v2

    .line 11
    :cond_2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    if-eqz p0, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 14
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 15
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 16
    invoke-static {v2, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray(I[I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    .line 17
    monitor-exit v0

    goto :goto_4

    .line 18
    :cond_3
    :try_start_1
    iput v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    .line 19
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 20
    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSamsung3ALib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 23
    :cond_5
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 24
    :cond_6
    monitor-enter v0

    .line 25
    :try_start_2
    iget p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_7

    .line 26
    iput p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    .line 27
    :cond_7
    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSamsung3ALib()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 30
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 31
    :cond_8
    monitor-exit v0

    :goto_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
