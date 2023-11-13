.class public interface abstract Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;
.super Ljava/lang/Object;
.source "BgJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/jms/BgJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransferJobListener"
.end annotation


# virtual methods
.method public abstract onJobTransferComplete(J)V
.end method

.method public abstract onJobTransferError(J)V
.end method
