.class public Lcom/lenovo/core/LenovoPanoramaSelfie;
.super Ljava/lang/Object;
.source "LenovoPanoramaSelfie.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoPanoramaSelfie"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "lenovo_panorama"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "can\'t loadLibrary \r\n"

    .line 2
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoPanoramaSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native nativeAbnormalFinish(I)V
.end method

.method private final native nativeFinishWithTwoPictures(II)V
.end method

.method private final native nativeGetImageStitchingStatus()I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeImageStitchingYUV([BIII)V
.end method

.method private final native nativePictureRotate([BIII[B[I)I
.end method

.method private final native nativePreviewStitch([B[BII[IFFI)V
.end method

.method private final native nativeResetStitchingStatus()V
.end method

.method private final native nativeSaveOutputJpeg(I)V
.end method

.method private final native nativeSetFaceRect(II[Landroid/graphics/Rect;)I
.end method

.method private final native nativeSetFullImageSize(II)V
.end method

.method private final native nativeYUV2Bitmap([B[ILandroid/graphics/Bitmap;)V
.end method

.method private final native nativeYUVResize([B[BIIIII)V
.end method


# virtual methods
.method public abnormalFinish(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeAbnormalFinish(I)V

    return-void
.end method

.method public finishWithTwoPictures(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeFinishWithTwoPictures(II)V

    return-void
.end method

.method public getImageStitchingStatus()I
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeGetImageStitchingStatus()I

    move-result p0

    return p0
.end method

.method public imageStitchingYUV([BIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeImageStitchingYUV([BIII)V

    return-void
.end method

.method public pictureRotate([BIII[B[I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativePictureRotate([BIII[B[I)I

    return-void
.end method

.method public resetStitchingStatus()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeResetStitchingStatus()V

    return-void
.end method

.method public saveOutputJpeg(I)V
    .locals 0

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeSaveOutputJpeg(I)V

    :cond_0
    return-void
.end method

.method public setFaceRect(II[Landroid/graphics/Rect;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeSetFaceRect(II[Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public setFullImageSize(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeSetFullImageSize(II)V

    return-void
.end method

.method public yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeYUV2Bitmap([B[ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public yuvResizeAndStitch([B[BIIIIIFFI[I)V
    .locals 10

    move v8, p5

    move v3, p3

    if-eq v3, v8, :cond_0

    mul-int v0, v8, p6

    mul-int/lit8 v0, v0, 0x3

    .line 1
    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativeYUVResize([B[BIIIII)V

    move-object v1, v9

    move-object v2, p2

    move v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p11

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativePreviewStitch([B[BII[IFFI)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p11

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/lenovo/core/LenovoPanoramaSelfie;->nativePreviewStitch([B[BII[IFFI)V

    :goto_0
    return-void
.end method
