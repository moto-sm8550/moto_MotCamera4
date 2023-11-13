.class public final Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SetRepeatingBurstCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureSequenceAborted()V

    return-void
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureSequenceCompleted()V

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable$1;->this$0:Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;->mSetRepeatingRequestListener:Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/motorola/camera/device/callables/CaptureRequestListener;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method
