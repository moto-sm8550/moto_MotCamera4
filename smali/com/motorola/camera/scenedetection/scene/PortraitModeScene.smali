.class public final Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SceneImpl.kt"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v1, 0x1

    const v2, 0x7f110030

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthSupported(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/mode/ModeChangeHelper;->INSTANCE:Lcom/motorola/camera/mode/ModeChangeHelper;

    const/4 p0, 0x6

    invoke-static {p1, p0, v1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleCameraBokehSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/motorola/camera/mode/ModeChangeHelper;->INSTANCE:Lcom/motorola/camera/mode/ModeChangeHelper;

    const/16 p0, 0x12

    invoke-static {p1, p0, v1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->TAG:Ljava/lang/String;

    const-string v0, "Portrait Mode / SF-Bokeh not supported."

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method
