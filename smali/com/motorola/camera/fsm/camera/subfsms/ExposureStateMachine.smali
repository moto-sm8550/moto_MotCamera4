.class public final Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "ExposureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;,
        Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine<",
        "Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final mExposureMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastUpdateFrameNumber:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    return-void
.end method

.method public static setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_EXPOSURE:Lcom/motorola/camera/CameraKpi$KPI;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    .line 2
    new-instance v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    invoke-direct {v2, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 3
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 6
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-boolean p2, Lcom/motorola/camera/Util;->KPI:Z

    const/4 v3, 0x2

    if-eqz p2, :cond_4

    .line 10
    iget-object p2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_3

    iget-object p2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    iget-object p2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 17
    :cond_4
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    .line 18
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;

    .line 20
    invoke-interface {p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureChange()V

    if-eqz v1, :cond_6

    .line 21
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    .line 23
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 25
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    invoke-interface {p2, v0, v4}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureStateChange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 26
    :cond_8
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashState:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashState:Ljava/lang/Integer;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 27
    invoke-interface {p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureFlashStateChange()V

    .line 28
    :cond_9
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-interface {p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureModeChange()V

    .line 30
    :cond_a
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mLocked:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mLocked:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_6

    .line 31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onExposureLockChange()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 32
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;

    .line 5
    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureListener;->onCaptureCompleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->handleCaptureResult(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final resetState()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mLastUpdateFrameNumber:J

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->mExposureMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method
