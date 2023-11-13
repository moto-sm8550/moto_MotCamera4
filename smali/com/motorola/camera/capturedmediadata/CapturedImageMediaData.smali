.class public final Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
.super Lcom/motorola/camera/capturedmediadata/CapturedMediaData;
.source "CapturedImageMediaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;,
        Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;
    }
.end annotation


# instance fields
.field public mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

.field public mByteBuffer:Ljava/nio/ByteBuffer;

.field public mByteBufferUri:Landroid/net/Uri;

.field public mDataSize:I

.field public final mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

.field public mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

.field public mMotionVideo:Ljava/io/File;

.field public mMotionVideoPresentationOffsetUs:J

.field public mRawData:Z

.field public mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 3

    .line 15
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-boolean v1, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;ZLcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 18
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    .line 20
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 22
    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 23
    iput-boolean p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mRawData:Z

    .line 24
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    .line 26
    iput-object p4, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/ImageDataHolder;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 3

    .line 2
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 3
    invoke-direct {p0, p2}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 5
    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    .line 6
    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mRawData:Z

    .line 8
    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    .line 12
    iput-object p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    .line 14
    iput p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    return-void
.end method


# virtual methods
.method public final getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final isRawData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-eqz v0, :cond_1

    .line 2
    iget p0, v0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mRawData:Z

    :goto_0
    return p0
.end method

.method public final processExif()V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->GET_MEDIA_DATA:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 8
    :try_start_0
    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v2, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 10
    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 12
    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :try_start_2
    new-instance v3, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 15
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 16
    :catch_1
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 17
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_5

    .line 18
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)J

    :cond_5
    return-void
.end method

.method public final setMotionVideoFile(Ljava/io/File;)V
    .locals 2

    const/16 v0, 0x1000

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CapturedImageMediaData{, mMetadata="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlternateShotData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", containsMotionVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CapturedMediaData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-super {p0}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d

    .line 5
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
