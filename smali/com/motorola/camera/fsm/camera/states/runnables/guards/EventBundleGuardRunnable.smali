.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;
.super Ljava/lang/Object;
.source "EventBundleGuardRunnable.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mGuard:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mDefaultValue:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    instance-of p1, p2, Landroid/os/Bundle;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TIMER"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mDefaultValue:Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;->mGuard:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method
