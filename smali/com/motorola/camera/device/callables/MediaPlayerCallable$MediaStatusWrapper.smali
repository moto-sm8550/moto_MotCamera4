.class public final Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerCallable.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/MediaPlayerCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaStatusWrapper"
.end annotation


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

.field public final mPlayDelay:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable;Lcom/motorola/camera/device/callables/MediaStatusListener;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mPlayDelay:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0, v0}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(III)V

    const/16 v0, 0x21

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mPlayDelay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 p0, 0x96

    .line 5
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v1, v0, p0, p1}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playing tone error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerCallable"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-virtual {p1}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(III)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2, p3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status;-><init>(III)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onStatus(Lcom/motorola/camera/device/callables/MediaStatusListener$Status;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/motorola/camera/device/callables/CameraCallable;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
