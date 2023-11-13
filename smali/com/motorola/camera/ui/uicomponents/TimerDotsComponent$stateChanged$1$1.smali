.class public final Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;
.super Ljava/lang/Object;
.source "TimerDotsComponent.kt"

# interfaces
.implements Lcom/motorola/camera/countdown/TimerCountdownCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCountDownCancel()V
    .locals 0

    return-void
.end method

.method public final onCountDownFinish()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onCountdown(II)V
    .locals 0

    const/16 p2, 0x5dc

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$stateChanged$1$1;->this$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
