.class public final Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"

# interfaces
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/ImageCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnImageAvailable"
.end annotation


# instance fields
.field public final mCameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;->mCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager$OnImageAvailable;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->access$400(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ImageCaptureManager"

    const-string v0, "onImage"

    .line 4
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
