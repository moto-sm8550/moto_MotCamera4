.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x1

    const-string/jumbo v2, "this$0"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->determinateCaptureFinished(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 4
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void

    .line 6
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    .line 9
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    .line 11
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;->checkMediaVolumesAvailable()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller$1;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 13
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 16
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/LocationManager;->stopLocationUpdates(Landroid/app/Activity;)V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/OrientationEvent;->disable()V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    if-eqz v0, :cond_5

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    if-eqz v0, :cond_6

    .line 26
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :catch_1
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    if-eqz v0, :cond_7

    .line 28
    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    :catch_2
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    if-eqz v0, :cond_8

    .line 30
    iget-object v0, v0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->onMediaVolumesChangedListener:Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    const-string v2, "listener"

    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/storage/MediaVolumesHolder$removeMediaVolumesChangedListener$$inlined$runOnWorker$1;

    invoke-direct {v4, v0}, Lcom/motorola/camera/storage/MediaVolumesHolder$removeMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v0, :cond_9

    .line 34
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    .line 35
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 38
    new-instance v4, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 39
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    .line 40
    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    .line 41
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->unregisterActionReceiver()V

    .line 44
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-eqz v0, :cond_e

    .line 45
    invoke-virtual {v0}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v2

    const-string/jumbo v3, "statesToListenFor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 47
    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 48
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 49
    iget-object v3, v3, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 50
    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 51
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/StateChangeListener;Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->unregisterActionReceiver()V

    .line 54
    :cond_d
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_e

    .line 55
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 56
    :catch_3
    :cond_e
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 57
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v2, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    .line 58
    :cond_f
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    :goto_1
    return-void

    .line 59
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    .line 60
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 61
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->show()V

    .line 62
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    int-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
