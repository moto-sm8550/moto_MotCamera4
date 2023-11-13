.class public final Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "ZoomStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;,
        Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine<",
        "Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;",
        ">;"
    }
.end annotation


# instance fields
.field public mBaseZoom:F

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDragNumber:I

.field public mFirstFrame:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInMagneticRange:Z

.field public mMagneticValues:[I

.field public mMagneticX:[F

.field public mZoomCompleted:Z

.field public mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public mZoomTarget:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    .line 4
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v2, "window"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetState()V

    return-void
.end method

.method public static getReciprocal(F)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const-wide v0, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x4b189680    # 1.0E7f

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    .line 3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    return-void
.end method

.method public final smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    .line 1
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    move-result-object p0

    .line 2
    invoke-virtual {p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p2, v2, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getModeContextForStreaming(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    .line 7
    iget v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v4, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v5, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, p3, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 10
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    .line 11
    invoke-static {v2, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v2

    .line 12
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 14
    iget-object v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v3, v1, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface(F)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 16
    iget-object v2, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 17
    iget-object v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v3, v1, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateJumpValue(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    .line 5
    invoke-static {p2, p1}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 6
    iget p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method

.method public final zoom(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 2
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/4 v5, 0x1

    if-eqz v3, :cond_21

    const-string v6, "VIDEO_RECORDING"

    const/4 v7, 0x0

    .line 4
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v8

    or-int/2addr v6, v8

    :cond_0
    const-string v8, "TYPE"

    .line 7
    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "VALUE"

    .line 8
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    const-string v10, "ZOOM_SEG_UNIT"

    .line 9
    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0x36

    :cond_1
    const-string v11, "START_ZOOM"

    .line 10
    invoke-virtual {v3, v11, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 11
    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    .line 12
    invoke-virtual {v3, v11, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    if-eqz v8, :cond_21

    .line 13
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v3

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-nez v6, :cond_10

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    const v13, 0x3dcccccd

    if-eqz v6, :cond_7

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 18
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v14

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v15

    if-eqz v6, :cond_3

    .line 21
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v16

    goto :goto_0

    .line 22
    :cond_3
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v16

    .line 23
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackTeleCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz v16, :cond_5

    :cond_4
    sub-float/2addr v3, v13

    :cond_5
    if-eqz v6, :cond_6

    .line 25
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    goto :goto_1

    .line 26
    :cond_6
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    .line 27
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 28
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-eqz v13, :cond_10

    if-eqz v6, :cond_10

    goto :goto_4

    .line 29
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v2, v6, :cond_8

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v6, :cond_9

    :cond_8
    sub-float/2addr v3, v13

    .line 30
    :cond_9
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 31
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 32
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 33
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eq v6, v5, :cond_a

    if-ne v6, v12, :cond_b

    :cond_a
    move v13, v5

    goto :goto_2

    :cond_b
    move v13, v7

    .line 35
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCaptureSensorCombination()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v15

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 39
    sget-object v15, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    and-int/2addr v13, v14

    .line 40
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v14

    if-eqz v14, :cond_e

    if-eq v6, v11, :cond_d

    if-ne v6, v12, :cond_e

    :cond_d
    move v6, v5

    goto :goto_3

    :cond_e
    move v6, v7

    :goto_3
    if-nez v13, :cond_f

    if-eqz v6, :cond_10

    :cond_f
    :goto_4
    add-float/2addr v4, v8

    .line 41
    :cond_10
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v13, 0x3a83126f

    cmpl-float v6, v6, v13

    const/4 v13, 0x0

    if-lez v6, :cond_11

    int-to-float v6, v10

    .line 42
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    neg-float v9, v9

    div-float/2addr v9, v6

    sub-float/2addr v9, v8

    float-to-double v9, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 43
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v9, v14

    iget v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    float-to-double v14, v6

    div-double/2addr v9, v14

    double-to-float v6, v9

    .line 44
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_5

    :cond_11
    move v3, v13

    :goto_5
    cmpl-float v4, v3, v13

    if-nez v4, :cond_12

    .line 45
    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    goto :goto_6

    :cond_12
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v3

    .line 46
    :goto_6
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v9, 0x4

    if-eqz v4, :cond_18

    .line 47
    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 48
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-nez v10, :cond_14

    .line 49
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 50
    sget-object v10, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    new-array v14, v9, [F

    .line 51
    aget v15, v10, v5

    const v16, 0x3d4ccccd

    sub-float v15, v15, v16

    aput v15, v14, v5

    .line 52
    aget v15, v10, v5

    add-float v15, v15, v16

    aput v15, v14, v7

    .line 53
    aget v15, v10, v12

    sub-float v15, v15, v16

    aput v15, v14, v11

    .line 54
    aget v10, v10, v12

    add-float v10, v10, v16

    aput v10, v14, v12

    goto :goto_7

    :cond_13
    move-object v14, v6

    .line 55
    :goto_7
    iput-object v14, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    :cond_14
    if-eqz v4, :cond_18

    .line 56
    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-eqz v10, :cond_18

    div-float v14, v8, v3

    .line 57
    aget v15, v4, v5

    .line 58
    aget v16, v4, v12

    .line 59
    aget v17, v4, v7

    cmpl-float v17, v17, v13

    if-eqz v17, :cond_16

    .line 60
    aget v17, v10, v5

    cmpl-float v17, v14, v17

    if-lez v17, :cond_15

    cmpg-float v17, v14, v15

    if-gez v17, :cond_15

    move v4, v5

    goto :goto_8

    :cond_15
    cmpl-float v15, v14, v15

    if-lez v15, :cond_16

    .line 61
    aget v15, v10, v7

    cmpg-float v15, v14, v15

    if-gez v15, :cond_16

    move v4, v12

    goto :goto_8

    .line 62
    :cond_16
    aget v4, v4, v12

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_18

    .line 63
    aget v4, v10, v11

    cmpl-float v4, v14, v4

    if-lez v4, :cond_17

    cmpg-float v4, v14, v16

    if-gez v4, :cond_17

    move v4, v11

    goto :goto_8

    :cond_17
    cmpl-float v4, v14, v16

    if-lez v4, :cond_18

    .line 64
    aget v4, v10, v12

    cmpg-float v4, v14, v4

    if-gez v4, :cond_18

    move v4, v9

    goto :goto_8

    :cond_18
    move v4, v7

    :goto_8
    if-eqz v4, :cond_1f

    .line 65
    iget-boolean v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-nez v6, :cond_1b

    iget v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    const/16 v10, 0x8

    if-eq v6, v10, :cond_1b

    .line 66
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    if-nez v6, :cond_19

    new-array v6, v9, [I

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    .line 67
    :cond_19
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v13

    aget v14, v6, v13

    add-int/2addr v14, v5

    aput v14, v6, v13

    .line 68
    iget v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    if-ne v6, v10, :cond_1a

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    .line 69
    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    sget-object v10, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda1;

    invoke-interface {v6, v10}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v7, v5

    :cond_1a
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    .line 70
    :cond_1b
    iget-boolean v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-eqz v6, :cond_20

    .line 71
    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 72
    invoke-static {v5, v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 73
    invoke-static {v12, v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_9

    .line 74
    :cond_1c
    invoke-static {v11, v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 75
    invoke-static {v9, v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 76
    :cond_1d
    aget v3, v6, v12

    goto :goto_a

    .line 77
    :cond_1e
    :goto_9
    aget v3, v6, v5

    :goto_a
    div-float v3, v8, v3

    goto :goto_b

    .line 78
    :cond_1f
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    .line 79
    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    .line 80
    iput v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    :cond_20
    :goto_b
    move v4, v3

    .line 81
    invoke-static {v2, v4}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(Lcom/motorola/camera/settings/CameraType;F)Landroid/graphics/Rect;

    .line 82
    :cond_21
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 83
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v4

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    .line 85
    invoke-virtual {v0, v3, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 86
    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    .line 87
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    return-void
.end method
