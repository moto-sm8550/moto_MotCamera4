.class public abstract Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
.super Ljava/lang/Object;
.source "CameraTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/CameraTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/motorola/camera/fsm/camera/CameraTransition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;"
        }
    .end annotation
.end field

.field public mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

.field public mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

.field public mFireChangeEvent:Z

.field public mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final doAfter(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public final doBefore(Lcom/motorola/camera/fsm/FsmRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    return-object p0
.end method

.method public final event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/Trigger$Event;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    return-object p0
.end method

.method public final fireChangeEvent(Z)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mFireChangeEvent:Z

    return-object p0
.end method

.method public final guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/GuardedTransitionRunnable;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    return-object p0
.end method

.method public final to(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraTransition$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition$Builder;->mEndState:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
