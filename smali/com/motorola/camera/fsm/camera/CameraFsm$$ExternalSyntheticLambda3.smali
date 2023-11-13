.class public final synthetic Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/Trigger;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/Trigger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/Trigger;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 3
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
