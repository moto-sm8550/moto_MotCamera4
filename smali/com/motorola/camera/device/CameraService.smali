.class public final Lcom/motorola/camera/device/CameraService;
.super Ljava/lang/Object;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/device/CameraService$LazyLoader;
    }
.end annotation


# instance fields
.field public final mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

.field public final mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/device/CameraHandlerThread;

    invoke-direct {v0}, Lcom/motorola/camera/device/CameraHandlerThread;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/motorola/camera/device/CameraStateManager;

    invoke-direct {v0}, Lcom/motorola/camera/device/CameraStateManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Lcom/motorola/camera/device/CameraStateManager;

    return-void
.end method

.method public static abortCaptures(Ljava/lang/String;Lcom/motorola/camera/device/callables/AbortCapturesListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/AbortCapturesRequestCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/AbortCapturesRequestCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/AbortCapturesListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v8, Lcom/motorola/camera/device/callables/CaptureRequestCallable;

    .line 3
    iget-object v6, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/CaptureRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static createCaptureRequests(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/fsm/RequestWrapper;",
            ">;",
            "Lcom/motorola/camera/device/callables/CameraListener;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureRequestsCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CreateCaptureRequestsCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static createReprocCaptureRequest(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/CreateReprocCaptureRequestCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CreateReprocCaptureRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/McfSetEventsCallable;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/McfSetEventsCallable;-><init>(Lcom/motorola/camera/mcf/McfParameters;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroidx/transition/PathMotion;Landroid/os/Handler;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v7, Lcom/motorola/camera/device/callables/OpenCameraCallable;

    .line 3
    iget-object v6, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/device/callables/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroidx/transition/PathMotion;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0, v7}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static pauseRecorder(ZLcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/motorola/camera/device/callables/CallableListener<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/RecorderPauseCallable;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/device/callables/RecorderPauseCallable;-><init>(ZLcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static playTone(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/motorola/camera/device/callables/CameraListener;",
            "Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v8, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 3
    iget-object v6, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v8, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;

    .line 3
    iget-object v6, v0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/SetRepeatingRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0, v8}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public static stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 2
    new-instance v1, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method


# virtual methods
.method public final addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addSlowMoCallable(Lcom/motorola/camera/device/callables/CameraCallable;I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
