.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/ChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/Constants$UseCase;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$2:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda12;->f$2:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v1

    .line 2
    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    .line 3
    :goto_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v0, v1, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v3

    .line 4
    :goto_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    if-ne v0, v1, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    if-eqz v6, :cond_d

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "ORIGIN_CAMERA_TYPE"

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    const-string v1, "CAMERA_TYPE"

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    const-string v2, "IS_MANUAL_JUMP"

    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v2

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v2, :cond_6

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p0, :cond_5

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p0, :cond_5

    const v9, 0x3fb9999a

    goto/16 :goto_5

    :cond_5
    move v4, v3

    goto :goto_5

    .line 14
    :cond_6
    :goto_3
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v2

    .line 15
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result v10

    .line 16
    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    .line 17
    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    div-float v11, v9, v11

    .line 19
    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const v13, 0x3f8ccccd

    if-ne v1, v12, :cond_7

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v14, :cond_7

    .line 20
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p0, :cond_a

    div-float v9, v2, v0

    goto :goto_5

    .line 21
    :cond_7
    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v14, :cond_9

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v14, :cond_9

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMacroCameraWithWideSupported()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result p0

    goto :goto_4

    :cond_8
    const p0, 0x3fce76c9

    :goto_4
    div-float v9, p0, v11

    goto :goto_5

    .line 24
    :cond_9
    sget-object v14, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v14, :cond_b

    if-ne v0, v12, :cond_b

    .line 25
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p0, :cond_a

    div-float v9, v10, v0

    goto :goto_5

    :cond_a
    move v9, v13

    goto :goto_5

    :cond_b
    if-ne v1, v14, :cond_c

    .line 26
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p0, :cond_c

    .line 27
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr v2, p0

    mul-float v9, v2, v10

    .line 28
    :cond_c
    :goto_5
    iget p0, v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v0, v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    .line 29
    monitor-enter v7

    .line 30
    :try_start_0
    new-instance v1, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v1}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    .line 31
    iput p0, v1, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    .line 32
    iput v0, v1, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    .line 33
    iput v5, v1, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    .line 34
    iput-boolean v6, v1, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    .line 35
    iput-boolean v8, v1, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    .line 36
    iput-boolean v3, v1, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    .line 37
    iput-boolean v4, v1, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    .line 38
    iput v9, v1, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    .line 39
    iget-object p0, v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    .line 41
    :cond_d
    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v2, v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p0, 0x0

    move-object v0, v7

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    .line 42
    :goto_6
    iget-object p0, v7, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
