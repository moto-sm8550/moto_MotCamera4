.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string p0, "PanoramaMode"

    const-string v0, "getImageAvailableListener ImageReader#acquireNextImage() is null."

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "CAPTURING"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 7
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/google/mlkit/vision/barcode/internal/zzg;

    invoke-direct {v1, p1}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 9
    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 10
    sget-object p0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 11
    new-instance v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzg;Lcom/motorola/camera/panorama/PanoCallableListener;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_3
    :goto_0
    return-void
.end method
