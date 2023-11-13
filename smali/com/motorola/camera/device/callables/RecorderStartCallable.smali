.class public final Lcom/motorola/camera/device/callables/RecorderStartCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "RecorderStartCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/device/callables/MediaStatusListener;",
            "Lcom/motorola/camera/device/callables/CallableListener<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MR_START:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    .line 2
    new-instance v2, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 5
    :try_start_0
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_0

    .line 6
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    if-eqz v2, :cond_1

    .line 9
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    .line 14
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecorderStartCallable"

    return-object p0
.end method
