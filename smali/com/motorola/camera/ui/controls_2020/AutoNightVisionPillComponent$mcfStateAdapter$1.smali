.class public final Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "AutoNightVisionPillComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 5

    const-string v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 4
    :goto_1
    iput-boolean p1, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 6
    iget-boolean p1, p1, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 7
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 8
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_SN_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v4, "get(SettingsManager.MCF_SN_ENABLE).value"

    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x3

    .line 12
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupportAutoHDR()Z

    move-result v4

    .line 13
    invoke-virtual {v0, v1, p1, v4}, Lcom/motorola/camera/mcf/McfParameters;->setSuperNightMode$enumunboxing$(IZZ)V

    .line 14
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 16
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    if-eqz p1, :cond_6

    .line 17
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mHiddenState:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsCapturing:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mKeepHideByLux:Z

    if-nez p1, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showPill()V

    goto :goto_5

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->hidePill()V

    :goto_5
    return-void
.end method
