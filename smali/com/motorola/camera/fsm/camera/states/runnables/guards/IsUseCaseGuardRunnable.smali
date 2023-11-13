.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsUseCaseGuardRunnable;
.super Ljava/lang/Object;
.source "IsUseCaseGuardRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mUseCase:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;


# direct methods
.method public varargs constructor <init>([Lcom/motorola/camera/fsm/camera/Constants$UseCase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsUseCaseGuardRunnable;->mUseCase:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/IsUseCaseGuardRunnable;->mUseCase:[Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
