.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;
.super Ljava/lang/Object;
.source "QcfaStates.java"

# interfaces
.implements Lcom/motorola/camera/saving/ImageCaptureManager$QcfaCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/QcfaStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QcfaCaptureListener"
.end annotation


# instance fields
.field public mCaptureCompleted:Z

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mRawImageReady:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mRawImageReady:Z

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mCaptureCompleted:Z

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final checkComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mRawImageReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mCaptureCompleted:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CAPTURE_RAW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final onImage()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->mRawImageReady:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaCaptureListener;->checkComplete()V

    :goto_0
    return-void
.end method
