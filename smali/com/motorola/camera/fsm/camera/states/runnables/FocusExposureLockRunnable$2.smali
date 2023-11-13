.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;
.super Ljava/lang/Object;
.source "FocusExposureLockRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->access$1000(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    return-void
.end method

.method public final onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->access$1000(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    return-void
.end method

.method public final onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->access$1000(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    return-void
.end method

.method public final onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    .line 2
    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->access$1000(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    return-void
.end method

.method public final onFocusModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onManualFocusCompleted()V
    .locals 0

    return-void
.end method

.method public final onManualFocusStarted()V
    .locals 0

    return-void
.end method
