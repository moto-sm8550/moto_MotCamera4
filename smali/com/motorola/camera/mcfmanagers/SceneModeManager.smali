.class public final Lcom/motorola/camera/mcfmanagers/SceneModeManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SceneModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;
    }
.end annotation


# static fields
.field public static sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

.field public static sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static sSceneLockedForCapture:Z

.field public static sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sput-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 3
    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    return-void
.end method

.method public static getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p3

    .line 5
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p3, v1, :cond_2

    return-object v1

    .line 6
    :cond_1
    sget-object p3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p1, p3, :cond_2

    .line 7
    invoke-static {p1, v0}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_4
    return-object p1
.end method

.method public static declared-synchronized getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isJGSuperNight()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 6
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isASAutoSuperNight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 9
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 15
    :goto_0
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfHdrScBokehSupported(Z)Z

    move-result v0

    .line 16
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    .line 17
    invoke-static {p0, p1, v0, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, p1

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 21
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfHdrScBokehSupported(Z)Z

    move-result v0

    .line 22
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    .line 23
    invoke-static {p0, p1, v0, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_1

    :cond_6
    const/4 v0, 0x6

    .line 24
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 26
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    .line 27
    invoke-static {p0, p1, v1, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    .line 29
    :cond_8
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result p1

    if-nez p1, :cond_9

    .line 30
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result p1

    if-nez p1, :cond_9

    .line 31
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 32
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-nez v1, :cond_b

    if-nez p3, :cond_c

    .line 33
    :cond_b
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_c
    return-object p0
.end method

.method public static declared-synchronized getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 4

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    .line 5
    :goto_0
    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    .line 9
    invoke-static {v2, v1, p0, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    .line 10
    :cond_1
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 11
    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 12
    invoke-static {p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFastCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 13
    iget-boolean p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    if-nez p0, :cond_2

    .line 14
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 15
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result p0

    if-nez p0, :cond_5

    .line 16
    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result p0

    if-nez p0, :cond_3

    .line 19
    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit v0

    return-object p0

    .line 22
    :cond_3
    :try_start_2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, p0, :cond_4

    .line 23
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :goto_1
    monitor-exit v0

    return-object p0

    .line 25
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_6

    .line 26
    monitor-exit v0

    return-object v2

    .line 27
    :cond_6
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isFastCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getMaxAllowedJobs(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result p1

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mStateMap:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda1;

    .line 7
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    monitor-exit v0

    int-to-long p0, p1

    cmp-long p0, v1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized isFlashExpected()Z
    .locals 2

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 2
    iget-boolean v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result p0

    return p0

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    return p0
.end method

.method public static isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 6
    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    const/4 v3, 0x4

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v3, p0, :cond_2

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_4

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 3
    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized updateCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->canSafelyChangeStreamSetup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentScene - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 8
    iget-object v3, v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    .line 11
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 13
    iget-object v3, v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 14
    iget-boolean v2, v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    .line 15
    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 16
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 17
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 2

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 1
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    if-eqz p2, :cond_2

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isJGSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isASAutoSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isDisplayFlash()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 14
    :cond_3
    sput-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result p2

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p2

    :goto_0
    const/4 v1, 0x1

    .line 17
    invoke-static {p0, p2, p1, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlashable()Z

    move-result p2

    if-nez p2, :cond_7

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 21
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 22
    :cond_7
    :goto_2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    new-instance p2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object p2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    monitor-exit v0

    .line 25
    sget-boolean p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    if-nez p0, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 27
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getModeContextForStreaming(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    .line 5
    iget v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    iget-object v4, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, p0, v3, v4, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 2
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    const-class p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter p1

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 8
    invoke-static {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_0

    .line 9
    array-length v3, v2

    if-lez v3, :cond_0

    .line 10
    aget v2, v2, v1

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->getSceneMode(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    .line 12
    invoke-static {v2, v0, p0, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    goto :goto_0

    .line 13
    :cond_0
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    .line 15
    invoke-static {v2, v0, p0, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    :goto_0
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 17
    :goto_1
    sput-boolean v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    .line 18
    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 19
    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    .line 20
    sput-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 21
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
