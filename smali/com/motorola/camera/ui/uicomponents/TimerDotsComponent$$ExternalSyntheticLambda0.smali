.class public final synthetic Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    const-string/jumbo v1, "this$0"

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->inflateViewStub()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->displayCutoutProvider$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    .line 4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->updatePosition(Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;)V

    const/16 p0, 0x5dc

    .line 5
    invoke-virtual {v0, p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->start(I)V

    return-void
.end method
