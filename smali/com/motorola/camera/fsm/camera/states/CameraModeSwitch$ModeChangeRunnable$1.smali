.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;
.super Ljava/lang/Object;
.source "CameraModeSwitch.java"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$manager:Lcom/motorola/camera/device/CameraStateManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$manager:Lcom/motorola/camera/device/CameraStateManager;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$manager:Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCamerasClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$manager:Lcom/motorola/camera/device/CameraStateManager;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method
