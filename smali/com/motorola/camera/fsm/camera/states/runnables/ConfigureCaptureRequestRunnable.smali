.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "ConfigureCaptureRequestRunnable.java"


# static fields
.field public static mCaptureSequenceId:I


# instance fields
.field public mShotType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    return-void
.end method

.method public static getNewCaptureSequenceId()I
    .locals 1

    .line 1
    sget v0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mCaptureSequenceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mCaptureSequenceId:I

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    sput v0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mCaptureSequenceId:I

    :cond_0
    return v0
.end method


# virtual methods
.method public onConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getCaptureRequests()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 3
    invoke-virtual {v0, p1, v3, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->onPostConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method

.method public abstract onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
.end method

.method public onPostConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->onConfigureCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
