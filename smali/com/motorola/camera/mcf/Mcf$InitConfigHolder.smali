.class public interface abstract Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;
.super Ljava/lang/Object;
.source "Mcf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitConfigHolder"
.end annotation


# virtual methods
.method public abstract getConfiguration()[B
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDebugLogDDMask()I
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getTuningConfiguration()[B
.end method

.method public abstract releaseConfig()V
.end method
