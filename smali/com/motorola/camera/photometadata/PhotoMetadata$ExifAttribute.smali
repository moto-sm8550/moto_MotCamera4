.class public final Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/photometadata/PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    return-void
.end method

.method public static createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 4
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 7
    invoke-static {v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 5
    iget-wide v4, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget-wide v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 7
    invoke-static {v0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public final getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const-string v1, "There are more than one component"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 5
    check-cast p0, [J

    .line 6
    array-length p1, p0

    if-ne p1, v2, :cond_1

    .line 7
    aget-wide p0, p0, v0

    long-to-double p0, p0

    return-wide p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    .line 10
    check-cast p0, [I

    .line 11
    array-length p1, p0

    if-ne p1, v2, :cond_3

    .line 12
    aget p0, p0, v0

    int-to-double p0, p0

    return-wide p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    instance-of p1, p0, [D

    if-eqz p1, :cond_6

    .line 15
    check-cast p0, [D

    .line 16
    array-length p1, p0

    if-ne p1, v2, :cond_5

    .line 17
    aget-wide p0, p0, v0

    return-wide p0

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_6
    instance-of p1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    if-eqz p1, :cond_8

    .line 20
    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 21
    array-length p1, p0

    if-ne p1, v2, :cond_7

    .line 22
    aget-object p0, p0, v0

    .line 23
    iget-wide v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0

    .line 24
    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_8
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIntValue(Ljava/nio/ByteOrder;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 2
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const-string v1, "There are more than one component"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 5
    check-cast p0, [J

    .line 6
    array-length p1, p0

    if-ne p1, v2, :cond_1

    .line 7
    aget-wide p0, p0, v0

    long-to-int p0, p0

    return p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    .line 10
    check-cast p0, [I

    .line 11
    array-length p1, p0

    if-ne p1, v2, :cond_3

    .line 12
    aget p0, p0, v0

    return p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    instance-of v1, p0, [J

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 6
    check-cast p0, [J

    .line 7
    :cond_2
    :goto_0
    array-length p1, p0

    if-ge v3, p1, :cond_3

    .line 8
    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 9
    array-length p1, p0

    if-eq v3, p1, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_7

    .line 13
    check-cast p0, [I

    .line 14
    :cond_5
    :goto_1
    array-length p1, p0

    if-ge v3, p1, :cond_6

    .line 15
    aget p1, p0, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 16
    array-length p1, p0

    if-eq v3, p1, :cond_5

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_a

    .line 20
    check-cast p0, [D

    .line 21
    :cond_8
    :goto_2
    array-length p1, p0

    if-ge v3, p1, :cond_9

    .line 22
    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 23
    array-length p1, p0

    if-eq v3, p1, :cond_8

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_a
    instance-of v1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    if-eqz v1, :cond_d

    .line 27
    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 28
    :cond_b
    :goto_3
    array-length p1, p0

    if-ge v3, p1, :cond_c

    .line 29
    aget-object p1, p0, v3

    iget-wide v4, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    aget-object p1, p0, v3

    iget-wide v4, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 32
    array-length p1, p0

    if-eq v3, p1, :cond_b

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 34
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public final getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    iget-object v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 2
    iput-object p1, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 4
    :pswitch_0
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 5
    :goto_0
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 7
    :pswitch_1
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 8
    :goto_1
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFloat()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 10
    :pswitch_2
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 11
    :goto_2
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 13
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v5, v5

    .line 14
    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v7, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    .line 15
    :pswitch_3
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 16
    :goto_3
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object p1

    .line 18
    :pswitch_4
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 19
    :goto_4
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-object p1

    .line 21
    :pswitch_5
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    .line 22
    :goto_5
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_5

    .line 23
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    .line 24
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    .line 25
    new-instance v7, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v7, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-object p1

    .line 26
    :pswitch_6
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 27
    :goto_6
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_6

    .line 28
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-object p1

    .line 29
    :pswitch_7
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 30
    :goto_7
    iget v3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v3, :cond_7

    .line 31
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-object p1

    .line 32
    :pswitch_8
    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_ASCII_PREFIX:[B

    const/16 v1, 0x8

    if-lt p1, v1, :cond_a

    move p1, v2

    .line 33
    :goto_8
    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v4, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_ASCII_PREFIX:[B

    if-ge p1, v1, :cond_9

    .line 34
    iget-object v5, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    aget-byte v5, v5, p1

    aget-byte v4, v4, p1

    if-eq v5, v4, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    move v2, v1

    .line 35
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    :goto_a
    iget v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    if-ge v2, v1, :cond_d

    .line 37
    iget-object v1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    aget-byte v1, v1, v2

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    const/16 v3, 0x20

    if-lt v1, v3, :cond_c

    int-to-char v1, v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v1, 0x3f

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 40
    :cond_d
    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    array-length p1, p0

    if-ne p1, v3, :cond_e

    aget-byte p1, p0, v2

    if-ltz p1, :cond_e

    aget-byte p1, p0, v2

    if-gt p1, v3, :cond_e

    .line 42
    aget-byte p0, p0, v2

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    .line 45
    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "PhotoMetadata"

    const-string v1, "IOException occurred during reading a value"

    .line 46
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "("

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    array-length p0, p0

    const-string v1, ")"

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
