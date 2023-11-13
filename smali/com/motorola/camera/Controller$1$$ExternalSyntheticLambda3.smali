.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;
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

    iput p2, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    .line 2
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;->cameraSwitch:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void

    .line 5
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v0, "this$0"

    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleMargin(Z)V

    return-void

    .line 8
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    sget-boolean v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    if-nez v1, :cond_1

    .line 11
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-static {v1}, Lcom/google/mlkit/common/MlKit;->initialize(Landroid/content/Context;)V

    .line 13
    sput-boolean v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    .line 14
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance v1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-direct {v1, v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;-><init>(Ljava/util/concurrent/Executor;)V

    .line 17
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    const-class v4, Lcom/google/mlkit/vision/barcode/internal/zze;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/barcode/internal/zze;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    iget-object v5, v3, Lcom/google/mlkit/vision/barcode/internal/zze;->zza:Lcom/google/mlkit/vision/barcode/internal/zzf;

    .line 19
    invoke-virtual {v5, v1}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-object v3, v3, Lcom/google/mlkit/vision/barcode/internal/zze;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 20
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, v3, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->zza:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 22
    :goto_1
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v2, "play-services-mlkit-barcode-scanning"

    goto :goto_2

    :cond_3
    const-string v2, "barcode-scanning"

    .line 23
    :goto_2
    invoke-static {v2}, Landroidx/core/content/PermissionChecker;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    move-result-object v2

    invoke-direct {v4, v1, v5, v0, v2}, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;-><init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;)V

    .line 24
    iput-object v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    return-void

    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 26
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Controller$1;

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/Controller$1;->this$0:Lcom/motorola/camera/Controller;

    .line 28
    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 29
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    if-nez v0, :cond_5

    .line 31
    new-instance v0, Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/Controller$McfOrientationListener;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez v0, :cond_6

    .line 36
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    check-cast v5, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v5}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 37
    invoke-virtual {v0, v5}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 41
    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 42
    iget-object v7, v7, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 43
    check-cast v7, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 44
    invoke-direct {v0, v5, p0, v6, v7}, Lcom/motorola/camera/cli/content/CliContentManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    .line 45
    iget-object v5, v0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    .line 46
    iget-boolean v6, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    if-eqz v6, :cond_7

    goto :goto_3

    .line 47
    :cond_7
    iget-object v6, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-nez v6, :cond_8

    .line 48
    new-instance v6, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-direct {v6}, Lcom/motorola/camera/cli/content/CliContentViewModel;-><init>()V

    .line 49
    iput-object v6, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    .line 50
    :cond_8
    iput-boolean v2, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->isInitialized:Z

    .line 51
    iget-object v6, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v6, :cond_9

    iget-object v7, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    const/4 v8, 0x0

    .line 52
    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/cli/content/CliContentViewModel;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    :cond_9
    iget-object v6, v5, Lcom/motorola/camera/arch/view/BasePresentationHolder;->viewModel:Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v6, :cond_a

    .line 54
    new-instance v7, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    invoke-direct {v7, v5}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V

    .line 55
    iput-object v7, v6, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliContentViewModel$ContentCliCallback;

    .line 56
    :cond_a
    :goto_3
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 57
    iget-object v6, v0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    .line 58
    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 59
    sget-object v5, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 60
    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda1;

    invoke-virtual {v5, v6, v0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 61
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v0, :cond_c

    .line 62
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    .line 63
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v0, :cond_d

    .line 64
    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    .line 65
    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/motorola/camera/LocationManager;

    invoke-direct {v0}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/OrientationEvent;->enable()V

    .line 68
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    if-nez v0, :cond_f

    new-instance v0, Lcom/motorola/camera/HeadsetReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/camera/HeadsetReceiver;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    .line 69
    :cond_f
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    if-eqz v0, :cond_10

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.motorola.camera.ACTION_SET_ZOOM"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :cond_10
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    if-eqz v0, :cond_11

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "com.motorola.actions.camera.DUMP_XML"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v6, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    :cond_11
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    if-nez v0, :cond_12

    .line 78
    new-instance v0, Lcom/motorola/camera/StorageChangedEventDetector;

    invoke-direct {v0, p0}, Lcom/motorola/camera/StorageChangedEventDetector;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    .line 79
    :cond_12
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-nez v0, :cond_13

    .line 80
    new-instance v0, Lcom/motorola/camera/ControllerSaveListener;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ControllerSaveListener;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/StorageChangedEventDetector;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 83
    sget-object v7, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object v5, v0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector;->onMediaVolumesChangedListener:Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    invoke-static {v5}, Lcom/motorola/camera/storage/MediaVolumesHolder;->addMediaVolumesChangedListener(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;)V

    .line 85
    new-instance v5, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 86
    invoke-virtual {v7, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v0, :cond_14

    .line 88
    iput v1, v0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    .line 89
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    .line 90
    :cond_14
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 93
    new-instance v6, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v1}, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    .line 94
    :cond_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    .line 95
    iput-boolean v2, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    .line 96
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    if-nez v0, :cond_16

    .line 98
    new-instance v0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    invoke-direct {v0}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    .line 99
    :cond_16
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;

    .line 100
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->registerActionReceiver()V

    .line 101
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-nez v0, :cond_17

    .line 102
    new-instance v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    iget-object v5, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-direct {v0, v5}, Lcom/motorola/camera/instrumentreport/MeasureKpi;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V

    iput-object v0, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    .line 103
    :cond_17
    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    .line 104
    invoke-virtual {v0}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v5

    const-string/jumbo v6, "statesToListenFor"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v2, v5

    if-eqz v2, :cond_18

    .line 106
    iget-object v2, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 107
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 108
    iget-object v5, v5, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 109
    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 110
    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_18
    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->registerActionReceiver()V

    .line 113
    :cond_19
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 114
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v5, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v0, v2, v5}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    .line 115
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 116
    iput-boolean v1, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    .line 117
    :cond_1a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    .line 118
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_1b

    const-string p0, "registerListeners dur:"

    .line 119
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotoCameraController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_4
    return-void

    .line 121
    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    .line 122
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    if-eqz v0, :cond_1c

    .line 123
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->startDocEdit(Landroid/net/Uri;Z)V

    .line 124
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastDocFinish:Z

    goto :goto_6

    .line 125
    :cond_1c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->startDocEdit(Landroid/net/Uri;Z)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
