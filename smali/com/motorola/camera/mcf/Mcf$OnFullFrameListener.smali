.class public interface abstract Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFullFrameListener"
.end annotation


# virtual methods
.method public abstract dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;
.end method

.method public abstract enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V
.end method

.method public abstract onAuxiliaryData(Lcom/motorola/camera/mcf/McfAuxiliaryData;)V
.end method

.method public abstract onFullFrameRequest(Ljava/lang/String;[Lcom/motorola/camera/mcf/McfInstanceIdentifier;[Lcom/motorola/camera/mcf/McfMetadata;)V
.end method

.method public abstract onJpegData(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public abstract onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;)V
.end method

.method public abstract onProgressIndication(Lcom/motorola/camera/mcf/Mcf$ProgressType;Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/McfInstanceIdentifier;)V
.end method

.method public abstract onReprocessRequest(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;)V
.end method

.method public abstract onTransferToJMS(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;)V
.end method
