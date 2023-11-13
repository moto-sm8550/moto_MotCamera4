.class public final Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "StoreSwitchDirectionRunnable.java"


# instance fields
.field public final mDirection:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;->mDirection:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;->mDirection:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;->mDirection:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v0, "MODE_DIRECTION"

    if-ne p0, p2, :cond_2

    if-nez p3, :cond_1

    return-void

    .line 6
    :cond_1
    check-cast p3, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreSwitchDirectionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
