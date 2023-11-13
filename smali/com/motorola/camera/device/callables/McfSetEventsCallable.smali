.class public final Lcom/motorola/camera/device/callables/McfSetEventsCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "McfSetEventsCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mParameters:Lcom/motorola/camera/mcf/McfParameters;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Lcom/motorola/camera/mcf/McfParameters;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/McfSetEventsCallable;->mParameters:Lcom/motorola/camera/mcf/McfParameters;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    .line 4
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "McfSetEventsCallable"

    return-object p0
.end method
