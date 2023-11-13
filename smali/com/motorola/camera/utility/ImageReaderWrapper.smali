.class public final Lcom/motorola/camera/utility/ImageReaderWrapper;
.super Ljava/lang/Object;
.source "ImageReaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;,
        Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mHeldImagesNumber:I

.field public final mImageReader:Landroid/media/ImageReader;

.field public mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

.field public mWaitingNumber:I


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method


# virtual methods
.method public final declared-synchronized acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    iget-object v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v2

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-object v2

    .line 6
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    .line 7
    new-instance v1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;-><init>(Lcom/motorola/camera/utility/ImageReaderWrapper;Landroid/media/Image;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized acquireNextImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    iget-object v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v2

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-object v2

    .line 6
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    .line 7
    new-instance v1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;-><init>(Lcom/motorola/camera/utility/ImageReaderWrapper;Landroid/media/Image;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/ImageReaderWrapper;)V

    invoke-virtual {p1, v0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method
