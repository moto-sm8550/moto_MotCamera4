.class public final Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "RecorderStartCallable.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/RecorderStartCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStatusWrapper"
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(III)V

    .line 3
    new-instance p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(III)V

    .line 3
    new-instance p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
