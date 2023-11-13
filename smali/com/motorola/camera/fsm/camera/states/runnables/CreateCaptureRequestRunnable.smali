.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "CreateCaptureRequestRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# static fields
.field public static mCaptureSequenceId:I


# instance fields
.field public final mTemplate:I

.field public mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    return-void
.end method


# virtual methods
.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public abstract preCreateCaptureRequest()V
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->preCreateCaptureRequest()V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 5
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-static {p1, p2, p0, p3}, Lcom/motorola/camera/device/CameraService;->createReprocCaptureRequest(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    .line 9
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 10
    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 11
    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 12
    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;-><init>(Ljava/lang/String;ILcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method
