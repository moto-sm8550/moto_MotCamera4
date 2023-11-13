.class public final Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "AddOrRemoveAvailabilityListenerCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mAvailabilityListener:Landroidx/window/core/SpecificationComputer;

.field public final mCameraServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CameraListener;Landroidx/window/core/SpecificationComputer;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object p3, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mCameraServiceHandler:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mAvailabilityListener:Landroidx/window/core/SpecificationComputer;

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
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "camera"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mAvailabilityListener:Landroidx/window/core/SpecificationComputer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    new-instance v1, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;)V

    .line 6
    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mAvailabilityCallback:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mCameraServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mAvailabilityCallback:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 9
    iput-object v3, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mAvailabilityCallback:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    .line 10
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AddOrRemoveAvailabilityListenerCallable"

    return-object p0
.end method
