.class public final Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;
.super Landroid/os/Handler;
.source "ZoomSmoothJumpRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

.field public final synthetic val$cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic val$eventData:Ljava/lang/Object;

.field public final synthetic val$from:F

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$smoothFrames:I

.field public final synthetic val$state:Lcom/motorola/camera/fsm/camera/StateKey;

.field public final synthetic val$target:F

.field public final synthetic val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Landroid/os/Looper;IFFLcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    iput p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iput p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p9, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    .line 3
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-float v0, v0

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$from:F

    iget v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$target:F

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->sigmoid(F)F

    move-result v0

    .line 6
    sget v4, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->START:F

    sub-float/2addr v0, v4

    sget v5, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->END:F

    sub-float/2addr v5, v4

    div-float/2addr v0, v5

    invoke-static {v3, v2, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$z:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$cameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v0, v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->updateJumpValue(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$state:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$eventData:Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;->access$101(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 9
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 10
    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 11
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable$1;->val$smoothFrames:I

    if-lt p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x18

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method
