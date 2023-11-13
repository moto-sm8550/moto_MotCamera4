.class public final Lcom/motorola/camera/device/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/device/CameraHandlerThread$CameraData;,
        Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;
    }
.end annotation


# instance fields
.field public final mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Lcom/motorola/camera/device/CameraHandlerThread;

    const-string v0, "CameraHandlerThread"

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    invoke-direct {v0}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread;->mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    return-void
.end method
