.class public final Lcom/motorola/camera/background/common/ImageNV12;
.super Lcom/motorola/camera/background/common/ImageBase;
.source "ImageNV12.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/ImageNV12$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B?\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB\u000f\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0008\u0010\u001f\u001a\u00020\u0003H\u0016J\u0008\u0010 \u001a\u0004\u0018\u00010\u0007J\u0018\u0010!\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0003H\u0016R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006$"
    }
    d2 = {
        "Lcom/motorola/camera/background/common/ImageNV12;",
        "Lcom/motorola/camera/background/common/ImageBase;",
        "width",
        "",
        "height",
        "lStride",
        "lumaY",
        "",
        "cStride",
        "chromaUV",
        "cacheDir",
        "",
        "(III[BI[BLjava/lang/String;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getCStride",
        "()I",
        "setCStride",
        "(I)V",
        "getLStride",
        "setLStride",
        "nv12",
        "Lcom/motorola/camera/background/common/IOFile;",
        "getNv12",
        "()Lcom/motorola/camera/background/common/IOFile;",
        "setNv12",
        "(Lcom/motorola/camera/background/common/IOFile;)V",
        "deleteAllFiles",
        "",
        "deleteNV12File",
        "describeContents",
        "getNV12Blob",
        "writeToParcel",
        "flags",
        "CREATOR",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

.field private static final NV12_PREFIX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cStride:I

.field private lStride:I

.field private nv12:Lcom/motorola/camera/background/common/IOFile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/ImageNV12$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->CREATOR:Lcom/motorola/camera/background/common/ImageNV12$CREATOR;

    .line 1
    const-class v0, Lcom/motorola/camera/background/common/ImageNV12;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    const-string v0, "nv12-cache"

    .line 2
    sput-object v0, Lcom/motorola/camera/background/common/ImageNV12;->NV12_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III[BI[BLjava/lang/String;)V
    .locals 7

    const-string v0, "lumaY"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromaUV"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    const-string v3, "NV12"

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;IILjava/lang/String;)V

    .line 2
    iput p3, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    .line 3
    iput p5, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/motorola/camera/background/common/ImageNV12;->NV12_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nv12"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "caching NV12 file: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    array-length p3, p4

    array-length p5, p6

    add-int/2addr p3, p5

    invoke-static {p4, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    const-string p5, "copyOf(lumaY, lumaY.size+chromaUV.size)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length p5, p4

    array-length p7, p6

    const/4 v0, 0x0

    invoke-static {p6, v0, p3, p5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "writing NV12 luma size="

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", chroma="

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p6

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", total="

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    array-length p4, p3

    .line 11
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p4, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    new-instance p2, Lcom/motorola/camera/background/common/IOFile;

    sget-object p3, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    sget-object p4, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    invoke-direct {p2, p3, p4, p1}, Lcom/motorola/camera/background/common/IOFile;-><init>(Lcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/motorola/camera/background/common/ImageBase;-><init>(Landroid/os/Parcel;)V

    .line 17
    const-class v0, Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/IOFile;

    iput-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return-void
.end method


# virtual methods
.method public final deleteAllFiles()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/ImageNV12;->deleteNV12File()V

    return-void
.end method

.method public final deleteNV12File()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3
    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return p0
.end method

.method public final getLStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    return p0
.end method

.method public final getNV12Blob()[B
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    sget-object v0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "un-caching NV12 file: "

    .line 3
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/IOFile;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/FileInputStream;

    .line 7
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    const-string v5, "File "

    if-gtz v4, :cond_6

    long-to-int v2, v2

    .line 9
    :try_start_1
    new-array v3, v2, [B

    const/4 v4, 0x0

    move v6, v2

    move v7, v4

    :goto_2
    if-lez v6, :cond_2

    .line 10
    invoke-virtual {p0, v3, v7, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v8, :cond_2

    sub-int/2addr v6, v8

    add-int/2addr v7, v8

    goto :goto_2

    :cond_2
    const-string v8, "copyOf(this, newSize)"

    if-lez v6, :cond_3

    .line 11
    :try_start_2
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    new-instance v7, Lkotlin/io/ExposingBufferByteArrayOutputStream;

    invoke-direct {v7}, Lkotlin/io/ExposingBufferByteArrayOutputStream;-><init>()V

    .line 14
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write(I)V

    .line 15
    invoke-static {p0, v7}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 16
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v6, v2

    if-ltz v6, :cond_5

    .line 17
    invoke-virtual {v7}, Lkotlin/io/ExposingBufferByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    .line 18
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 20
    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :goto_3
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 22
    sget-object p0, Lcom/motorola/camera/background/common/ImageNV12;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "un-cached NV12 file: size="

    .line 23
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_4

    .line 25
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is too big to fit in memory."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_6
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is too big ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes) to fit in memory."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 27
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :goto_4
    return-object v1
.end method

.method public final getNv12()Lcom/motorola/camera/background/common/IOFile;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-object p0
.end method

.method public final setCStride(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    return-void
.end method

.method public final setLStride(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    return-void
.end method

.method public final setNv12(Lcom/motorola/camera/background/common/IOFile;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/background/common/ImageBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/common/ImageNV12;->nv12:Lcom/motorola/camera/background/common/IOFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget p2, p0, Lcom/motorola/camera/background/common/ImageNV12;->lStride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p0, p0, Lcom/motorola/camera/background/common/ImageNV12;->cStride:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
