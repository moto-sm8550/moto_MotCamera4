.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;
.super Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;
.source "MultiShotStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$imageSize:I

.field public final synthetic val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$imageSize:I

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->dumpCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->access$1100(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;)V

    goto :goto_1

    .line 6
    :cond_0
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    .line 9
    iget-wide v2, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    sub-long v2, v0, v2

    .line 10
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 13
    monitor-enter p1

    const/4 v3, -0x1

    .line 14
    :try_start_0
    invoke-virtual {p1, v4, v2, v2, v3}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p1

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    .line 17
    iput-wide v0, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 18
    monitor-exit p1

    throw p0

    .line 19
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz p1, :cond_2

    .line 20
    sget-object p1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    .line 21
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 24
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 25
    :cond_2
    :goto_1
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 26
    iget-boolean p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    if-nez p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 29
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_2

    .line 34
    :cond_3
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->FAST_MODE_MTK:[I

    const-string p0, "MultiShotStates"

    const-string p1, "onCaptureCompleted, save queue is full and will not update count indicator"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->access$1100(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;)V

    :cond_0
    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$imageSize:I

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkSaveQueueIsFull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "MULTI_SHOT_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->access$1100(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;)V

    :cond_1
    return-void
.end method
