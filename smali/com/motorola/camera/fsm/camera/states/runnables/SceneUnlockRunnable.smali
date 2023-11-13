.class public final Lcom/motorola/camera/fsm/camera/states/runnables/SceneUnlockRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SceneUnlockRunnable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 3
    const-class p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter p0

    .line 4
    :try_start_0
    sget-boolean p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    sput-boolean p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    .line 6
    invoke-static {p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneUnlockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
