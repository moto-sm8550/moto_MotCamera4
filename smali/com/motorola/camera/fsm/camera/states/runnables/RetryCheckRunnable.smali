.class public final Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "RetryCheckRunnable.java"


# instance fields
.field public mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    const-string v0, "error_retry"

    .line 4
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    iget-boolean p3, p3, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    if-eqz p3, :cond_1

    const-string p3, "error_retry_count"

    .line 7
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->mRetryCount:I

    .line 8
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRetryDelays:[I

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 9
    aget p3, v0, p3

    int-to-long v0, p3

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 10
    :goto_0
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    iget-object p3, p3, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p3, v2, v0, v1}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
