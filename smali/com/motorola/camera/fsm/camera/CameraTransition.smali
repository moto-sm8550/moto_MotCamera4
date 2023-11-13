.class public final Lcom/motorola/camera/fsm/camera/CameraTransition;
.super Lcom/motorola/camera/fsm/Transition;
.source "CameraTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/Transition<",
        "Lcom/motorola/camera/fsm/camera/Trigger;",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 3
    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 4
    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 5
    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 6
    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 7
    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 8
    iget-boolean v6, p1, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/Transition;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/GuardedTransitionRunnable;Z)V

    return-void
.end method

.method public static builder()Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraTransition$1;-><init>()V

    return-object v0
.end method
