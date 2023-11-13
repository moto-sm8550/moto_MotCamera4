.class public final Lcom/motorola/camera/saving/SoftJpegCaptureHolder;
.super Lcom/motorola/camera/saving/CaptureHolder;
.source "SoftJpegCaptureHolder.java"


# instance fields
.field public mHeight:I

.field public mJpegData:Ljava/nio/ByteBuffer;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    return-void
.end method


# virtual methods
.method public final getImageData()Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 12

    .line 1
    new-instance v11, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v2, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    iget v6, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    iget-object v9, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    move v3, v5

    move v4, v6

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-object v11
.end method
