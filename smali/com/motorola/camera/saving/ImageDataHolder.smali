.class public final Lcom/motorola/camera/saving/ImageDataHolder;
.super Ljava/lang/Object;
.source "ImageDataHolder.java"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public mData:Ljava/nio/ByteBuffer;

.field public final mFinalHeight:I

.field public final mFinalWidth:I

.field public final mFlip:Z

.field public final mHeight:I

.field public mImageType:I

.field public final mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public final mStride:[I

.field public final mWidth:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    .line 4
    iput p3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    .line 5
    iput p4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    .line 6
    iput p5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    .line 7
    iput p6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    .line 8
    iput-object p7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    .line 9
    iput-boolean p8, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    .line 10
    iput-object p9, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/nio/ByteBuffer;
    .locals 13

    .line 1
    iget v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iget v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-object v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget-boolean v9, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    iget-object v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 4
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    const/4 v12, 0x0

    if-eqz v8, :cond_0

    .line 5
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-lez v10, :cond_0

    .line 6
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v10}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-static {v7}, Lcom/motorola/camera/utility/ExifUtility;->getJpegQuality(Ljava/lang/Byte;)I

    move-result v11

    .line 7
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 8
    sget-object v10, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    move v10, v0

    .line 9
    invoke-static/range {v1 .. v11}, Lcom/motorola/camera/mcf/MotUtil;->createThumbnail([BIIII[IIIZII)[B

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object v10, v12

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-static {v1}, Lcom/motorola/camera/utility/ExifUtility;->getJpegQuality(Ljava/lang/Byte;)I

    move-result v9

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget-object v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iget v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-boolean v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    move v8, v0

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/mcf/MotUtil;->compressJpeg([BII[IIIZII)[B

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v1, v12, v2, v10}, Lcom/motorola/camera/utility/ExifUtility;->appendExifToJpeg([BLandroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    return-object p0
.end method
