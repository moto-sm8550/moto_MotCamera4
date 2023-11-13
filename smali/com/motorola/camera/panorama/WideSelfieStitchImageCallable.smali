.class public final Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "WideSelfieStitchImageCallable.java"


# instance fields
.field public final mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    if-lez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 5
    iget v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 6
    array-length v3, v0

    .line 7
    iget-boolean v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v1, v2, v3, v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFaceRect(II[Landroid/graphics/Rect;)I

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 10
    iget v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/4 v8, 0x3

    new-array v7, v8, [I

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    .line 12
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 15
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    mul-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    new-array v10, v2, [B

    const/16 v11, 0x5a

    const/16 v12, 0xb4

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v12, :cond_3

    if-ne v0, v11, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 17
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 18
    array-length v2, v1

    .line 19
    invoke-static {v1, v13, v10, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 21
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 22
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 23
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 24
    iget-boolean v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_4

    goto :goto_2

    .line 25
    :cond_4
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    move v5, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/lenovo/core/LenovoPanoramaSelfie;->pictureRotate([BIII[B[I)V

    .line 26
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 27
    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    if-eqz v0, :cond_8

    if-ne v0, v12, :cond_5

    goto :goto_3

    :cond_5
    if-eq v0, v11, :cond_6

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_a

    .line 28
    :cond_6
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 29
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 30
    iget-boolean v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_7

    goto :goto_4

    .line 31
    :cond_7
    iget-object v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aput v1, v4, v13

    .line 32
    aput v3, v4, v2

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFullImageSize(II)V

    goto :goto_4

    .line 34
    :cond_8
    :goto_3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v0

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 35
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 36
    iget-boolean v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v4, :cond_9

    goto :goto_4

    .line 37
    :cond_9
    iget-object v4, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    aput v1, v4, v13

    .line 38
    aput v3, v4, v2

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/core/LenovoPanoramaSelfie;->setFullImageSize(II)V

    :cond_a
    :goto_4
    new-array v0, v2, [I

    .line 40
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 42
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 43
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 45
    aget v1, v1, v13

    .line 46
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v4

    .line 47
    iget-object v4, v4, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 48
    aget v4, v4, v2

    if-eqz v1, :cond_10

    if-nez v4, :cond_b

    goto/16 :goto_9

    :cond_b
    const-string v5, "PanoSelfie"

    .line 49
    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "PanoHelper"

    if-nez v5, :cond_c

    const-string v1, "dumpPanoSelfieInputImage: directory is null"

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 51
    :cond_c
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "Failed to create bitmap"

    .line 52
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 53
    :cond_d
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v4

    .line 54
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v7

    .line 55
    iget-object v7, v7, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    .line 56
    iget-object v4, v4, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v4, v10, v7, v1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/motorola/camera/panorama/PanoHelper;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v9, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_8

    :catch_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_2
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    .line 63
    :goto_5
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException when read file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_7

    :catch_3
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    .line 65
    :goto_6
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 67
    :goto_7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    :cond_e
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_9

    .line 69
    :goto_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_f
    invoke-static {v3}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 72
    throw p0

    .line 73
    :cond_10
    :goto_9
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 74
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 75
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isSelfieMirrorSupported()Z

    move-result v4

    .line 76
    monitor-enter v1

    .line 77
    :try_start_4
    iget-boolean v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v5, :cond_11

    .line 78
    monitor-exit v1

    goto :goto_a

    .line 79
    :cond_11
    iget v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    aput v5, v0, v13

    .line 80
    iget-object v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v5, v10, v3, v2, v4}, Lcom/lenovo/core/LenovoPanoramaSelfie;->imageStitchingYUV([BIII)V

    .line 81
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    :goto_a
    iget-object v1, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    .line 83
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->getImageStitchingStatus()I

    move-result v2

    .line 84
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v8, v2, :cond_12

    .line 85
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 86
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v5, 0x7f1100c5

    invoke-direct {v4, v5}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v5, 0x4

    .line 87
    iput v5, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    .line 88
    invoke-static {v4, v2, v3}, Lcom/motorola/camera/ActivityBase$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    .line 89
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 90
    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;->mWideSelfieCaptureListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;

    aget v0, v0, v13

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v8, :cond_13

    .line 91
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    .line 92
    :cond_13
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object p0

    :catchall_2
    move-exception p0

    .line 93
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
