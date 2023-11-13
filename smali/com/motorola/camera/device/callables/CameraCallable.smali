.class public abstract Lcom/motorola/camera/device/callables/CameraCallable;
.super Ljava/lang/Object;
.source "CameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mBegin:J

.field public final mCallbackHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraId:Ljava/lang/String;

.field public final mCameraListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/device/callables/CallableListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract call()Lcom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation
.end method

.method public final getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraHandlerThread;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/CameraHandlerThread;->mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    return-object p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final postCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
