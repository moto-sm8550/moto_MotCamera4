.class public Lcom/motorola/camera/mcf/MotUtil;
.super Ljava/lang/Object;
.source "MotUtil.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCF-UTIL"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "mot-util"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load libmot-util.so : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MCF-UTIL"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Base64Decode(Ljava/lang/String;)[B
.end method

.method public static native Base64Encode([B)Ljava/lang/String;
.end method

.method public static native addWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;IZ)Z
.end method

.method public static native addWatermarkToJpeg([BLjava/lang/Object;Lcom/motorola/camera/mcf/McfMetadataModificationCallable;IZ)[B
.end method

.method public static native alignYuvBuffer(Ljava/nio/ByteBuffer;IIII)I
.end method

.method public static native compressJpeg([BII[IIIZII)[B
.end method

.method public static native copyImageToByteArray(III[I[I[Ljava/nio/ByteBuffer;[BZZI)I
.end method

.method public static copyImageToByteArray(Landroid/media/Image;[BZZI)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v7, v1, [Ljava/nio/ByteBuffer;

    .line 3
    array-length v1, v0

    new-array v5, v1, [I

    .line 4
    array-length v1, v0

    new-array v6, v1, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 7
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    aput v2, v5, v1

    .line 8
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    array-length v4, v0

    move-object v8, p1

    move v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/mcf/MotUtil;->copyImageToByteArray(III[I[I[Ljava/nio/ByteBuffer;[BZZI)I

    move-result v0

    return v0
.end method

.method public static native copyImageToByteBuffer(III[I[I[Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZI)I
.end method

.method public static copyImageToByteBuffer(Landroid/media/Image;Ljava/nio/ByteBuffer;ZZI)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v7, v1, [Ljava/nio/ByteBuffer;

    .line 3
    array-length v1, v0

    new-array v5, v1, [I

    .line 4
    array-length v1, v0

    new-array v6, v1, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 7
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v2

    aput v2, v5, v1

    .line 8
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    array-length v4, v0

    move-object v8, p1

    move v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/mcf/MotUtil;->copyImageToByteBuffer(III[I[I[Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZI)I

    move-result v0

    return v0
.end method

.method public static native createThumbnail([BIIII[IIIZII)[B
.end method

.method public static native nv21rotate([BIII[BIIII)V
.end method

.method public static native nv21scale([BIII[BIII)V
.end method

.method public static native yuvToRgb([BII)[I
.end method
