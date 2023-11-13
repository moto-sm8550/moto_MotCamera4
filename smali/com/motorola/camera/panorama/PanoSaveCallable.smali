.class public final Lcom/motorola/camera/panorama/PanoSaveCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "PanoSaveCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/panorama/PanoCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/panorama/PanoListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    .line 2
    new-instance p2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {p2, p1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    return-void
.end method

.method public static createMosaic()Landroid/graphics/YuvImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    goto/16 :goto_0

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v3, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v1, "MorphoEngine"

    .line 7
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "mMorphoPanoramaGP3.getClippingRect error ret:0x%08X"

    new-array v5, v5, [Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    .line 9
    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_0

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v3, v6, v7

    mul-int/lit8 v3, v3, 0x3

    .line 13
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 14
    iget-object v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v8, v3, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getOutputImage([BLandroid/graphics/Rect;)I

    move-result v1

    .line 16
    iget-object v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v3, "MorphoEngine"

    .line 18
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "mMorphoPanoramaGP3.getOutputImage error ret:0x%08X"

    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 20
    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit v0

    goto :goto_0

    .line 22
    :cond_2
    :try_start_3
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v8, 0x0

    move-object v2, v1

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    const-string v0, "PanoSaveCallable"

    const-string v1, "getOutputImage() returned null."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to generate image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/panorama/PanoCallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "SAVE_TIME"

    const-string v3, "PROCESSING_SAVE_TIME"

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_SAVE_OUTPUT_BY_ENGINE"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v8, "PANO_CANCELED"

    const-string v9, "PanoSaveCallable"

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    .line 3
    iget-object v10, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v10}, Lcom/motorola/camera/storage/MediaFile;->getWriteFd()I

    move-result v10

    const/16 v11, 0x9

    .line 4
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 5
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v11

    .line 6
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isSelfieMirrorSupported()Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v7

    goto :goto_0

    :cond_0
    move v13, v12

    .line 7
    :goto_0
    invoke-virtual {v11, v10, v13}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->saveJpeg(II)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->saveOutputImage(I[I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 9
    :goto_1
    new-instance v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v9, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v8, v9}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    iget-object v6, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_IMAGE_WIDTH"

    aget v10, v0, v12

    invoke-virtual {v6, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v6, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_IMAGE_HEIGHT"

    aget v0, v0, v7

    invoke-virtual {v6, v9, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-static {v8}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v8

    goto/16 :goto_4

    :cond_2
    :try_start_3
    const-string v0, "Error saving Panorama image or operation was cancelled"

    .line 13
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 15
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Error saving Panorama image"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 18
    iget-object v4, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v3, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v2, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 21
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v0

    .line 23
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 24
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/panorama/PanoSaveCallable;->createMosaic()Landroid/graphics/YuvImage;

    move-result-object v10

    .line 25
    invoke-virtual {v1, v10, v0}, Lcom/motorola/camera/panorama/PanoSaveCallable;->postProcessMosaic(Landroid/graphics/YuvImage;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 26
    :catch_1
    :try_start_6
    new-instance v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;-><init>()V

    .line 27
    :goto_2
    iget-boolean v10, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->isValid:Z

    if-eqz v10, :cond_4

    .line 28
    new-instance v8, Lcom/motorola/camera/saving/ImageDataHolder;

    const/4 v12, 0x1

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->data:[B

    .line 29
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    iget v9, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->width:I

    iget v0, v0, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;->height:I

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object v11, v8

    move v14, v9

    move v15, v0

    move/from16 v16, v9

    move/from16 v17, v0

    .line 30
    invoke-direct/range {v11 .. v21}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 31
    new-instance v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v9, v8, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 32
    :try_start_7
    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v8, v9

    .line 33
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 34
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 35
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 37
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 38
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v6, v9

    goto :goto_4

    :cond_4
    :try_start_8
    const-string v0, "Error creating hi res Mosaic image or operation was cancelled"

    .line 39
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Error creating hi res image"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 43
    iget-object v4, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 44
    iget-object v3, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v2, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 46
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 47
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 48
    :goto_4
    :try_start_9
    iget-object v8, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 49
    iget-object v8, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "PANO_FAILURE"

    invoke-virtual {v8, v9, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    new-instance v7, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v7, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 52
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 53
    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-nez v6, :cond_5

    .line 54
    new-instance v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v6, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 55
    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 56
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-object v7

    :goto_5
    move-object v8, v6

    .line 57
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 58
    iget-object v4, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    iget-object v3, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-nez v8, :cond_6

    .line 60
    new-instance v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoSaveCallable;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v8, v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    .line 61
    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 63
    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoSaveCallable"

    return-object p0
.end method

.method public final postProcessMosaic(Landroid/graphics/YuvImage;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;
    .locals 5

    .line 1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v0

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 4
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    const-string v2, "PANO_IMAGE_WIDTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v0

    const-string v1, "PANO_IMAGE_HEIGHT"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p2, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result p1

    invoke-direct {p2, p0, v0, p1}, Lcom/motorola/camera/panorama/PanoSaveCallable$MosaicJpeg;-><init>([BII)V

    return-object p2
.end method
