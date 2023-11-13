.class public final Lcom/motorola/camera/editor/load/LoadDocJpegTask;
.super Landroid/os/AsyncTask;
.source "LoadDocJpegTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/editor/DocJpegHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCropUri:Landroid/net/Uri;

.field public final mJpegUri:Landroid/net/Uri;

.field public final mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

.field public final mOrigUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/load/LoadDocJpegListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    new-instance p1, Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mCropUri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/editor/DocJpegHolder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 6
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 8
    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v4

    iput-object v4, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    if-nez v4, :cond_0

    .line 9
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    .line 11
    invoke-virtual {v0, v4, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string p1, "load jpeg error:"

    .line 13
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LoadDocJpegTask"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v4

    goto/16 :goto_9

    .line 15
    :cond_1
    new-instance p0, Lcom/motorola/camera/editor/parser/DocDataParser;

    invoke-direct {p0}, Lcom/motorola/camera/editor/parser/DocDataParser;-><init>()V

    .line 16
    new-instance v0, Lcom/motorola/camera/editor/parser/XMPParser;

    invoke-direct {v0}, Lcom/motorola/camera/editor/parser/XMPParser;-><init>()V

    .line 17
    iget-object v5, v0, Lcom/motorola/camera/editor/parser/XMPParser;->attributeParsers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v5, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    .line 19
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    new-instance v4, Lcom/motorola/camera/editor/parser/XMPStream;

    invoke-direct {v4, v6}, Lcom/motorola/camera/editor/parser/XMPStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v0, v4}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V

    .line 22
    iget-object v5, v4, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 23
    iput v1, v4, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :cond_2
    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v0, v4}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_4
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v6

    goto :goto_1

    :catch_0
    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    throw p0

    .line 27
    :catch_1
    :goto_2
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/DocDataParser;->mImageData:[B

    if-eqz p0, :cond_5

    move v0, v3

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    if-eqz v0, :cond_6

    .line 29
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_5

    .line 30
    :cond_6
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    array-length v0, p0

    new-array v0, v0, [B

    .line 31
    array-length v4, p0

    invoke-static {p0, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_5

    .line 33
    :cond_7
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 34
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    .line 36
    invoke-virtual {v0, v4, p0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 37
    :goto_5
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v0, p0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    .line 39
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    .line 40
    :try_start_2
    invoke-virtual {p1}, Lcom/motorola/camera/editor/DocJpegHolder;->isWholeImage()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 41
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    goto :goto_6

    :cond_8
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    .line 42
    :goto_6
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    .line 43
    invoke-virtual {v0, p0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 44
    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq p0, v6, :cond_b

    if-eq p0, v4, :cond_a

    if-eq p0, v5, :cond_9

    const/4 p0, 0x0

    goto :goto_7

    :cond_9
    const/high16 p0, 0x43870000    # 270.0f

    goto :goto_7

    :cond_a
    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_7

    :cond_b
    const/high16 p0, 0x43340000    # 180.0f

    :goto_7
    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    new-array p0, v5, [F
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    :try_start_3
    sget-object v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    const-string v1, ";"

    .line 47
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    array-length v4, v1

    if-lt v4, v5, :cond_d

    :goto_8
    if-ge v2, v5, :cond_d

    .line 49
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    aput v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 50
    :cond_c
    iget v5, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    div-int/lit8 v7, v5, 0x3

    .line 51
    iget v8, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    div-int/lit8 v9, v8, 0x3

    int-to-float v10, v7

    aput v10, p0, v2

    int-to-float v2, v9

    aput v2, p0, v3

    sub-int/2addr v5, v7

    int-to-float v5, v5

    aput v5, p0, v1

    aput v2, p0, v6

    const/4 v1, 0x4

    aput v5, p0, v1

    const/4 v1, 0x5

    sub-int/2addr v8, v9

    int-to-float v2, v8

    aput v2, p0, v1

    aput v10, p0, v4

    const/4 v1, 0x7

    aput v2, p0, v1

    .line 52
    :cond_d
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    .line 53
    sget-object p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, p0, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnIntValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;I)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 54
    :catch_2
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :goto_9
    return-object p1
.end method

.method public final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    .line 2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/load/LoadDocJpegListener;

    if-eqz p0, :cond_6

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 5
    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 6
    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    const/4 v0, 0x0

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    iget v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 9
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    new-array v1, v2, [I

    const/16 v4, 0x8

    new-array v5, v4, [I

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 10
    iget-object v7, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    aget v7, v7, v6

    float-to-int v7, v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/editor/DocEditorActivity;->getCroppedBmpFromOriginalJpeg([I[I)[B

    move-result-object v4

    .line 12
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v6, v1, v3

    const/4 v7, 0x2

    aget v1, v1, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-static {v6, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    .line 15
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBmp:Landroid/graphics/Bitmap;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 16
    iget v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    if-ne v1, v7, :cond_5

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object p1, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBmp:Landroid/graphics/Bitmap;

    .line 19
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    invoke-virtual {p1, v1}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    .line 20
    iput-boolean v3, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    .line 21
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    .line 22
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v3, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v1, v3, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p0, v2}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mIsSaveComplete:Z

    :cond_6
    :goto_2
    return-void
.end method
