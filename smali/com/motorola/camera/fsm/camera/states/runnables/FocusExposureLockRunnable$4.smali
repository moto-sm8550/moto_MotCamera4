.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;
.super Ljava/lang/Object;
.source "FocusExposureLockRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/device/callables/CallableListener<",
        "Ljava/util/List<",
        "Landroid/hardware/camera2/CaptureRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/device/callables/CaptureRequestAdapter;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 3
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$1;

    .line 4
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$captureRequestAdapter:Lcom/motorola/camera/device/callables/CaptureRequestAdapter;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 6
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 7
    new-instance v7, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    .line 8
    iget-object v5, p1, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Landroid/os/Handler;

    move-object v0, v7

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 10
    invoke-virtual {p1, v7}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->val$cameraId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/device/callables/CallableListener;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/device/callables/CallableListener;

    return-void
.end method
