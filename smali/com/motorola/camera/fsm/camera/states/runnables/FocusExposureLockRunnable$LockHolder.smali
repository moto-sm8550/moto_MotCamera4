.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;
.super Ljava/lang/Object;
.source "FocusExposureLockRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockHolder"
.end annotation


# instance fields
.field public mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/utility/Flags<",
            "Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;",
            ">;"
        }
    .end annotation
.end field

.field public mFocalLength:F

.field public mFocusLockTime:J

.field public mIsComplete:Z

.field public mLastAeFrameNum:J

.field public mLastAeState:I

.field public mLastAfState:I

.field public mOneShotPartialReceived:Z

.field public mOneShotReceived:Z

.field public mTimeoutRunnable:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$FocusTimeoutRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    .line 6
    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    .line 9
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    return-void
.end method
