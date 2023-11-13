.class public final Lcom/motorola/camera/detector/results/tidbit/WifiAp;
.super Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;
.source "WifiAp.java"


# instance fields
.field public hidden:Z

.field public networkEncryption:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;-><init>()V

    return-void
.end method


# virtual methods
.method public final escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x3

    const-string v0, "\\"

    const-string v1, ":"

    const-string v2, ";"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const-string v2, "ISO-8859-1"

    const-string v3, "Shift_JIS"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge v5, v8, :cond_1

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x30

    if-lt v8, v11, :cond_0

    const/16 v11, 0x39

    if-gt v8, v11, :cond_0

    move v7, v10

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v6

    if-eq v6, v9, :cond_3

    move v6, v10

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 6
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    .line 7
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 8
    :goto_2
    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 9
    iget v7, v5, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    const/4 v8, 0x4

    .line 10
    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 11
    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 12
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/16 v12, 0xa

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-eq v11, v10, :cond_e

    const/4 v4, 0x6

    if-eq v11, v15, :cond_a

    if-eq v11, v8, :cond_9

    if-ne v11, v4, :cond_8

    .line 13
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    array-length v3, v2

    rem-int/2addr v3, v15

    if-nez v3, :cond_7

    .line 15
    array-length v3, v2

    add-int/2addr v3, v9

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_11

    .line 16
    aget-byte v11, v2, v4

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v16, v4, 0x1

    .line 17
    aget-byte v15, v2, v16

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v11, v14

    or-int/2addr v11, v15

    const v15, 0x8140

    if-lt v11, v15, :cond_4

    const v15, 0x9ffc

    if-gt v11, v15, :cond_4

    const v15, 0x8140

    goto :goto_4

    :cond_4
    const v15, 0xe040

    if-lt v11, v15, :cond_5

    const v15, 0xebbf

    if-gt v11, v15, :cond_5

    const v15, 0xc140

    :goto_4
    sub-int/2addr v11, v15

    goto :goto_5

    :cond_5
    move v11, v9

    :goto_5
    if-eq v11, v9, :cond_6

    shr-int/lit8 v15, v11, 0x8

    mul-int/lit16 v15, v15, 0xc0

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v15, v11

    const/16 v11, 0xd

    .line 18
    invoke-virtual {v7, v15, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x2

    const/4 v15, 0x2

    goto :goto_3

    .line 19
    :cond_6
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Kanji byte size not even"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 21
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid mode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_9
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    array-length v3, v2

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_11

    aget-byte v11, v2, v4

    .line 25
    invoke-virtual {v7, v11, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 26
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 27
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_11

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v11

    if-eq v11, v9, :cond_d

    add-int/lit8 v15, v3, 0x1

    if-ge v15, v2, :cond_c

    .line 29
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v15

    if-eq v15, v9, :cond_b

    mul-int/lit8 v11, v11, 0x2d

    add-int/2addr v11, v15

    const/16 v15, 0xb

    .line 30
    invoke-virtual {v7, v11, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 31
    :cond_b
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 32
    :cond_c
    invoke-virtual {v7, v11, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v15

    goto :goto_7

    .line 33
    :cond_d
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    .line 34
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_11

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/lit8 v11, v3, 0x2

    if-ge v11, v2, :cond_f

    add-int/lit8 v15, v3, 0x1

    .line 36
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v15, v15, -0x30

    .line 37
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    mul-int/lit8 v4, v4, 0x64

    mul-int/2addr v15, v12

    add-int/2addr v15, v4

    add-int/2addr v15, v11

    .line 38
    invoke-virtual {v7, v15, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_8

    :cond_f
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_10

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v3

    .line 40
    invoke-virtual {v7, v4, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v11

    goto :goto_8

    .line 41
    :cond_10
    invoke-virtual {v7, v4, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_8

    .line 42
    :cond_11
    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-static {v5, v6, v7, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    .line 43
    invoke-static {v2, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(II)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 44
    invoke-static {v5, v6, v7, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateBitsNeeded(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    .line 45
    invoke-static {v2, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(II)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 47
    invoke-virtual {v3, v6}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    if-ne v5, v1, :cond_12

    .line 48
    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_9

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 49
    :goto_9
    iget v1, v2, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/16 v4, 0x9

    if-gt v1, v4, :cond_13

    const/4 v1, 0x0

    goto :goto_a

    :cond_13
    const/16 v4, 0x1a

    if-gt v1, v4, :cond_14

    move v1, v10

    goto :goto_a

    :cond_14
    const/4 v1, 0x2

    .line 50
    :goto_a
    iget-object v4, v5, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget v1, v4, v1

    shl-int v4, v10, v1

    if-ge v0, v4, :cond_5c

    .line 51
    invoke-virtual {v3, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 52
    invoke-virtual {v3, v7}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 53
    iget-object v0, v2, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 54
    iget v1, v2, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 55
    iget v4, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 56
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v7, v6, :cond_15

    aget-object v15, v5, v7

    .line 57
    iget v15, v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v11, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_15
    mul-int/2addr v4, v11

    sub-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x3

    .line 58
    iget v5, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v5, v4, :cond_5b

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v8, :cond_16

    .line 59
    iget v6, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v6, v4, :cond_16

    const/4 v6, 0x0

    .line 60
    invoke-virtual {v3, v6}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    .line 61
    iget v5, v3, Lcom/google/zxing/common/BitArray;->size:I

    and-int/2addr v5, v13

    if-lez v5, :cond_17

    :goto_d
    if-ge v5, v14, :cond_17

    .line 62
    invoke-virtual {v3, v6}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_d

    .line 63
    :cond_17
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v5

    sub-int v5, v1, v5

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_19

    and-int/lit8 v11, v6, 0x1

    if-nez v11, :cond_18

    const/16 v7, 0xec

    goto :goto_f

    :cond_18
    const/16 v7, 0x11

    .line 64
    :goto_f
    invoke-virtual {v3, v7, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 65
    :cond_19
    iget v5, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v5, v4, :cond_5a

    .line 66
    iget v4, v2, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 67
    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_10
    if-ge v6, v5, :cond_1a

    aget-object v13, v0, v6

    .line 68
    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v11, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 69
    :cond_1a
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-ne v0, v1, :cond_59

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_11
    if-ge v5, v11, :cond_35

    new-array v12, v10, [I

    new-array v7, v10, [I

    if-ge v5, v11, :cond_34

    .line 71
    rem-int v18, v4, v11

    sub-int v8, v11, v18

    .line 72
    div-int v20, v4, v11

    add-int/lit8 v21, v20, 0x1

    .line 73
    div-int v22, v1, v11

    add-int/lit8 v23, v22, 0x1

    sub-int v9, v20, v22

    sub-int v10, v21, v23

    if-ne v9, v10, :cond_33

    add-int v14, v8, v18

    if-ne v11, v14, :cond_32

    add-int v14, v22, v9

    mul-int/2addr v14, v8

    add-int v25, v23, v10

    mul-int v25, v25, v18

    add-int v14, v25, v14

    if-ne v4, v14, :cond_31

    if-ge v5, v8, :cond_1b

    const/4 v8, 0x0

    aput v22, v12, v8

    aput v9, v7, v8

    goto :goto_12

    :cond_1b
    const/4 v8, 0x0

    aput v23, v12, v8

    aput v10, v7, v8

    :goto_12
    aget v9, v12, v8

    .line 74
    new-array v8, v9, [B

    shl-int/lit8 v10, v15, 0x3

    move v14, v10

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v9, :cond_1e

    move-object/from16 v22, v2

    move/from16 v23, v4

    move/from16 v18, v11

    move v2, v14

    const/16 v4, 0x8

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v4, :cond_1d

    .line 75
    invoke-virtual {v3, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    rsub-int/lit8 v4, v14, 0x7

    const/16 v20, 0x1

    shl-int v4, v20, v4

    or-int/2addr v4, v11

    move v11, v4

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x8

    goto :goto_14

    :cond_1d
    add-int/lit8 v4, v10, 0x0

    int-to-byte v11, v11

    .line 76
    aput-byte v11, v8, v4

    add-int/lit8 v10, v10, 0x1

    move v14, v2

    move/from16 v11, v18

    move-object/from16 v2, v22

    move/from16 v4, v23

    goto :goto_13

    :cond_1e
    move-object/from16 v22, v2

    move/from16 v23, v4

    move/from16 v18, v11

    const/4 v2, 0x0

    aget v4, v7, v2

    add-int v2, v9, v4

    .line 77
    new-array v7, v2, [I

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v9, :cond_1f

    .line 78
    aget-byte v11, v8, v10

    and-int/lit16 v11, v11, 0xff

    aput v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 79
    :cond_1f
    new-instance v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v10, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    if-eqz v4, :cond_30

    sub-int/2addr v2, v4

    if-lez v2, :cond_2f

    .line 80
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v14, "GenericGFPolys do not have same GenericGF field"

    if-lt v4, v11, :cond_26

    .line 81
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v26, v3

    const/16 v24, -0x1

    add-int/lit8 v3, v25, -0x1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 82
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_16
    if-gt v11, v4, :cond_25

    move/from16 v25, v1

    .line 83
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move/from16 v27, v5

    iget-object v5, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v29, v12

    move/from16 v28, v15

    const/4 v15, 0x2

    new-array v12, v15, [I

    const/4 v15, 0x0

    const/16 v20, 0x1

    aput v20, v12, v15

    add-int/lit8 v15, v11, -0x1

    move/from16 v30, v13

    .line 84
    iget v13, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int/2addr v15, v13

    .line 85
    iget-object v13, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v13, v13, v15

    aput v13, v12, v20

    .line 86
    invoke-direct {v1, v5, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 87
    iget-object v12, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 88
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_19

    .line 89
    :cond_20
    iget-object v5, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 90
    array-length v12, v5

    .line 91
    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 92
    array-length v13, v1

    add-int v15, v12, v13

    const/16 v24, -0x1

    add-int/lit8 v15, v15, -0x1

    .line 93
    new-array v15, v15, [I

    move/from16 v31, v6

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v12, :cond_22

    move/from16 v32, v12

    .line 94
    aget v12, v5, v6

    move-object/from16 v33, v5

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v13, :cond_21

    add-int v34, v6, v5

    .line 95
    aget v35, v15, v34

    move/from16 v36, v13

    iget-object v13, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v37, v0

    aget v0, v1, v5

    .line 96
    invoke-virtual {v13, v12, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v0

    xor-int v0, v0, v35

    .line 97
    aput v0, v15, v34

    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v36

    move-object/from16 v0, v37

    goto :goto_18

    :cond_21
    move-object/from16 v37, v0

    move/from16 v36, v13

    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v32

    move-object/from16 v5, v33

    goto :goto_17

    :cond_22
    move-object/from16 v37, v0

    .line 98
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v1, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_1a

    :cond_23
    :goto_19
    move-object/from16 v37, v0

    move/from16 v31, v6

    .line 99
    iget-object v0, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 100
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_1a
    move-object v3, v0

    .line 101
    iget-object v0, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v25

    move/from16 v5, v27

    move/from16 v15, v28

    move-object/from16 v12, v29

    move/from16 v13, v30

    move/from16 v6, v31

    move-object/from16 v0, v37

    goto/16 :goto_16

    .line 102
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-object/from16 v37, v0

    move/from16 v25, v1

    goto :goto_1b

    :cond_26
    move-object/from16 v37, v0

    move/from16 v25, v1

    move-object/from16 v26, v3

    :goto_1b
    move/from16 v27, v5

    move/from16 v31, v6

    move-object/from16 v29, v12

    move/from16 v30, v13

    move/from16 v28, v15

    .line 103
    iget-object v0, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 104
    new-array v1, v2, [I

    const/4 v3, 0x0

    .line 105
    invoke-static {v7, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v5, v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v5, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    .line 108
    iget-object v1, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 109
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 110
    iget-object v1, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 111
    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 112
    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v5, v5

    const/4 v6, -0x1

    add-int/2addr v5, v6

    .line 113
    invoke-virtual {v0, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    .line 114
    iget-object v10, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2c

    .line 115
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    iget v12, v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v5, v10, v5

    sub-int/2addr v12, v5

    add-int/2addr v12, v6

    aget v5, v11, v12

    move-object v10, v3

    .line 116
    :goto_1c
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v11, v11

    add-int/2addr v11, v6

    iget-object v12, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v12

    add-int/2addr v12, v6

    if-lt v11, v12, :cond_29

    .line 117
    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v11

    if-nez v11, :cond_29

    .line 118
    iget-object v11, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v11

    add-int/2addr v12, v6

    iget-object v13, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v13, v13

    add-int/2addr v13, v6

    sub-int/2addr v12, v13

    .line 119
    iget-object v13, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 120
    array-length v11, v11

    add-int/2addr v11, v6

    .line 121
    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v13, v6, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v6

    .line 122
    invoke-virtual {v0, v12, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    .line 123
    iget-object v13, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v12, :cond_28

    if-nez v6, :cond_27

    .line 124
    iget-object v6, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    goto :goto_1d

    :cond_27
    add-int/lit8 v12, v12, 0x1

    .line 125
    new-array v12, v12, [I

    const/4 v14, 0x0

    .line 126
    aput v6, v12, v14

    .line 127
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v6, v13, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 128
    :goto_1d
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 129
    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    const/4 v6, -0x1

    goto :goto_1c

    .line 130
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_29
    const/4 v0, 0x2

    new-array v3, v0, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v1, 0x1

    aput-object v10, v3, v1

    aget-object v3, v3, v1

    .line 131
    iget-object v1, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 132
    array-length v3, v1

    sub-int v3, v4, v3

    move v5, v0

    :goto_1e
    if-ge v5, v3, :cond_2a

    add-int v6, v2, v5

    .line 133
    aput v0, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2a
    add-int/2addr v2, v3

    .line 134
    array-length v3, v1

    invoke-static {v1, v0, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-array v0, v4, [B

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v4, :cond_2b

    add-int v2, v9, v1

    .line 136
    aget v2, v7, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 137
    :cond_2b
    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v8, v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v31

    .line 138
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v2, v30

    .line 139
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v1, 0x0

    aget v2, v29, v1

    add-int v15, v28, v2

    add-int/lit8 v5, v27, 0x1

    move/from16 v11, v18

    move-object/from16 v2, v22

    move/from16 v4, v23

    move/from16 v1, v25

    move-object/from16 v3, v26

    const/4 v8, 0x4

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/16 v12, 0xa

    const/16 v14, 0x8

    goto/16 :goto_11

    .line 140
    :cond_2c
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 141
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_31
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_32
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_33
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_34
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    move v3, v1

    move-object/from16 v22, v2

    move/from16 v23, v4

    move v1, v6

    move v2, v13

    if-ne v3, v15, :cond_58

    .line 149
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v1, :cond_38

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 151
    iget-object v6, v6, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    .line 152
    array-length v7, v6

    if-ge v4, v7, :cond_36

    .line 153
    aget-byte v6, v6, v4

    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_21

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_38
    const/4 v1, 0x0

    :goto_22
    if-ge v1, v2, :cond_3b

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    .line 155
    iget-object v5, v5, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    .line 156
    array-length v6, v5

    if-ge v1, v6, :cond_39

    .line 157
    aget-byte v5, v5, v1

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_23

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 158
    :cond_3b
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    move/from16 v1, v23

    if-ne v1, v0, :cond_57

    move-object/from16 v0, v22

    .line 159
    iget v1, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v2, 0x11

    add-int/2addr v1, v2

    .line 160
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v2, v1, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const v1, 0x7fffffff

    move v4, v1

    const/4 v1, 0x0

    const/4 v5, -0x1

    :goto_24
    const/16 v6, 0x8

    if-ge v1, v6, :cond_4a

    const/4 v7, 0x1

    .line 161
    invoke-static {v3, v7, v0, v1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 162
    invoke-static {v2, v7}, Lcom/google/barhopper/deeplearning/zzj;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v8

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/google/barhopper/deeplearning/zzj;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v9

    add-int/2addr v9, v8

    .line 163
    iget-object v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 164
    iget v10, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 165
    iget v11, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    move v12, v7

    move v13, v12

    const/16 v24, -0x1

    :goto_25
    add-int/lit8 v14, v11, -0x1

    if-ge v12, v14, :cond_3e

    .line 166
    aget-object v14, v8, v12

    move v15, v13

    move v13, v7

    :goto_26
    add-int/lit8 v6, v10, -0x1

    if-ge v13, v6, :cond_3d

    .line 167
    aget-byte v6, v14, v13

    add-int/lit8 v18, v13, 0x1

    .line 168
    aget-byte v7, v14, v18

    if-ne v6, v7, :cond_3c

    add-int/lit8 v7, v12, 0x1

    aget-object v19, v8, v7

    aget-byte v13, v19, v13

    if-ne v6, v13, :cond_3c

    aget-object v7, v8, v7

    aget-byte v7, v7, v18

    if-ne v6, v7, :cond_3c

    add-int/lit8 v15, v15, 0x1

    :cond_3c
    move/from16 v13, v18

    const/4 v7, 0x0

    goto :goto_26

    :cond_3d
    add-int/lit8 v12, v12, 0x1

    move v13, v15

    const/16 v6, 0x8

    const/4 v7, 0x0

    goto :goto_25

    :cond_3e
    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v9

    .line 169
    iget-object v6, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 170
    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 171
    iget v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v9, v8, :cond_45

    move v11, v10

    const/4 v10, 0x0

    :goto_28
    if-ge v10, v7, :cond_44

    .line 172
    aget-object v12, v6, v9

    add-int/lit8 v14, v10, 0x6

    if-ge v14, v7, :cond_40

    .line 173
    aget-byte v15, v12, v10

    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v15, v7, :cond_41

    add-int/lit8 v15, v10, 0x1

    aget-byte v15, v12, v15

    if-nez v15, :cond_41

    add-int/lit8 v15, v10, 0x2

    aget-byte v15, v12, v15

    if-ne v15, v7, :cond_41

    add-int/lit8 v15, v10, 0x3

    aget-byte v15, v12, v15

    if-ne v15, v7, :cond_41

    add-int/lit8 v15, v10, 0x4

    aget-byte v15, v12, v15

    if-ne v15, v7, :cond_41

    add-int/lit8 v15, v10, 0x5

    aget-byte v15, v12, v15

    if-nez v15, :cond_41

    aget-byte v14, v12, v14

    if-ne v14, v7, :cond_41

    add-int/lit8 v7, v10, -0x4

    .line 174
    invoke-static {v12, v7, v10}, Lcom/google/barhopper/deeplearning/zzj;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_3f

    add-int/lit8 v7, v10, 0x7

    add-int/lit8 v14, v10, 0xb

    invoke-static {v12, v7, v14}, Lcom/google/barhopper/deeplearning/zzj;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_41

    :cond_3f
    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    :cond_40
    move/from16 v18, v7

    :cond_41
    :goto_29
    add-int/lit8 v7, v9, 0x6

    if-ge v7, v8, :cond_43

    .line 175
    aget-object v12, v6, v9

    aget-byte v12, v12, v10

    const/4 v14, 0x1

    if-ne v12, v14, :cond_43

    add-int/lit8 v12, v9, 0x1

    aget-object v12, v6, v12

    aget-byte v12, v12, v10

    if-nez v12, :cond_43

    add-int/lit8 v12, v9, 0x2

    aget-object v12, v6, v12

    aget-byte v12, v12, v10

    if-ne v12, v14, :cond_43

    add-int/lit8 v12, v9, 0x3

    aget-object v12, v6, v12

    aget-byte v12, v12, v10

    if-ne v12, v14, :cond_43

    add-int/lit8 v12, v9, 0x4

    aget-object v12, v6, v12

    aget-byte v12, v12, v10

    if-ne v12, v14, :cond_43

    add-int/lit8 v12, v9, 0x5

    aget-object v12, v6, v12

    aget-byte v12, v12, v10

    if-nez v12, :cond_43

    aget-object v7, v6, v7

    aget-byte v7, v7, v10

    if-ne v7, v14, :cond_43

    add-int/lit8 v7, v9, -0x4

    .line 176
    invoke-static {v6, v10, v7, v9}, Lcom/google/barhopper/deeplearning/zzj;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_42

    add-int/lit8 v7, v9, 0x7

    add-int/lit8 v12, v9, 0xb

    invoke-static {v6, v10, v7, v12}, Lcom/google/barhopper/deeplearning/zzj;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_43

    :cond_42
    add-int/lit8 v11, v11, 0x1

    :cond_43
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v18

    goto/16 :goto_28

    :cond_44
    move/from16 v18, v7

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto/16 :goto_27

    :cond_45
    mul-int/lit8 v10, v10, 0x28

    add-int/2addr v10, v13

    .line 177
    iget-object v6, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 178
    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 179
    iget v8, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2a
    if-ge v9, v8, :cond_48

    .line 180
    aget-object v12, v6, v9

    move v13, v11

    const/4 v11, 0x0

    :goto_2b
    if-ge v11, v7, :cond_47

    .line 181
    aget-byte v14, v12, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_46

    add-int/lit8 v13, v13, 0x1

    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :cond_47
    add-int/lit8 v9, v9, 0x1

    move v11, v13

    goto :goto_2a

    .line 182
    :cond_48
    iget v6, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 183
    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/2addr v6, v7

    shl-int/lit8 v7, v11, 0x1

    sub-int/2addr v7, v6

    .line 184
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0xa

    mul-int/2addr v7, v8

    div-int/2addr v7, v6

    mul-int/2addr v7, v8

    add-int/2addr v7, v10

    if-ge v7, v4, :cond_49

    move v5, v1

    move v4, v7

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_24

    :cond_4a
    const/4 v1, 0x1

    const/16 v24, -0x1

    .line 185
    invoke-static {v3, v1, v0, v5, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 186
    iget v0, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 187
    iget v1, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    add-int/lit8 v3, v0, 0x8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x15e

    .line 188
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 189
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 190
    div-int v3, v6, v3

    div-int v4, v7, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v4, v0, v3

    sub-int v4, v6, v4

    const/4 v8, 0x2

    .line 191
    div-int/2addr v4, v8

    mul-int v9, v1, v3

    sub-int v9, v7, v9

    .line 192
    div-int/2addr v9, v8

    if-lez v6, :cond_56

    if-lez v7, :cond_56

    add-int/lit8 v8, v6, 0x1f

    .line 193
    div-int/lit8 v8, v8, 0x20

    mul-int v10, v8, v7

    .line 194
    new-array v10, v10, [I

    move v11, v9

    const/4 v9, 0x0

    :goto_2c
    if-ge v9, v1, :cond_51

    move v13, v4

    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v0, :cond_50

    .line 195
    invoke-virtual {v2, v12, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4f

    if-ltz v11, :cond_4e

    if-ltz v13, :cond_4e

    if-lez v3, :cond_4d

    if-lez v3, :cond_4d

    add-int v14, v3, v13

    add-int v15, v3, v11

    if-gt v15, v7, :cond_4c

    if-gt v14, v6, :cond_4c

    move v5, v11

    :goto_2e
    if-ge v5, v15, :cond_4f

    mul-int v16, v8, v5

    move/from16 v17, v0

    move v0, v13

    :goto_2f
    if-ge v0, v14, :cond_4b

    .line 196
    div-int/lit8 v18, v0, 0x20

    add-int v18, v18, v16

    aget v19, v10, v18

    and-int/lit8 v21, v0, 0x1f

    const/16 v20, 0x1

    shl-int v21, v20, v21

    or-int v19, v19, v21

    aput v19, v10, v18

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    goto :goto_2e

    .line 197
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v13, v3

    move/from16 v0, v17

    const/16 v5, 0x15e

    goto :goto_2d

    :cond_50
    move/from16 v17, v0

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v11, v3

    const/16 v5, 0x15e

    goto :goto_2c

    .line 200
    :cond_51
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x15e

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    :goto_30
    if-ge v2, v1, :cond_55

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_54

    mul-int v4, v3, v8

    .line 201
    div-int/lit8 v5, v2, 0x20

    add-int/2addr v5, v4

    .line 202
    aget v4, v10, v5

    and-int/lit8 v5, v2, 0x1f

    ushr-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_32

    :cond_52
    const/4 v4, 0x0

    :goto_32
    if-eqz v4, :cond_53

    const/high16 v4, -0x1000000

    goto :goto_33

    :cond_53
    move/from16 v4, v24

    .line 203
    :goto_33
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_55
    return-object v0

    .line 204
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_57
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_58
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_59
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_5a
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object/from16 v26, v3

    .line 210
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v26

    .line 211
    iget v2, v2, Lcom/google/zxing/common/BitArray;->size:I

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_5c
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllActions()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v2, "hidden"

    const-string v3, "enctype"

    const-string v4, "password"

    const-string/jumbo v5, "ssid"

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;

    invoke-direct {v7, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_2

    .line 13
    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v7, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_3

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.intent.extra.TEXT"

    .line 15
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.action.SEND"

    .line 16
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 19
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 20
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    .line 21
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 23
    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 25
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    .line 29
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 33
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WIFI"

    .line 37
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "S"

    .line 39
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "P"

    .line 44
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "T"

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_6

    const-string v3, "H"

    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v2, Ljava/io/File;

    .line 59
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "./"

    .line 61
    invoke-static {v5}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v10, ".jpg"

    .line 63
    invoke-static {v5, v9, v10}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 67
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 69
    invoke-static {v7, v2}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "android.intent.extra.STREAM"

    .line 70
    invoke-virtual {v7, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "image/*"

    .line 72
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 74
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v2, "WifiAp"

    const-string v3, "Error generating QR code"

    .line 75
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "text/plain"

    .line 77
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :goto_3
    invoke-static {v7, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 79
    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getCopyString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f11006b

    .line 3
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f110066

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_0

    const v3, 0x7f110068

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f110067

    .line 7
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f11006a

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 10
    invoke-static {v0, v2, v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f110069

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f110073

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "WifiAp{ssid=\'"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", networkEncryption=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    const-string v3, ", password=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    const-string v3, ", hidden="

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-boolean p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    const/16 v1, 0x7d

    .line 9
    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
