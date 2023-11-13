.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;
.super Ljava/lang/Object;
.source "BooleanBundleGuardRunnable.java"

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
.field public final mConstant:Ljava/lang/String;

.field public final mDefault:Z

.field public final mGuard:Z

.field public final mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mGuard:Z

    .line 3
    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mDefault:Z

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mConstant:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mGuard:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mConstant:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;->mDefault:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
