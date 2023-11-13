.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "WIDE_SELFIE_CAPTURE"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v3, "getSmallCaptureImageAvailableListener"

    .line 3
    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 4
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_0
    return-void
.end method
