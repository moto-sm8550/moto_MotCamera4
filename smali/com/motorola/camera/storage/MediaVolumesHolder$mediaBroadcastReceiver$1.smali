.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaVolumesHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaVolumesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final refreshMediaVolumesRunnable:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$mediaBroadcastReceiver$1;->refreshMediaVolumesRunnable:Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
