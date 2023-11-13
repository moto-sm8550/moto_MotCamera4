.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;
.super Ljava/lang/Object;
.source "ControlBarComponent.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted()V
    .locals 0

    return-void
.end method

.method public final onExposureChange()V
    .locals 0

    return-void
.end method

.method public final onExposureFlashStateChange()V
    .locals 0

    return-void
.end method

.method public final onExposureLockChange()V
    .locals 0

    return-void
.end method

.method public final onExposureModeChange()V
    .locals 0

    return-void
.end method

.method public final onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
