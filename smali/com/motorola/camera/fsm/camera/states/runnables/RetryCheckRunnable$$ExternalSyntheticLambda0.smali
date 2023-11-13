.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 1
    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->mRetryCount:I

    const-string v0, "error_retry_count"

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
