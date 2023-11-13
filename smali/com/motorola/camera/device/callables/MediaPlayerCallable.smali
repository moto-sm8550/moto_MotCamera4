.class public final Lcom/motorola/camera/device/callables/MediaPlayerCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "MediaPlayerCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public mDelay:Z

.field public final mSoundId:I

.field public final mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const p2, 0x7f100024

    .line 2
    iput p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mSoundId:I

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    .line 4
    iput-boolean p4, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mDelay:Z

    return-void
.end method

.method public static resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5
    iput-object v1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaPlayerCallable"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iput-object v1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->preparePlayer(Landroid/media/MediaPlayer;)Z

    move-result v1

    const-string v2, "Can\'t prepare player"

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    .line 10
    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->preparePlayer(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0

    .line 13
    :cond_2
    new-instance v1, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    iget-boolean v4, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mDelay:Z

    invoke-direct {v1, p0, v3, v4}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable;Lcom/motorola/camera/device/callables/MediaStatusListener;Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 17
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playing tone failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerCallable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 21
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaPlayerCallable"

    return-object p0
.end method

.method public final preparePlayer(Landroid/media/MediaPlayer;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mSoundId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer;->getNotificationSoundAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "MediaPlayerCallable"

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 10
    throw p1
.end method
