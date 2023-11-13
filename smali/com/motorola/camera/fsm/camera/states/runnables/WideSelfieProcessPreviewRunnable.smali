.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "WideSelfieProcessPreviewRunnable.java"


# instance fields
.field public final ImageWH:[I

.field public final mHeight:I

.field public final mOutputPreviewData:[B

.field public final mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public final mRotateData:[B

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/panorama/PanoListener;Z)V
    .locals 8

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 3
    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 6
    :goto_0
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    .line 7
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    .line 8
    check-cast p2, Lcom/motorola/camera/panorama/PanoCaptureListener;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    mul-int p1, v4, v3

    mul-int/lit8 p1, p1, 0x3

    .line 10
    div-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    .line 11
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 12
    invoke-static {p1, p3}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result p2

    const/16 p3, 0x5a

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x10e

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p1, v3

    mul-float/2addr p2, v6

    add-float/2addr p2, v5

    mul-float/2addr p2, p1

    float-to-int p1, p2

    aput p1, v1, v7

    aput v4, v1, v2

    .line 13
    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    .line 14
    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    goto :goto_2

    :cond_2
    :goto_1
    int-to-float p1, v4

    mul-float/2addr p2, v6

    add-float/2addr p2, v5

    mul-float/2addr p2, p1

    float-to-int p1, p2

    aput p1, v1, v7

    aput v3, v1, v2

    .line 15
    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    .line 16
    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    .line 17
    :goto_2
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p1

    aget p2, v1, v7

    aget p3, v1, v2

    .line 18
    iget-object v1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v0

    if-eq v1, v2, :cond_4

    :cond_3
    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x3

    .line 19
    div-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    .line 20
    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v8, v1, [I

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 2
    iget v2, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    const/16 v3, 0x10e

    const/4 v9, 0x0

    if-eq v2, v3, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 4
    iget-object v3, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 5
    iget v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    iget v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    .line 6
    iget v6, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    .line 7
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    .line 8
    iget-boolean v2, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/core/LenovoPanoramaSelfie;->pictureRotate([BIII[B[I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:[B

    .line 11
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    array-length v3, v2

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v1

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    const/16 v17, 0x7

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    .line 13
    iget v4, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    .line 14
    iget v5, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    .line 15
    iget v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    .line 16
    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 17
    iget-boolean v7, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v7, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iget-object v10, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    move v13, v15

    move v14, v2

    move/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v3

    move-object/from16 v21, v6

    invoke-virtual/range {v10 .. v21}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuvResizeAndStitch([B[BIIIIIFFI[I)V

    .line 19
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v2, v1, v9

    aget v1, v1, v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 20
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    .line 21
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v2, v3, v4, v1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    .line 22
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {v15, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/panorama/PanoCaptureListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v13, v3, v9

    const/4 v4, 0x1

    aget v14, v3, v4

    const/16 v16, 0x1

    move-object v10, v1

    .line 25
    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v5, v0, v9

    aget v0, v0, v4

    .line 26
    invoke-interface {v2, v3, v5, v0}, Lcom/motorola/camera/panorama/PanoCaptureListener;->onProgress(Landroid/graphics/Bitmap;II)V

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
