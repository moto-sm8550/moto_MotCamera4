.class public final synthetic Lcom/google/barhopper/deeplearning/zzj;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# direct methods
.method public static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_7

    const/4 v5, -0x1

    move v6, v2

    move v7, v6

    :goto_3
    const/4 v8, 0x5

    if-ge v6, v1, :cond_5

    if-eqz p1, :cond_2

    .line 6
    aget-object v9, p0, v3

    aget-byte v9, v9, v6

    goto :goto_4

    :cond_2
    aget-object v9, p0, v6

    aget-byte v9, v9, v3

    :goto_4
    if-ne v9, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    if-lt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    :cond_4
    const/4 v5, 0x1

    move v7, v5

    move v5, v9

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v4

    move v4, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v4
.end method

.method public static isWhiteHorizontal([BII)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/4 v1, 0x1

    if-ge p1, p2, :cond_1

    .line 3
    aget-byte v2, p0, p1

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isWhiteVertical([[BIII)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2
    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/4 v1, 0x1

    if-ge p2, p3, :cond_1

    .line 3
    aget-object v2, p0, p2

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
