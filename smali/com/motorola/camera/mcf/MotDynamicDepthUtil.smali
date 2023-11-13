.class public Lcom/motorola/camera/mcf/MotDynamicDepthUtil;
.super Ljava/lang/Object;
.source "MotDynamicDepthUtil.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final DYNAMIC_DEPTH_LIBRARY_NAME:Ljava/lang/String; = "gg-dynamic_depth"

.field private static final TAG:Ljava/lang/String; = "MotRemosaicUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "gg-dynamic_depth"

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
    sget-object v1, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load gg-dynamic_depth.so : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getHeight()I

    move-result v2

    .line 2
    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getLensIntrinsicCalibration()[F

    move-result-object v5

    .line 3
    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;->getLensDistortion()[F

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->native_encodeDepthPhoto([BII[B[B[F[F)[B

    move-result-object p0

    return-object p0
.end method

.method private static native native_encodeDepthPhoto([BII[B[B[F[F)[B
.end method
