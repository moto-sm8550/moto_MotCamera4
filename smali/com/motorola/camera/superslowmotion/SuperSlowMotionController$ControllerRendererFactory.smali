.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;
.super Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.source "SuperSlowMotionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerRendererFactory"
.end annotation


# instance fields
.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;

    return-void
.end method
