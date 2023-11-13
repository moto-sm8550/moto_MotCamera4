.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/device/callables/StopRepeatingListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public final synthetic f$3:Lcom/motorola/camera/device/callables/CameraListener;

.field public final synthetic f$4:Lcom/motorola/camera/device/callables/StopRepeatingListener;

.field public final synthetic f$5:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/StopRepeatingListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/device/callables/CameraListener;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$4:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$5:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onStopRepeating()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$3:Lcom/motorola/camera/device/callables/CameraListener;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$4:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;->f$5:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Lcom/motorola/camera/device/callables/StopRepeatingListener;)V

    invoke-static {v1, v2, v3, v5, p0}, Lcom/motorola/camera/device/CameraService;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/CaptureRequestListener;Landroid/os/Handler;)V

    return-void
.end method
