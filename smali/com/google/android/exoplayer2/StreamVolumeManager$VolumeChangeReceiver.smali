.class public final Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolumeChangeReceiver"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;

    .line 3
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda4;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
