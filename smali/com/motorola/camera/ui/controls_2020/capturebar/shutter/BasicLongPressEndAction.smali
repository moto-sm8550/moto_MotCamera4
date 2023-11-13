.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;
.super Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.source "ShutterEventAction.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(JJLcom/motorola/camera/EventListener;)V
    .locals 6

    const-string p0, "listener"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->Companion:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;

    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$Companion;->getCaptureLongPressEvent(ZJJ)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
