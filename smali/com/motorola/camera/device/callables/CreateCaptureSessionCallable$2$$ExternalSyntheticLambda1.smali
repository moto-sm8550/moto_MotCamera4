.class public final synthetic Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

.field public final synthetic f$1:Lcom/motorola/camera/mcf/Mcf$SceneMode;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    .line 7
    invoke-static {p0, v1, v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void
.end method
