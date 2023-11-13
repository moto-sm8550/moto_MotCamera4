.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateRawBitmapCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCameraData:Lcom/motorola/camera/CameraData;

.field public final mUpdateRawBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapTask;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapTask;

    invoke-direct {v0, p2, p3, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapTask;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;->mUpdateRawBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapTask;

    .line 4
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mUpdateRawBitmapExecutor:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateRawBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-static {p0, v0}, Lcom/motorola/camera/Util;->loadPostViewThumbnail(Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    return-object p0
.end method
