.class public final Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;
.super Ljava/lang/Object;
.source "CinemagraphVideoEncoder.java"


# instance fields
.field public final mBitRate:I

.field public mCodecCallback:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

.field public mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public mEndOfStreamReceived:Z

.field public mEventHandler:Landroid/os/Handler;

.field public mFrameIndex:I

.field public final mFrameRate:I

.field public final mHeight:I

.field public mInputSliceHeight:I

.field public mInputStride:I

.field public mListener:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoderListener;

.field public mMuxer:Landroid/media/MediaMuxer;

.field public mMuxerStarted:Z

.field public final mOrientation:I

.field public final mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mTrackIndex:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(IIIIILandroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mCodecCallback:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    .line 3
    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    rem-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "CinemagraphVideoEncoder"

    const-string v1, "constructor: width or height not multiple of 16"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mWidth:I

    .line 6
    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    .line 7
    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOrientation:I

    .line 8
    iput p4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mBitRate:I

    .line 9
    iput p5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    .line 10
    iput-object p6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static access$1300(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V
    .locals 4

    const-string v0, "CinemagraphVideoEncoder"

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    .line 3
    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 6
    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to close cinemagraph video file descriptor"

    .line 8
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    if-nez v1, :cond_2

    const-string v1, "finish: Cinemagraph video generation failed"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mListener:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoderListener;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    check-cast v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$videoCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;

    check-cast v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$2:[I

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    invoke-static {v1, v2, v3, v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->$r8$lambda$VeHim-VvqcbIbz6AVVehI3VkbgY(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Z)V

    return-void
.end method

.method public static getCodec(Landroid/media/MediaFormat;)Landroid/media/MediaCodecInfo;
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    :cond_0
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    .line 4
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_3

    if-nez v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    .line 5
    aget-object v2, v1, v2

    .line 6
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    const-string/jumbo v6, "video/avc"

    .line 7
    invoke-virtual {v2, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6, p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v4, v2

    :catch_0
    :cond_2
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    return-object v3
.end method


# virtual methods
.method public final configureMediaFormat(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mBitRate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2
    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    const-string v0, "frame-rate"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-format"

    const/16 v0, 0x15

    .line 3
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-range"

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-standard"

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "i-frame-interval"

    .line 6
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "bitrate-mode"

    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "profile"

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo p0, "video/avc"

    .line 9
    invoke-static {p0, p2}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo;)I

    move-result p0

    const-string p2, "level"

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public final undoMediaFormatSizeHack(Landroid/media/MediaFormat;IIII)V
    .locals 0

    const-string/jumbo p0, "width"

    .line 1
    invoke-virtual {p1, p0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "height"

    .line 2
    invoke-virtual {p1, p0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo p0, "stride"

    .line 3
    invoke-virtual {p1, p0, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo p0, "slice-height"

    .line 4
    invoke-virtual {p1, p0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method
