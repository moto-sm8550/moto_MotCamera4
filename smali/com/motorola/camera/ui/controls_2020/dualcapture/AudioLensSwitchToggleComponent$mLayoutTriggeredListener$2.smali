.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioLensSwitchToggleComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->isAudioLensSwitchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->toggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent$mLayoutTriggeredListener$2;->this$0:Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method