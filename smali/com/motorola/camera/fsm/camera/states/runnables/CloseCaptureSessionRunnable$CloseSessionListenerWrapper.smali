.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;
.super Ljava/lang/Object;
.source "CloseCaptureSessionRunnable.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/CloseSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseSessionListenerWrapper"
.end annotation


# instance fields
.field public final mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

.field public final mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public final mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final mHandler:Landroid/os/Handler;

.field public final mIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/util/ListIterator;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mIterator:Ljava/util/ListIterator;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mCameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onSessionClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$CloseSessionListenerWrapper;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    :cond_1
    return-void
.end method
