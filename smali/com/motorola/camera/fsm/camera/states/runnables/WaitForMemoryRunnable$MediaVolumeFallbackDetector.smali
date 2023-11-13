.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;
.super Ljava/lang/Object;
.source "WaitForMemoryRunnable.java"

# interfaces
.implements Lcom/motorola/camera/storage/OnMediaVolumeFallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaVolumeFallbackDetector"
.end annotation


# instance fields
.field public mFallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$MediaVolumeFallbackDetector;->mFallback:Z

    return-void
.end method
