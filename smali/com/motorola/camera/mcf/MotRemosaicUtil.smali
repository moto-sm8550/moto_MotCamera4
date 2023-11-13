.class public Lcom/motorola/camera/mcf/MotRemosaicUtil;
.super Ljava/lang/Object;
.source "MotRemosaicUtil.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotRemosaicUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "mot-remosaic-util"

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
    sget-object v1, Lcom/motorola/camera/mcf/MotRemosaicUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load libmot-remosaic-util.so : "

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

.method public static native native_ov_fcell_deinit()V
.end method

.method public static native native_ov_fcell_init(II[B[B)V
.end method

.method public static native native_ov_fcell_process(Ljava/nio/ByteBuffer;[B)V
.end method

.method public static native native_remosaic_deinit()V
.end method

.method public static native native_remosaic_gainmap_gen([B)V
.end method

.method public static native native_remosaic_init(II)V
.end method

.method public static native native_remosaic_process(Ljava/nio/ByteBuffer;[BII)V
.end method

.method public static native native_remosaic_process_param_set(FFFFFI)V
.end method
