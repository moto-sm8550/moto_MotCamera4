.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/editor/DocJpegHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/motorola/camera/saving/SaveListener;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocJpegHolder;ZLandroid/app/Activity;Lcom/motorola/camera/saving/SaveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$3:Lcom/motorola/camera/saving/SaveListener;

    const/16 p1, 0x65

    iput p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-boolean v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$1:Z

    iget-object v3, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$2:Landroid/app/Activity;

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$3:Lcom/motorola/camera/saving/SaveListener;

    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda12;->f$4:I

    const-string v0, "ImageLength"

    const-string v6, "ImageWidth"

    const-string v7, "SaveImageService"

    .line 1
    iget v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2
    iget-object v10, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    if-ne v8, v10, :cond_1

    .line 3
    iget-object v10, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v10, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 4
    :goto_0
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v13

    invoke-virtual {v10, v12, v13, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8
    iget-object v13, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_1

    :cond_2
    iget-object v13, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 9
    :goto_1
    new-instance v14, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 10
    new-instance v13, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 11
    invoke-virtual {v13, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-virtual {v13, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 14
    invoke-virtual {v13, v6, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v13, v0, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v0, v0

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_5

    const/16 v6, 0xb4

    if-eq v0, v6, :cond_4

    const/16 v6, 0x10e

    if-eq v0, v6, :cond_3

    .line 17
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 21
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Orientation"

    .line 22
    invoke-virtual {v13, v6, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v10}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    .line 24
    invoke-virtual {v13, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)Z

    .line 25
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedPoints:[F

    if-nez v0, :cond_6

    .line 26
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    .line 27
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    array-length v12, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    :goto_3
    const-string v15, ";"

    if-ge v14, v12, :cond_7

    :try_start_1
    aget v9, v0, v14

    float-to-int v9, v9

    .line 29
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x1

    goto :goto_3

    .line 31
    :cond_7
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 33
    invoke-virtual {v13, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 34
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 36
    invoke-virtual {v13, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    .line 37
    invoke-virtual {v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :goto_4
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 v6, 0x0

    if-eqz v2, :cond_8

    .line 40
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_6

    .line 41
    :cond_8
    new-instance v2, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v2}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    .line 42
    iget-object v0, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v8, "http://ns.google.com/photos/1.0/document/"

    .line 44
    iget-object v9, v2, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_9

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 45
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 46
    iput-object v9, v2, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 47
    :cond_9
    iget-object v9, v2, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_a

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;

    .line 48
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 49
    iput-object v9, v2, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 50
    :cond_a
    iget-object v9, v2, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    .line 51
    iget-object v11, v2, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_3
    const-string v12, "Data"

    .line 52
    check-cast v11, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 53
    invoke-virtual {v11, v8, v12, v0, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v11, "image/jpeg"

    .line 54
    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 55
    invoke-virtual {v9, v8, v0, v11, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v8, "XmpData"

    const-string v9, "can\'t embed document data"

    .line 56
    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_5
    new-instance v0, Lcom/motorola/camera/saving/XmpData$PhotosOem;

    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 58
    iget-object v8, v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 59
    invoke-direct {v0, v8, v6, v6}, Lcom/motorola/camera/saving/XmpData$PhotosOem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v2, v0}, Lcom/motorola/camera/saving/XmpData;->add(Lcom/motorola/camera/saving/XmpData$PhotosOem;)Lcom/motorola/camera/saving/XmpData;

    .line 60
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    :goto_6
    :try_start_4
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    .line 63
    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 65
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 67
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 68
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;-><init>(ZLcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save document jpeg fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 71
    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda21;-><init>(ZLcom/motorola/camera/saving/SaveListener;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    :catch_3
    move-exception v0

    .line 72
    instance-of v1, v0, Landroid/app/RecoverableSecurityException;

    if-eqz v1, :cond_b

    .line 73
    check-cast v0, Landroid/app/RecoverableSecurityException;

    .line 74
    invoke-virtual {v0}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 76
    :try_start_5
    invoke-virtual/range {v3 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_7
    return-void

    .line 77
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :goto_8
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 80
    throw v0
.end method
