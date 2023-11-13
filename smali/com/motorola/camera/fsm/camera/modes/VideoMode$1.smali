.class public final Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/motorola/camera/device/callables/RecorderPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/VideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v3, p1

    check-cast v3, Landroid/view/Surface;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :cond_1
    const/4 p1, 0x0

    if-nez v3, :cond_2

    const-string v0, "VideoMode"

    const-string v1, "onComplete: Surface result is null."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110549

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_message"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 15
    invoke-direct {v1, v2, v0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v4, v0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    .line 20
    invoke-direct {v6, v7, v8, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object v1, v6

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    .line 23
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    :goto_1
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 8
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 9
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110549

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_message"

    .line 18
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    .line 22
    invoke-direct {v2, v3, p1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    .line 25
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;

    return-void
.end method
