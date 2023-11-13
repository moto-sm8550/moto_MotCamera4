.class public interface abstract Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;
.super Ljava/lang/Object;
.source "CinemagraphEngine.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessingCallback"
.end annotation


# virtual methods
.method public abstract onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V
.end method

.method public abstract onProcessingFailed()V
.end method
