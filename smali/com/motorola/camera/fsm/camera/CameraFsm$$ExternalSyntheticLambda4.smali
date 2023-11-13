.class public final synthetic Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/iFsmBuilder;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/iFsmBuilder;Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$1:Lcom/motorola/camera/fsm/camera/iFsmBuilder;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$2:Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$1:Lcom/motorola/camera/fsm/camera/iFsmBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;->f$2:Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/StateKey$Key;->values()[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    array-length v5, v5

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v4, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    .line 4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    .line 5
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 6
    iget-object v4, v4, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v4, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    .line 9
    new-instance v5, Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 10
    new-instance v5, Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/HashMap;

    .line 11
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 12
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    .line 13
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v5, :cond_0

    .line 23
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-boolean v5, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    if-eqz v5, :cond_1

    .line 26
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 28
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/subfsms/DebugStateMachine;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/subfsms/DebugStateMachine;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_2
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    .line 30
    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/HashMap;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 31
    :cond_3
    check-cast v1, Lcom/google/android/exoplayer2/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/Main;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 33
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ErrorState;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/ErrorState;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 34
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraInit;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 35
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 36
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 37
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/Zoom;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 38
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SettingsStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SettingsStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 39
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 40
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 41
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 42
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ExposureStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 43
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 44
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 45
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 46
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 47
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 48
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 49
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 50
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 51
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/HistoryState;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/HistoryState;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 52
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 53
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 54
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 55
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 56
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/BokehStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/BokehStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 57
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 58
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 59
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SpotColorState;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 60
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;-><init>()V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    .line 61
    new-instance v1, Ljava/util/EnumMap;

    const-class v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v1, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    .line 62
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mDelayStates:Ljava/util/EnumMap;

    .line 63
    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x1

    new-array v1, p0, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    .line 64
    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v1, v7

    new-array v4, p0, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    .line 65
    invoke-static {v1, v7, v4, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    const/4 v5, 0x0

    aget-object v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz v1, :cond_4

    .line 67
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 68
    invoke-interface {v1, v4}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    .line 69
    iget-object v1, v4, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    .line 70
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v6, v4}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_1

    :cond_4
    new-array v1, p0, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    .line 71
    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    aput-object v4, v1, v7

    new-array v4, p0, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    .line 72
    invoke-static {v1, v7, v4, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    aget-object v1, v4, v7

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz p0, :cond_5

    .line 74
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 75
    invoke-interface {p0, v1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    .line 76
    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    .line 77
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_2

    .line 78
    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 79
    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    .line 80
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "fsm init dur:"

    .line 81
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraFsm"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
