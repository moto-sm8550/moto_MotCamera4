.class public final Lcom/motorola/camera/fsm/camera/CameraFsm;
.super Ljava/lang/Object;
.source "CameraFsm.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/iCameraFsm;
.implements Lcom/motorola/camera/fsm/camera/iFsmLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/camera/iCameraFsm<",
        "Lcom/motorola/camera/fsm/camera/Trigger;",
        ">;",
        "Lcom/motorola/camera/fsm/camera/iFsmLoader<",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCameraFsm:Lcom/motorola/camera/fsm/Fsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/Fsm<",
            "Lcom/motorola/camera/fsm/camera/Trigger;",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mDelayStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/fsm/camera/StateKey$Key;",
            "Lcom/motorola/camera/fsm/camera/states/iCameraState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraFsm$Builder<",
            "*>;",
            "Lcom/motorola/camera/fsm/camera/iFsmBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fsm/Fsm;

    new-instance v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;-><init>(Lcom/motorola/camera/fsm/camera/iCameraFsm;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/Fsm;-><init>(Lcom/motorola/camera/fsm/camera/iFsmLoader;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/iFsmBuilder;Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final loadState(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraFsm$1;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm$1;-><init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    .line 6
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/State;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 2
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Dump ERROR Stack Trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFsm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mSyncronous:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 7
    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 8
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/fsm/camera/Trigger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    return p0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method
