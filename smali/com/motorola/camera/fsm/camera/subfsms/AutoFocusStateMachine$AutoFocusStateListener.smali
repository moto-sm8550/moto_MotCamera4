.class public interface abstract Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;
.super Ljava/lang/Object;
.source "AutoFocusStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoFocusStateListener"
.end annotation


# virtual methods
.method public abstract onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
.end method

.method public abstract onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
.end method

.method public abstract onFocusModeChanged(I)V
.end method

.method public abstract onManualFocusCompleted()V
.end method

.method public abstract onManualFocusStarted()V
.end method
