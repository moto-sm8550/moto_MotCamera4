.class public final synthetic Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 8
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mThresholdForPrompt:I

    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->hidePill()V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 11
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez p1, :cond_2

    .line 12
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showPill()V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    :cond_2
    :goto_0
    return-void
.end method
