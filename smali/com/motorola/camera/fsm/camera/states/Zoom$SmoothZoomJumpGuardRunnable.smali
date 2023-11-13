.class public final Lcom/motorola/camera/fsm/camera/states/Zoom$SmoothZoomJumpGuardRunnable;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmoothZoomJumpGuardRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/fsm/GuardedTransitionRunnable<",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final mSmoothZoomJump:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$SmoothZoomJumpGuardRunnable;->mSmoothZoomJump:Z

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 2
    check-cast p2, Landroid/os/Bundle;

    const/4 p1, 0x0

    const-string v0, "SMOOTH_ZOOM_JUMP"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$SmoothZoomJumpGuardRunnable;->mSmoothZoomJump:Z

    if-ne p2, p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
