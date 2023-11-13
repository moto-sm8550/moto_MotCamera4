.class public Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;
.super Ljava/lang/Object;
.source "ArcsoftSuperSlowMotion.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MOK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArcsoftSuperSlowMotion"

.field private static sIsInitialized:Z = false

.field private static final sProcessingSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sProcessingSemaphore:Ljava/util/concurrent/Semaphore;

    :try_start_0
    const-string v0, "as-super-slow-motion"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->TAG:Ljava/lang/String;

    const-string v2, "error loading as-super-slow-motion.so"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native deinit()I
.end method

.method public static deinitFrc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->deinit()I

    .line 2
    sget-object v0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sProcessingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static native init(IIIIILjava/lang/String;)I
.end method

.method public static initFrc(IIIII)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLib:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sProcessingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->TAG:Ljava/lang/String;

    const-string v2, "Unable to acquire processing semaphore. Either another slow motion is being processed or we have a bug"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :cond_0
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->init(IIIIILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 6
    :goto_0
    sput-boolean p0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sIsInitialized:Z

    if-nez p0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 8
    :cond_2
    sget-boolean p0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sIsInitialized:Z

    return p0
.end method

.method private static native interpolate(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I
.end method

.method public static interpolateFrc(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->interpolate(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->sIsInitialized:Z

    return v0
.end method
