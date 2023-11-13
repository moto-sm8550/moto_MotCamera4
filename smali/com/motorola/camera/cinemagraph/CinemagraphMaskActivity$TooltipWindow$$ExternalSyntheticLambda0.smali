.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->dismissTooltip()V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v0, "this$0"

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->layoutSwitch:Landroid/widget/ImageButton;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 8
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result p1

    const/4 v0, 0x2

    .line 9
    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 10
    :cond_2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;->updateCameraGroupDrawable(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
