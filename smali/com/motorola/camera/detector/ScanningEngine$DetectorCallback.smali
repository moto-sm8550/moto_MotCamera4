.class public interface abstract Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;
.super Ljava/lang/Object;
.source "ScanningEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/detector/ScanningEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetectorCallback"
.end annotation


# virtual methods
.method public abstract onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
.end method

.method public abstract onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
.end method
