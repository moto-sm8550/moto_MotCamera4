.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;
.super Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;
.source "PreviewSwapNewComponent.kt"


# instance fields
.field public final dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent$dualCaptureLayoutTriggeredListener$2;-><init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;)V

    .line 3
    sget-object p3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 4
    invoke-static {p1, p2, p3}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final registerListener(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->registerListener(Z)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;->dualCaptureLayoutTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    .line 3
    invoke-static {p1, p0, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method
