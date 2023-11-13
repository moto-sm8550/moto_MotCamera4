.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "CloseCaptureSessionRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

.field public final synthetic val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJobsCancelled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, v3}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
