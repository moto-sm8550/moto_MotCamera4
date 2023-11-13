.class public final Lcom/motorola/camera/mcf/McfBarcode;
.super Ljava/lang/Object;
.source "McfBarcode.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfBarcode"

.field private static final TAG:Ljava/lang/String; = "McfBarcode"


# instance fields
.field private final mData:[B

.field private final mDataLength:I

.field private final mEncoding:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private final mPosition:[Landroid/graphics/Point;

.field private final mRawText:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mFormat:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mRawText:[B

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mEncoding:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mPosition:[Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mDataLength:I

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mData:[B

    return-object p0
.end method

.method public getDataLength()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mDataLength:I

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mPosition:[Landroid/graphics/Point;

    return-object p0
.end method

.method public getProcessingTime()J
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mData:[B

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x38

    int-to-long v2, v0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mRawText:[B

    iget-object v2, p0, Lcom/motorola/camera/mcf/McfBarcode;->mEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfBarcode;->mRawText:[B

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 3
    sget-object v0, Lcom/motorola/camera/mcf/McfBarcode;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/mcf/McfBarcode;->CNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": [format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",raw_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mRawText:[B

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mPosition:[Landroid/graphics/Point;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfBarcode;->mDataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",processingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfBarcode;->getProcessingTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
