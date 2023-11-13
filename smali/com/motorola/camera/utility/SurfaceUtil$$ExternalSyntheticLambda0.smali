.class public final synthetic Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/SurfaceUtil$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v0, "$surfaceType"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method
