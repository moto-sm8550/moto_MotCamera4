.class public final synthetic Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

.field public final synthetic f$1:Lcom/motorola/camera/mcf/McfSceneProp;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;Lcom/motorola/camera/mcf/McfSceneProp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/mcf/McfSceneProp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2$$ExternalSyntheticLambda5;->f$1:Lcom/motorola/camera/mcf/McfSceneProp;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfSceneProp;->getKeys()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;Lcom/motorola/camera/mcf/McfSceneProp;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
