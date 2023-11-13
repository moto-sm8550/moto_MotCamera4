.class public final synthetic Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable;Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const-string v5, "VIDEO_STOP_POST_DELAY"

    .line 1
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StopVideoAfterSuperSlowMotionMinDurationRunnable;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v1, v0, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 4
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
