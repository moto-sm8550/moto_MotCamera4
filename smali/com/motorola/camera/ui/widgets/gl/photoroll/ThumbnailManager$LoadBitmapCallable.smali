.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;
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
    name = "LoadBitmapCallable"
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

.field public final mLoadBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

.field public final mTargetSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 3
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mTargetSize:Landroid/util/Size;

    .line 4
    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    invoke-direct {p4, p2, p3, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mLoadBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    .line 5
    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadThumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {p0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mTargetSize:Landroid/util/Size;

    invoke-static {v2}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mTargetSize:Landroid/util/Size;

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 4
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-le v5, p0, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    const/16 v5, 0xb4

    if-ne p0, v5, :cond_2

    .line 10
    :cond_1
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v4, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 12
    :goto_0
    invoke-static {v2, p0}, Lcom/motorola/camera/Util;->loadThumbnailByTargetSize(Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    .line 14
    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v4

    .line 15
    invoke-static {v2, v3, v4}, Lcom/motorola/camera/Util;->loadThumbnailByMediaStore(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v2, p0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v2

    .line 18
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 19
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_5

    .line 20
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "LoadBitmapTask.doInBackground dur:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object p0
.end method
