.class public final Lcom/motorola/camera/fsm/camera/CameraState;
.super Lcom/motorola/camera/fsm/State;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/State<",
        "Lcom/motorola/camera/fsm/camera/Trigger;",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "*>;)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mEntryCode:Lcom/motorola/camera/fsm/FsmRunnable;

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitCode:Lcom/motorola/camera/fsm/FsmRunnable;

    iget-object v4, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mExitAfterFireChange:Lcom/motorola/camera/fsm/FsmRunnable;

    iget-object v5, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAlwaysRunCode:Lcom/motorola/camera/fsm/FsmRunnable;

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mParent:Lcom/motorola/camera/fsm/State;

    iget-object v7, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/LinkedHashSet;

    iget-boolean v8, p1, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mAutoTransitionState:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/fsm/State;-><init>(Ljava/lang/Object;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/State;Ljava/util/Collection;Z)V

    return-void
.end method

.method public static builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object v0
.end method
