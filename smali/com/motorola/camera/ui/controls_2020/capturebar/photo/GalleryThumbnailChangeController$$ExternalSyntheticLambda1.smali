.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

.field public final synthetic f$1:Lcom/motorola/camera/CameraData;

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/CameraData;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/CameraData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    const-string v2, "$previewFrame"

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mMode:I

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mBuffer:Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mBuffer:Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    .line 11
    :goto_1
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Lcom/motorola/camera/Util;->createMicroKindThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    .line 12
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 13
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/nio/Buffer;

    if-eqz v1, :cond_5

    .line 14
    iget-object v4, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v5, "THUMB_PATH"

    .line 15
    invoke-virtual {v4, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "null cannot be cast to non-null type java.nio.ByteBuffer"

    .line 17
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 18
    monitor-enter v0

    .line 19
    :try_start_1
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mMode:I

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_3

    .line 20
    new-instance v4, Landroid/graphics/Point;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-direct {v4, v6, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    goto :goto_2

    .line 21
    :cond_3
    :try_start_2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    .line 22
    :goto_2
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result v0

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v5

    iget v9, v4, Landroid/graphics/Point;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 24
    new-instance v9, Lcom/motorola/camera/saving/FileName;

    sget-object v12, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v9, v12, v5, v6}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-string v5, "_CAPTURE_THUMB"

    .line 25
    invoke-virtual {v9, v5}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 26
    sget-object v12, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 27
    invoke-virtual {v9}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 28
    :try_start_3
    new-instance v9, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    :try_start_5
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 33
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 34
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v3

    move-object v6, v5

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v9, v6

    :goto_3
    :try_start_6
    const-string v5, "FileUtility"

    const-string/jumbo v13, "write failed"

    .line 36
    invoke-static {v5, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_4
    move-object v3, v9

    if-eqz v0, :cond_4

    .line 38
    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;

    move-object v5, v0

    move-object v6, v12

    move-object v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda16;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v12, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    .line 39
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v3, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v5, "THUMB_PATH"

    .line 41
    invoke-virtual {v3, v5, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "THUMB_WIDTH"

    .line 43
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget-object v0, v1, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "THUMB_HEIGHT"

    .line 45
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7

    :goto_5
    move-object v5, v6

    .line 46
    :goto_6
    invoke-static {v5}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 47
    throw p0

    :catchall_2
    move-exception p0

    .line 48
    monitor-exit v0

    throw p0

    .line 49
    :cond_5
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;)V

    return-void

    :catchall_3
    move-exception p0

    .line 50
    monitor-exit v0

    throw p0
.end method
