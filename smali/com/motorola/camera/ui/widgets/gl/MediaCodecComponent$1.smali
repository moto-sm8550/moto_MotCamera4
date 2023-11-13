.class public final Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$1;
.super Landroid/os/Handler;
.source "MediaCodecComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    :goto_0
    return-void
.end method
