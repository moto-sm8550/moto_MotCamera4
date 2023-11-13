.class public final synthetic Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;->onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters$enumunboxing$(I)V

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    const-string v3, "RTBokehMode"

    const/4 v4, 0x2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 6
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 10
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    .line 13
    invoke-static {v4}, Lcom/motorola/camera/mcf/McfParameters$Modes$EnumUnboxingLocalUtility;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    goto/16 :goto_5

    .line 15
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v2, 0x3

    .line 17
    new-instance v5, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v5}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 18
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x7

    .line 19
    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x4

    .line 20
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x8

    .line 21
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_5
    :goto_2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    .line 24
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 25
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 26
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v2

    .line 27
    :cond_6
    invoke-static {v4}, Lcom/motorola/camera/mcf/McfParameters$Modes$EnumUnboxingLocalUtility;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SegmentationMode"

    invoke-virtual {v5, v3, v2}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    .line 29
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_4

    .line 30
    :cond_7
    :goto_3
    iget-boolean v0, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 31
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    .line 32
    :cond_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v2

    .line 35
    :cond_9
    invoke-static {v4}, Lcom/motorola/camera/mcf/McfParameters$Modes$EnumUnboxingLocalUtility;->_getJsonValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    .line 38
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    .line 39
    :goto_4
    invoke-static {v5}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 40
    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 43
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 44
    sget-object v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_a
    return-void

    .line 45
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;

    .line 46
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    if-eqz v2, :cond_10

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$BufferHolder;->mYBuff:[B

    const/16 v2, 0x80

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_7
    if-ge v5, v2, :cond_b

    .line 48
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    move v5, v4

    .line 49
    :goto_8
    array-length v6, p0

    if-ge v5, v6, :cond_f

    .line 50
    aget-byte v6, p0, v5

    if-lez v6, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit16 v6, v6, 0x100

    :goto_9
    move v7, v4

    :goto_a
    if-ge v7, v2, :cond_e

    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v8, 0x2

    if-gt v8, v6, :cond_d

    if-ge v6, v9, :cond_d

    add-int/lit8 v7, v7, 0x0

    .line 51
    aget v6, v3, v7

    add-int/2addr v6, v1

    aput v6, v3, v7

    goto :goto_b

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v5, v5, 0x8

    goto :goto_8

    .line 52
    :cond_f
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    .line 55
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    goto :goto_c

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_10
    :goto_c
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
