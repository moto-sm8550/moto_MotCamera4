.class public final Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/CameraHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraInfo"
.end annotation


# instance fields
.field public mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
