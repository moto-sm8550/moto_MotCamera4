.class public Lcom/motorola/camera/fsm/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "TS;TC;>;"
        }
    .end annotation
.end field

.field public final mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "TS;TC;>;"
        }
    .end annotation
.end field

.field public final mEndState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final mEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final mFireChangeEvent:Z

.field public final mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

.field public mStartState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/FsmRunnable;Lcom/motorola/camera/fsm/GuardedTransitionRunnable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TS;TS;",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "TS;TC;>;",
            "Lcom/motorola/camera/fsm/FsmRunnable<",
            "TS;TC;>;",
            "Lcom/motorola/camera/fsm/GuardedTransitionRunnable;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/Transition;->mEvent:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/fsm/Transition;->mStartState:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/fsm/Transition;->mEndState:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/fsm/Transition;->mDoBefore:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 6
    iput-object p4, p0, Lcom/motorola/camera/fsm/Transition;->mDoAfter:Lcom/motorola/camera/fsm/FsmRunnable;

    .line 7
    iput-object p5, p0, Lcom/motorola/camera/fsm/Transition;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    .line 8
    iput-boolean p6, p0, Lcom/motorola/camera/fsm/Transition;->mFireChangeEvent:Z

    return-void
.end method
