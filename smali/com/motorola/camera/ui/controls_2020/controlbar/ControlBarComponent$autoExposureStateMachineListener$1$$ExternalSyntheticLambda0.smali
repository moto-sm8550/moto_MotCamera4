.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

.field public final synthetic f$2:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$autoExposureStateMachineListener$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Integer;

    const-string/jumbo v2, "this$0"

    .line 1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p0

    invoke-static {v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->access$updateHalFlash(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V

    goto :goto_2

    .line 5
    :cond_1
    iget-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->inCapture:Z

    if-nez v5, :cond_7

    const/4 v5, 0x4

    if-nez v4, :cond_4

    if-nez p0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v5, p0, :cond_7

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v3, p0, :cond_7

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v5, :cond_6

    move v2, v3

    .line 9
    :cond_6
    :goto_1
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->access$updateHalFlash(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Z)V

    :cond_7
    :goto_2
    return-void
.end method
