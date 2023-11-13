.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;
.super Lcom/google/android/exoplayer2/NoSampleRenderer;
.source "SuperSlowMotionController.kt"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/NoSampleRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Playback listener renderer"

    return-object p0
.end method

.method public final render(JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$RendererListener;->onFrameRendered(J)V

    return-void
.end method
