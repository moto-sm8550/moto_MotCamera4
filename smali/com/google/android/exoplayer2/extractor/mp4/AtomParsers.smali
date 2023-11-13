.class public final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field public static final opusMagic:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 21
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 4
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 15
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 17
    invoke-static {v3, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 25
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 26
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 27
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 29
    new-array v8, v7, [B

    .line 30
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 31
    :goto_a
    new-instance v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string/jumbo v6, "tenc atom is mandatory"

    .line 32
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 33
    sget v5, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0xc

    .line 1
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 3
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_7b

    .line 4
    iget v8, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    if-lez v9, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    const-string v12, "childAtomSize must be positive"

    .line 6
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    const v13, 0x61766331

    const v15, 0x48323633

    const v10, 0x6d317620

    const v6, 0x656e6376

    if-eq v11, v13, :cond_47

    const v13, 0x61766333

    if-eq v11, v13, :cond_47

    if-eq v11, v6, :cond_47

    if-eq v11, v10, :cond_47

    const v13, 0x6d703476

    if-eq v11, v13, :cond_47

    const v13, 0x68766331

    if-eq v11, v13, :cond_47

    const v13, 0x68657631

    if-eq v11, v13, :cond_47

    const v13, 0x73323633

    if-eq v11, v13, :cond_47

    if-eq v11, v15, :cond_47

    const v13, 0x76703038

    if-eq v11, v13, :cond_47

    const v13, 0x76703039

    if-eq v11, v13, :cond_47

    const v13, 0x61763031

    if-eq v11, v13, :cond_47

    const v13, 0x64766176

    if-eq v11, v13, :cond_47

    const v13, 0x64766131

    if-eq v11, v13, :cond_47

    const v13, 0x64766865

    if-eq v11, v13, :cond_47

    const v13, 0x64766831

    if-ne v11, v13, :cond_1

    goto/16 :goto_22

    :cond_1
    const v6, 0x6d703461

    const v10, 0x656e6361

    const v13, 0x616c6163

    if-eq v11, v6, :cond_c

    if-eq v11, v10, :cond_c

    const v6, 0x61632d33

    if-eq v11, v6, :cond_c

    const v6, 0x65632d33

    if-eq v11, v6, :cond_c

    const v6, 0x61632d34

    if-eq v11, v6, :cond_c

    const v6, 0x6d6c7061

    if-eq v11, v6, :cond_c

    const v6, 0x64747363

    if-eq v11, v6, :cond_c

    const v6, 0x64747365

    if-eq v11, v6, :cond_c

    const v6, 0x64747368

    if-eq v11, v6, :cond_c

    const v6, 0x6474736c

    if-eq v11, v6, :cond_c

    const v6, 0x64747378

    if-eq v11, v6, :cond_c

    const v6, 0x73616d72

    if-eq v11, v6, :cond_c

    const v6, 0x73617762

    if-eq v11, v6, :cond_c

    const v6, 0x6c70636d

    if-eq v11, v6, :cond_c

    const v6, 0x736f7774

    if-eq v11, v6, :cond_c

    const v6, 0x74776f73

    if-eq v11, v6, :cond_c

    const v6, 0x2e6d7032

    if-eq v11, v6, :cond_c

    const v6, 0x2e6d7033

    if-eq v11, v6, :cond_c

    const v6, 0x6d686131

    if-eq v11, v6, :cond_c

    const v6, 0x6d686d31

    if-eq v11, v6, :cond_c

    if-eq v11, v13, :cond_c

    const v6, 0x616c6177

    if-eq v11, v6, :cond_c

    const v6, 0x756c6177

    if-eq v11, v6, :cond_c

    const v6, 0x4f707573

    if-eq v11, v6, :cond_c

    const v6, 0x664c6143

    if-ne v11, v6, :cond_2

    goto/16 :goto_6

    :cond_2
    const v6, 0x54544d4c

    if-eq v11, v6, :cond_5

    const v6, 0x74783367

    if-eq v11, v6, :cond_5

    const v6, 0x77767474

    if-eq v11, v6, :cond_5

    const v6, 0x73747070

    if-eq v11, v6, :cond_5

    const v6, 0x63363038

    if-ne v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const v6, 0x6d657474

    if-ne v11, v6, :cond_4

    add-int/lit8 v6, v8, 0x8

    const/16 v10, 0x8

    add-int/2addr v6, v10

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const v6, 0x6d657474

    if-ne v11, v6, :cond_a

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 11
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 12
    iput-object v6, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 13
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_5

    :cond_4
    const v6, 0x63616d6d

    if-ne v11, v6, :cond_a

    .line 14
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 15
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    const-string v10, "application/x-camera-motion"

    .line 16
    iput-object v10, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_5

    :cond_5
    :goto_2
    add-int/lit8 v6, v8, 0x8

    const/16 v10, 0x8

    add-int/2addr v6, v10

    .line 18
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const-wide v12, 0x7fffffffffffffffL

    const v6, 0x54544d4c

    const-string v10, "application/ttml+xml"

    if-ne v11, v6, :cond_6

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    const v6, 0x74783367

    if-ne v11, v6, :cond_7

    add-int/lit8 v6, v9, -0x8

    add-int/lit8 v6, v6, -0x8

    .line 19
    new-array v10, v6, [B

    const/4 v11, 0x0

    .line 20
    invoke-virtual {v0, v10, v11, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 21
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    const-string v10, "application/x-quicktime-tx3g"

    goto :goto_4

    :cond_7
    const v6, 0x77767474

    if-ne v11, v6, :cond_8

    const-string v10, "application/x-mp4-vtt"

    goto :goto_3

    :cond_8
    const v6, 0x73747070

    if-ne v11, v6, :cond_9

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_9
    const v6, 0x63363038

    if-ne v11, v6, :cond_b

    const/4 v6, 0x1

    .line 22
    iput v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v10, "application/x-mp4-cea-608"

    goto :goto_3

    .line 23
    :goto_4
    new-instance v6, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 24
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 25
    iput-object v10, v6, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 26
    iput-object v2, v6, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 27
    iput-wide v12, v6, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 28
    iput-object v14, v6, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 29
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_a
    :goto_5
    move/from16 v2, p2

    move/from16 v22, v4

    move-object v4, v5

    move/from16 v25, v7

    move/from16 v35, v8

    move/from16 v33, v9

    goto/16 :goto_44

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_6
    add-int/lit8 v6, v8, 0x8

    const/16 v15, 0x8

    add-int/2addr v6, v15

    .line 31
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x6

    if-eqz p5, :cond_d

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v15, v17

    goto :goto_7

    .line 34
    :cond_d
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    :goto_7
    const/16 v14, 0x14

    if-eqz v15, :cond_10

    const/4 v10, 0x1

    if-ne v15, v10, :cond_e

    goto :goto_8

    :cond_e
    const/4 v10, 0x2

    if-ne v15, v10, :cond_f

    const/16 v10, 0x10

    .line 35
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    move/from16 v25, v7

    .line 37
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 39
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v13, 0x0

    goto :goto_9

    :cond_f
    move/from16 v25, v7

    move/from16 v22, v4

    move/from16 v30, v8

    move/from16 v29, v9

    goto/16 :goto_21

    :cond_10
    :goto_8
    move/from16 v25, v7

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v6, 0x6

    .line 41
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v13, v14, 0x1

    iput v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v6, v6, v14

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v10

    const/4 v10, 0x2

    add-int/2addr v13, v10

    .line 43
    iput v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const/4 v10, 0x4

    sub-int/2addr v13, v10

    .line 44
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const/4 v13, 0x1

    if-ne v15, v13, :cond_11

    const/16 v13, 0x10

    .line 46
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_11
    move v13, v10

    .line 47
    :goto_9
    iget v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    const v14, 0x656e6361

    if-ne v11, v14, :cond_14

    .line 48
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 49
    iget-object v11, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v3, :cond_12

    move/from16 v22, v4

    const/4 v15, 0x0

    goto :goto_a

    .line 50
    :cond_12
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v15

    move/from16 v22, v4

    .line 51
    :goto_a
    iget-object v4, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v4, v25

    goto :goto_b

    :cond_13
    move/from16 v22, v4

    move-object v15, v3

    .line 52
    :goto_b
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_c

    :cond_14
    move/from16 v22, v4

    move-object v15, v3

    :goto_c
    const v4, 0x61632d33

    const-string v14, "audio/ac4"

    const-string v19, "audio/eac3"

    move/from16 v26, v6

    const-string v6, "audio/ac3"

    const-string v27, "audio/raw"

    if-ne v11, v4, :cond_15

    move-object v4, v6

    goto/16 :goto_10

    :cond_15
    const v4, 0x65632d33

    if-ne v11, v4, :cond_16

    move-object/from16 v4, v19

    goto/16 :goto_10

    :cond_16
    const v4, 0x61632d34

    if-ne v11, v4, :cond_17

    move-object v4, v14

    goto/16 :goto_10

    :cond_17
    const v4, 0x64747363

    if-ne v11, v4, :cond_18

    const-string v4, "audio/vnd.dts"

    goto/16 :goto_10

    :cond_18
    const v4, 0x64747368

    if-eq v11, v4, :cond_2b

    const v4, 0x6474736c

    if-ne v11, v4, :cond_19

    goto/16 :goto_f

    :cond_19
    const v4, 0x64747365

    if-ne v11, v4, :cond_1a

    const-string v4, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_10

    :cond_1a
    const v4, 0x64747378

    if-ne v11, v4, :cond_1b

    const-string v4, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_10

    :cond_1b
    const v4, 0x73616d72

    if-ne v11, v4, :cond_1c

    const-string v4, "audio/3gpp"

    goto/16 :goto_10

    :cond_1c
    const v4, 0x73617762

    if-ne v11, v4, :cond_1d

    const-string v4, "audio/amr-wb"

    goto/16 :goto_10

    :cond_1d
    const v4, 0x6c70636d

    if-eq v11, v4, :cond_2a

    const v4, 0x736f7774

    if-ne v11, v4, :cond_1e

    goto/16 :goto_e

    :cond_1e
    const v4, 0x74776f73

    if-ne v11, v4, :cond_1f

    const/high16 v4, 0x10000000

    goto :goto_11

    :cond_1f
    const v4, 0x2e6d7032

    if-eq v11, v4, :cond_29

    const v4, 0x2e6d7033

    if-ne v11, v4, :cond_20

    goto :goto_d

    :cond_20
    const v4, 0x6d686131

    if-ne v11, v4, :cond_21

    const-string v4, "audio/mha1"

    goto :goto_10

    :cond_21
    const v4, 0x6d686d31

    if-ne v11, v4, :cond_22

    const-string v4, "audio/mhm1"

    goto :goto_10

    :cond_22
    const v4, 0x616c6163

    if-ne v11, v4, :cond_23

    const-string v4, "audio/alac"

    goto :goto_10

    :cond_23
    const v4, 0x616c6177

    if-ne v11, v4, :cond_24

    const-string v4, "audio/g711-alaw"

    goto :goto_10

    :cond_24
    const v4, 0x756c6177

    if-ne v11, v4, :cond_25

    const-string v4, "audio/g711-mlaw"

    goto :goto_10

    :cond_25
    const v4, 0x4f707573

    if-ne v11, v4, :cond_26

    const-string v4, "audio/opus"

    goto :goto_10

    :cond_26
    const v4, 0x664c6143

    if-ne v11, v4, :cond_27

    const-string v4, "audio/flac"

    goto :goto_10

    :cond_27
    const v4, 0x6d6c7061

    if-ne v11, v4, :cond_28

    const-string v4, "audio/true-hd"

    goto :goto_10

    :cond_28
    const/4 v4, -0x1

    const/16 v27, 0x0

    goto :goto_11

    :cond_29
    :goto_d
    const-string v4, "audio/mpeg"

    goto :goto_10

    :cond_2a
    :goto_e
    const/4 v4, 0x2

    goto :goto_11

    :cond_2b
    :goto_f
    const-string v4, "audio/vnd.dts.hd"

    :goto_10
    move-object/from16 v27, v4

    const/4 v4, -0x1

    :goto_11
    move v11, v7

    move/from16 v7, v26

    const/16 v28, 0x0

    move/from16 v26, v4

    move-object/from16 v4, v27

    const/16 v27, 0x0

    :goto_12
    sub-int v3, v10, v8

    if-ge v3, v9, :cond_45

    .line 53
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    move/from16 v29, v9

    if-lez v3, :cond_2c

    const/4 v9, 0x1

    goto :goto_13

    :cond_2c
    const/4 v9, 0x0

    .line 55
    :goto_13
    invoke-static {v9, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    move/from16 v30, v8

    const v8, 0x6d686143

    if-ne v9, v8, :cond_2d

    add-int/lit8 v8, v3, -0xd

    .line 57
    new-array v9, v8, [B

    move-object/from16 v31, v12

    add-int/lit8 v12, v10, 0xd

    .line 58
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v12, 0x0

    .line 59
    invoke-virtual {v0, v9, v12, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 60
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    move/from16 v32, v3

    move-object/from16 v33, v6

    move-object/from16 v28, v8

    move v12, v10

    goto/16 :goto_18

    :cond_2d
    move-object/from16 v31, v12

    const v8, 0x65736473

    if-eq v9, v8, :cond_3d

    if-eqz p5, :cond_2e

    const v8, 0x77617665

    if-ne v9, v8, :cond_2e

    move/from16 v32, v3

    move-object/from16 v33, v6

    move v12, v10

    const v3, 0x65736473

    const/16 v6, 0x14

    const/4 v8, 0x4

    const/4 v10, 0x0

    goto/16 :goto_1a

    :cond_2e
    const v8, 0x64616333

    if-ne v9, v8, :cond_30

    add-int/lit8 v8, v10, 0x8

    .line 61
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 62
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit16 v9, v9, 0xc0

    const/4 v12, 0x6

    shr-int/2addr v9, v12

    move v12, v10

    .line 64
    sget-object v23, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v9, v23, v9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v23

    .line 66
    sget-object v32, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v33, v23, 0x38

    const/16 v18, 0x3

    shr-int/lit8 v33, v33, 0x3

    aget v32, v32, v33

    const/16 v21, 0x4

    and-int/lit8 v23, v23, 0x4

    if-eqz v23, :cond_2f

    add-int/lit8 v32, v32, 0x1

    :cond_2f
    move/from16 v10, v32

    move/from16 v32, v3

    .line 67
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 68
    iput-object v8, v3, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 69
    iput-object v6, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 70
    iput v10, v3, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 71
    iput v9, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 72
    iput-object v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 73
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 74
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 75
    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v33, v6

    goto/16 :goto_16

    :cond_30
    move/from16 v32, v3

    move v12, v10

    const v3, 0x64656333

    if-ne v9, v3, :cond_34

    add-int/lit8 v10, v12, 0x8

    .line 76
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    .line 78
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit16 v8, v8, 0xc0

    const/4 v10, 0x6

    shr-int/2addr v8, v10

    .line 80
    sget-object v9, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v8, v9, v8

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 82
    sget-object v23, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v33, v9, 0xe

    const/16 v16, 0x1

    shr-int/lit8 v33, v33, 0x1

    aget v23, v23, v33

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_31

    add-int/lit8 v23, v23, 0x1

    .line 83
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x1e

    shr-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_32

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    const/16 v20, 0x2

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_32

    add-int/lit8 v23, v23, 0x2

    :cond_32
    move/from16 v9, v23

    .line 85
    iget v10, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    move-object/from16 v33, v6

    iget v6, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v6

    if-lez v10, :cond_33

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/4 v10, 0x1

    and-int/2addr v6, v10

    if-eqz v6, :cond_33

    const-string v6, "audio/eac3-joc"

    goto :goto_14

    :cond_33
    move-object/from16 v6, v19

    .line 87
    :goto_14
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 88
    iput-object v3, v10, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 89
    iput-object v6, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 90
    iput v9, v10, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 91
    iput v8, v10, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 92
    iput-object v15, v10, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 93
    iput-object v2, v10, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 94
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 95
    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_16

    :cond_34
    move-object/from16 v33, v6

    const v3, 0x64616334

    if-ne v9, v3, :cond_36

    add-int/lit8 v10, v12, 0x8

    .line 96
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    .line 98
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-ne v8, v6, :cond_35

    const v6, 0xbb80

    goto :goto_15

    :cond_35
    const v6, 0xac44

    .line 100
    :goto_15
    new-instance v8, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 101
    iput-object v3, v8, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 102
    iput-object v14, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/4 v3, 0x2

    .line 103
    iput v3, v8, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 104
    iput v6, v8, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 105
    iput-object v15, v8, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 106
    iput-object v2, v8, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 107
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 108
    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_16

    :cond_36
    const v3, 0x646d6c70

    if-ne v9, v3, :cond_38

    if-lez v13, :cond_37

    move v7, v13

    const/4 v11, 0x2

    goto :goto_18

    :cond_37
    const/16 v0, 0x3c

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    const v3, 0x64647473

    if-ne v9, v3, :cond_39

    .line 110
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 111
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 112
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 113
    iput v11, v3, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 114
    iput v7, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 115
    iput-object v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 116
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 117
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_16
    const v3, 0x616c6163

    const/16 v6, 0x14

    const/4 v8, 0x4

    :goto_17
    const/4 v10, 0x0

    goto :goto_18

    :cond_39
    const v3, 0x644f7073

    if-ne v9, v3, :cond_3a

    add-int/lit8 v3, v32, -0x8

    .line 118
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v8, v6

    add-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v10, v12, 0x8

    .line 119
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 120
    array-length v6, v6

    invoke-virtual {v0, v8, v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 121
    invoke-static {v8}, Lkotlin/io/CloseableKt;->buildInitializationData([B)Ljava/util/List;

    move-result-object v3

    goto :goto_19

    :goto_18
    move-object/from16 v10, v31

    move/from16 v9, v32

    move/from16 v31, v13

    goto/16 :goto_20

    :cond_3a
    const v3, 0x64664c61

    if-ne v9, v3, :cond_3b

    add-int/lit8 v3, v32, -0xc

    add-int/lit8 v6, v3, 0x4

    .line 122
    new-array v6, v6, [B

    const/16 v8, 0x66

    const/4 v9, 0x0

    .line 123
    aput-byte v8, v6, v9

    const/16 v8, 0x4c

    const/4 v9, 0x1

    .line 124
    aput-byte v8, v6, v9

    const/16 v8, 0x61

    const/4 v9, 0x2

    .line 125
    aput-byte v8, v6, v9

    const/16 v8, 0x43

    const/4 v9, 0x3

    .line 126
    aput-byte v8, v6, v9

    add-int/lit8 v10, v12, 0xc

    .line 127
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x4

    .line 128
    invoke-virtual {v0, v6, v8, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 129
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_19
    move-object/from16 v28, v3

    goto :goto_18

    :cond_3b
    const v3, 0x616c6163

    const/4 v8, 0x4

    if-ne v9, v3, :cond_3c

    add-int/lit8 v6, v32, -0xc

    .line 130
    new-array v7, v6, [B

    add-int/lit8 v10, v12, 0xc

    .line 131
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v10, 0x0

    .line 132
    invoke-virtual {v0, v7, v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 133
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    const/16 v9, 0x9

    .line 134
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    const/16 v11, 0x14

    .line 136
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 137
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 139
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 140
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 141
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    move v11, v6

    move-object/from16 v28, v7

    move v7, v9

    goto/16 :goto_18

    :cond_3c
    const/16 v6, 0x14

    goto/16 :goto_17

    :cond_3d
    move/from16 v32, v3

    move-object/from16 v33, v6

    move v12, v10

    const/16 v6, 0x14

    const/4 v8, 0x4

    const/4 v10, 0x0

    const v3, 0x65736473

    :goto_1a
    if-ne v9, v3, :cond_3e

    move v3, v12

    move-object/from16 v10, v31

    move/from16 v9, v32

    const/4 v6, -0x1

    move/from16 v31, v13

    goto :goto_1f

    .line 142
    :cond_3e
    iget v3, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-lt v3, v12, :cond_3f

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_1b

    :cond_3f
    move v9, v10

    const/4 v6, 0x0

    .line 143
    :goto_1b
    invoke-static {v9, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_1c
    sub-int v6, v3, v12

    move/from16 v9, v32

    if-ge v6, v9, :cond_42

    .line 144
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_40

    move-object/from16 v10, v31

    const/4 v8, 0x1

    goto :goto_1d

    :cond_40
    move v8, v10

    move-object/from16 v10, v31

    .line 146
    :goto_1d
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    move/from16 v31, v13

    const v13, 0x65736473

    if-ne v8, v13, :cond_41

    goto :goto_1e

    :cond_41
    add-int/2addr v3, v6

    move/from16 v32, v9

    move/from16 v13, v31

    const/4 v8, 0x4

    move-object/from16 v31, v10

    const/4 v10, 0x0

    goto :goto_1c

    :cond_42
    move-object/from16 v10, v31

    move/from16 v31, v13

    const/4 v3, -0x1

    :goto_1e
    const/4 v6, -0x1

    :goto_1f
    if-eq v3, v6, :cond_44

    .line 148
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 149
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 150
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    if-eqz v3, :cond_44

    const-string v6, "audio/mp4a-latm"

    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 152
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v6

    .line 153
    iget v7, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 154
    iget v11, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 155
    iget-object v6, v6, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v27, v6

    .line 156
    :cond_43
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v28, v3

    :cond_44
    :goto_20
    add-int v3, v12, v9

    move-object v12, v10

    move/from16 v9, v29

    move/from16 v8, v30

    move/from16 v13, v31

    move-object/from16 v6, v33

    move v10, v3

    goto/16 :goto_12

    :cond_45
    move/from16 v30, v8

    move/from16 v29, v9

    .line 157
    iget-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v3, :cond_46

    if-eqz v4, :cond_46

    .line 158
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 159
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 160
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v4, v27

    .line 161
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 162
    iput v11, v3, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 163
    iput v7, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    move/from16 v4, v26

    .line 164
    iput v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    move-object/from16 v4, v28

    .line 165
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 166
    iput-object v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 167
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 168
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_46
    :goto_21
    move/from16 v2, p2

    move-object v4, v5

    move/from16 v33, v29

    move/from16 v35, v30

    goto/16 :goto_44

    :cond_47
    :goto_22
    move/from16 v22, v4

    move/from16 v25, v7

    move/from16 v30, v8

    move/from16 v29, v9

    move v3, v10

    move-object v10, v12

    const/4 v4, 0x0

    add-int/lit8 v8, v30, 0x8

    const/16 v7, 0x8

    add-int/2addr v8, v7

    .line 169
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v7, 0x10

    .line 170
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    const/16 v9, 0x32

    .line 173
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 174
    iget v9, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ne v11, v6, :cond_4a

    move/from16 v6, v29

    move/from16 v12, v30

    .line 175
    invoke-static {v0, v12, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_49

    .line 176
    iget-object v11, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v14, p4

    if-nez v14, :cond_48

    const/4 v4, 0x0

    goto :goto_23

    .line 177
    :cond_48
    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v4

    .line 178
    :goto_23
    iget-object v15, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v15, v25

    goto :goto_24

    :cond_49
    move-object/from16 v14, p4

    move-object v4, v14

    .line 179
    :goto_24
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_25

    :cond_4a
    move-object/from16 v14, p4

    move/from16 v6, v29

    move/from16 v12, v30

    move-object v4, v14

    :goto_25
    const-string/jumbo v13, "video/3gpp"

    if-ne v11, v3, :cond_4b

    const-string/jumbo v3, "video/mpeg"

    goto :goto_26

    :cond_4b
    const v3, 0x48323633

    if-ne v11, v3, :cond_4c

    move-object v3, v13

    goto :goto_26

    :cond_4c
    const/4 v3, 0x0

    :goto_26
    const/high16 v15, 0x3f800000    # 1.0f

    move-object v2, v3

    move-object/from16 v27, v4

    move v14, v9

    move-object/from16 v21, v13

    move v4, v15

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v13, -0x1

    const/16 v19, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v34, -0x1

    :goto_27
    sub-int v15, v14, v12

    if-ge v15, v6, :cond_76

    .line 180
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 181
    iget v15, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    move/from16 v29, v13

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    move-object/from16 v30, v3

    if-nez v13, :cond_4d

    .line 183
    iget v3, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v12

    if-ne v3, v6, :cond_4d

    move/from16 v37, v4

    move-object/from16 v36, v5

    move/from16 v33, v6

    move/from16 v43, v7

    move/from16 v38, v8

    move/from16 v35, v12

    goto/16 :goto_42

    :cond_4d
    if-lez v13, :cond_4e

    const/4 v3, 0x1

    goto :goto_28

    :cond_4e
    const/4 v3, 0x0

    .line 184
    :goto_28
    invoke-static {v3, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    move-object/from16 v31, v10

    const v10, 0x61766343

    if-ne v3, v10, :cond_51

    if-nez v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_29

    :cond_4f
    const/4 v2, 0x0

    :goto_29
    const/4 v3, 0x0

    .line 186
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v15, v15, 0x8

    .line 187
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 188
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v2

    .line 189
    iget-object v15, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 190
    iget v3, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v26, :cond_50

    .line 191
    iget v4, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 192
    :cond_50
    iget-object v9, v2, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    :goto_2a
    const v17, 0x76703038

    goto/16 :goto_31

    :cond_51
    const v10, 0x68766343

    if-ne v3, v10, :cond_54

    if-nez v2, :cond_52

    const/4 v2, 0x1

    goto :goto_2b

    :cond_52
    const/4 v2, 0x0

    :goto_2b
    const/4 v3, 0x0

    .line 193
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v15, v15, 0x8

    .line 194
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 195
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v2

    .line 196
    iget-object v15, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 197
    iget v3, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v3, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v26, :cond_53

    .line 198
    iget v4, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 199
    :cond_53
    iget-object v9, v2, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v2, "video/hevc"

    goto :goto_2a

    :cond_54
    const v10, 0x64766343

    if-eq v3, v10, :cond_74

    const v10, 0x64767643

    if-ne v3, v10, :cond_55

    goto/16 :goto_3d

    :cond_55
    const v10, 0x76706343

    if-ne v3, v10, :cond_58

    if-nez v2, :cond_56

    const/4 v2, 0x1

    goto :goto_2c

    :cond_56
    const/4 v2, 0x0

    :goto_2c
    const/4 v10, 0x0

    .line 200
    invoke-static {v2, v10}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v2, 0x76703038

    if-ne v11, v2, :cond_57

    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    goto :goto_2d

    :cond_57
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    :goto_2d
    move/from16 v17, v2

    move-object v2, v3

    goto :goto_30

    :cond_58
    const v17, 0x76703038

    const v10, 0x61763143

    if-ne v3, v10, :cond_5a

    if-nez v2, :cond_59

    const/4 v2, 0x1

    goto :goto_2e

    :cond_59
    const/4 v2, 0x0

    :goto_2e
    const/4 v3, 0x0

    .line 201
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const-string/jumbo v2, "video/av01"

    goto :goto_30

    :cond_5a
    const v10, 0x636c6c69

    const/16 v32, 0x19

    if-ne v3, v10, :cond_5c

    if-nez v19, :cond_5b

    .line 202
    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_2f

    :cond_5b
    move-object/from16 v3, v19

    :goto_2f
    const/16 v10, 0x15

    .line 203
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v19, v3

    :goto_30
    move-object/from16 v15, v28

    :goto_31
    move-object/from16 v36, v5

    move/from16 v33, v6

    move/from16 v43, v7

    move/from16 v38, v8

    move/from16 v32, v11

    move/from16 v35, v12

    goto/16 :goto_32

    :cond_5c
    const v10, 0x6d646376

    if-ne v3, v10, :cond_5e

    if-nez v19, :cond_5d

    .line 206
    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    :cond_5d
    move-object/from16 v3, v19

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v15

    move/from16 v32, v11

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v11

    move/from16 v33, v6

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    move/from16 v35, v12

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v12

    move-object/from16 v36, v5

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v5

    move/from16 v37, v4

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v4

    move/from16 v38, v8

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v8

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v39

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v41

    move/from16 v43, v7

    const/4 v7, 0x1

    .line 217
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    .line 226
    div-long v6, v39, v4

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 227
    div-long v4, v41, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v19, v3

    move-object/from16 v15, v28

    move/from16 v4, v37

    :goto_32
    move/from16 v37, v4

    move-object/from16 v28, v15

    move-object/from16 v3, v30

    const/4 v4, 0x0

    const v5, 0x65736473

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    goto/16 :goto_41

    :cond_5e
    move/from16 v37, v4

    move-object/from16 v36, v5

    move/from16 v33, v6

    move/from16 v43, v7

    move/from16 v38, v8

    move/from16 v32, v11

    move/from16 v35, v12

    const v4, 0x64323633

    if-ne v3, v4, :cond_60

    const/4 v4, 0x0

    if-nez v2, :cond_5f

    const/4 v11, 0x1

    goto :goto_33

    :cond_5f
    const/4 v11, 0x0

    .line 228
    :goto_33
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v2, v21

    const v5, 0x65736473

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    goto/16 :goto_3e

    :cond_60
    const/4 v4, 0x0

    const v5, 0x65736473

    if-ne v3, v5, :cond_63

    if-nez v2, :cond_61

    const/4 v11, 0x1

    goto :goto_34

    :cond_61
    const/4 v11, 0x0

    .line 229
    :goto_34
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 230
    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v2

    .line 231
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 232
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_62

    .line 233
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_35

    :cond_62
    move-object/from16 v15, v28

    :goto_35
    move-object v2, v3

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    goto/16 :goto_3f

    :cond_63
    const v6, 0x70617370

    if-ne v3, v6, :cond_64

    add-int/lit8 v15, v15, 0x8

    .line 234
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    int-to-float v3, v3

    int-to-float v6, v6

    div-float/2addr v3, v6

    move/from16 v37, v3

    move-object/from16 v3, v30

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    const/16 v26, 0x1

    goto/16 :goto_41

    :cond_64
    const v6, 0x73763364

    if-ne v3, v6, :cond_67

    add-int/lit8 v3, v15, 0x8

    :goto_36
    sub-int v6, v3, v15

    if-ge v6, v13, :cond_66

    .line 237
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x70726f6a

    if-ne v7, v8, :cond_65

    .line 240
    iget-object v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v6, v3

    .line 241
    invoke-static {v7, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    goto :goto_37

    :cond_65
    add-int/2addr v3, v6

    goto :goto_36

    :cond_66
    move-object v3, v4

    :goto_37
    move-object/from16 v15, v28

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    goto/16 :goto_40

    :cond_67
    const v6, 0x73743364

    if-ne v3, v6, :cond_6e

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v11, 0x3

    .line 243
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_6d

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_6c

    if-eq v3, v6, :cond_6a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_69

    if-eq v3, v11, :cond_68

    goto :goto_38

    :cond_68
    move/from16 v29, v11

    goto :goto_38

    :cond_69
    const/4 v8, 0x2

    const/16 v29, 0x2

    goto/16 :goto_3e

    :cond_6a
    move/from16 v29, v6

    :cond_6b
    :goto_38
    const/4 v8, 0x2

    goto/16 :goto_3e

    :cond_6c
    const/4 v8, 0x2

    const/16 v29, 0x0

    goto/16 :goto_3e

    :cond_6d
    const/4 v6, 0x1

    goto :goto_38

    :cond_6e
    const/4 v6, 0x1

    const/4 v11, 0x3

    const v7, 0x636f6c72

    if-ne v3, v7, :cond_6b

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v7, 0x6e636c78

    if-eq v3, v7, :cond_71

    const v7, 0x6e636c63

    if-ne v3, v7, :cond_6f

    goto :goto_3a

    :cond_6f
    const-string v7, "Unsupported color type: "

    .line 246
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_70

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_70
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_39
    const-string v7, "AtomParsers"

    .line 247
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 248
    :cond_71
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x2

    .line 250
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/16 v10, 0x13

    if-ne v13, v10, :cond_72

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_72

    move v10, v6

    goto :goto_3b

    :cond_72
    const/4 v10, 0x0

    .line 252
    :goto_3b
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v3

    if-eqz v10, :cond_73

    move v10, v6

    goto :goto_3c

    :cond_73
    move v10, v8

    .line 253
    :goto_3c
    invoke-static {v7}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v7

    move/from16 v24, v3

    move/from16 v34, v7

    move/from16 v23, v10

    goto :goto_3e

    :cond_74
    :goto_3d
    move/from16 v37, v4

    move-object/from16 v36, v5

    move/from16 v33, v6

    move/from16 v43, v7

    move/from16 v38, v8

    move/from16 v32, v11

    move/from16 v35, v12

    const/4 v4, 0x0

    const v5, 0x65736473

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x3

    const v17, 0x76703038

    .line 254
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 255
    iget-object v2, v3, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v3, "video/dolby-vision"

    move-object v9, v2

    move-object v2, v3

    :cond_75
    :goto_3e
    move-object/from16 v15, v28

    :goto_3f
    move-object/from16 v3, v30

    :goto_40
    move-object/from16 v28, v15

    :goto_41
    add-int/2addr v14, v13

    move/from16 v13, v29

    move-object/from16 v10, v31

    move/from16 v11, v32

    move/from16 v6, v33

    move/from16 v12, v35

    move-object/from16 v5, v36

    move/from16 v4, v37

    move/from16 v8, v38

    move/from16 v7, v43

    goto/16 :goto_27

    :cond_76
    move-object/from16 v30, v3

    move/from16 v37, v4

    move-object/from16 v36, v5

    move/from16 v33, v6

    move/from16 v43, v7

    move/from16 v38, v8

    move/from16 v35, v12

    move/from16 v29, v13

    :goto_42
    const/4 v4, 0x0

    if-nez v2, :cond_77

    move/from16 v2, p2

    move-object/from16 v4, v36

    goto :goto_44

    .line 256
    :cond_77
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 257
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 258
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 259
    iput-object v9, v3, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    move/from16 v2, v43

    .line 260
    iput v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    move/from16 v2, v38

    .line 261
    iput v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    move/from16 v15, v37

    .line 262
    iput v15, v3, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    move/from16 v2, p2

    .line 263
    iput v2, v3, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    move-object/from16 v5, v30

    .line 264
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    move/from16 v5, v29

    .line 265
    iput v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    move-object/from16 v5, v28

    .line 266
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    move-object/from16 v14, v27

    .line 267
    iput-object v14, v3, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move/from16 v5, v24

    const/4 v6, -0x1

    move/from16 v7, v23

    move/from16 v8, v34

    if-ne v5, v6, :cond_78

    if-ne v7, v6, :cond_78

    if-ne v8, v6, :cond_78

    if-eqz v19, :cond_7a

    .line 268
    :cond_78
    new-instance v6, Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v19, :cond_79

    .line 269
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    goto :goto_43

    :cond_79
    move-object v14, v4

    :goto_43
    invoke-direct {v6, v5, v7, v8, v14}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 270
    iput-object v6, v3, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 271
    :cond_7a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v4, v36

    iput-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_44
    add-int v8, v35, v33

    .line 272
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v7, v25, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v5, v4

    move/from16 v4, v22

    goto/16 :goto_0

    :cond_7b
    move-object v4, v5

    return-object v4
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_53

    .line 3
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 4
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v7, 0x7472616b

    if-eq v6, v7, :cond_0

    move-object/from16 v0, p7

    move-object/from16 v40, v2

    move/from16 v39, v4

    goto/16 :goto_17

    :cond_0
    const v6, 0x6d766864

    .line 5
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 6
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x6d646961

    .line 7
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v9, 0x68646c72

    .line 9
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 10
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v10, 0x10

    .line 12
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v11, 0x736f756e

    const/4 v14, -0x1

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const v11, 0x76696465

    if-ne v9, v11, :cond_2

    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    const v11, 0x74657874

    if-eq v9, v11, :cond_5

    const v11, 0x7362746c

    if-eq v9, v11, :cond_5

    const v11, 0x73756274

    if-eq v9, v11, :cond_5

    const v11, 0x636c6370

    if-ne v9, v11, :cond_3

    goto :goto_1

    :cond_3
    const v11, 0x6d657461

    if-ne v9, v11, :cond_4

    const/4 v9, 0x5

    goto :goto_2

    :cond_4
    move v9, v14

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v9, 0x3

    :goto_2
    const/4 v7, 0x4

    if-ne v9, v14, :cond_6

    move-object/from16 v40, v2

    move/from16 v39, v4

    goto/16 :goto_15

    :cond_6
    const v15, 0x746b6864

    .line 14
    invoke-virtual {v5, v15}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 15
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v15, v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v11, 0x8

    .line 17
    invoke-virtual {v15, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v17

    shr-int/lit8 v3, v17, 0x18

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move v11, v10

    .line 19
    :goto_3
    invoke-virtual {v15, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 21
    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    iget v7, v15, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-nez v3, :cond_8

    const/4 v10, 0x4

    goto :goto_4

    :cond_8
    const/16 v10, 0x8

    :goto_4
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v10, :cond_a

    .line 23
    iget-object v13, v15, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v19, v7, v12

    .line 24
    aget-byte v13, v13, v19

    if-eq v13, v14, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_b

    .line 25
    invoke-virtual {v15, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    :cond_b
    if-nez v3, :cond_c

    .line 26
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    goto :goto_7

    :cond_c
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v19

    :goto_7
    const-wide/16 v21, 0x0

    cmp-long v3, v19, v21

    if-nez v3, :cond_d

    :goto_8
    const/16 v3, 0x10

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9

    :cond_d
    const/16 v3, 0x10

    .line 27
    :goto_9
    invoke-virtual {v15, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 28
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 29
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const/4 v3, 0x4

    .line 30
    invoke-virtual {v15, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 31
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 32
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    const/high16 v14, 0x10000

    const/high16 v12, -0x10000

    if-nez v7, :cond_e

    if-ne v10, v14, :cond_e

    if-ne v3, v12, :cond_e

    if-nez v15, :cond_e

    const/16 v3, 0x5a

    goto :goto_a

    :cond_e
    if-nez v7, :cond_f

    if-ne v10, v12, :cond_f

    if-ne v3, v14, :cond_f

    if-nez v15, :cond_f

    const/16 v3, 0x10e

    goto :goto_a

    :cond_f
    if-ne v7, v12, :cond_10

    if-nez v10, :cond_10

    if-nez v3, :cond_10

    if-ne v15, v12, :cond_10

    const/16 v3, 0xb4

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p2, v12

    if-nez v7, :cond_11

    goto :goto_b

    :cond_11
    move-wide/from16 v19, p2

    .line 33
    :goto_b
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x8

    .line 34
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_12

    const/16 v7, 0x8

    goto :goto_c

    :cond_12
    const/16 v7, 0x10

    .line 36
    :goto_c
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v19, v12

    if-nez v10, :cond_13

    goto :goto_d

    :cond_13
    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v19

    move-wide/from16 v25, v6

    .line 38
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    :goto_d
    const v10, 0x6d696e66

    .line 39
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    .line 40
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x7374626c

    .line 41
    invoke-virtual {v14, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    .line 42
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646864

    .line 43
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 44
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v10, 0x8

    .line 46
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 47
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_14

    const/16 v15, 0x8

    goto :goto_e

    :cond_14
    const/16 v15, 0x10

    .line 48
    :goto_e
    invoke-virtual {v8, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v18

    if-nez v10, :cond_15

    const/4 v10, 0x4

    goto :goto_f

    :cond_15
    const/16 v10, 0x8

    .line 50
    :goto_f
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 51
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    shr-int/lit8 v10, v8, 0xa

    and-int/lit8 v10, v10, 0x1f

    add-int/lit8 v10, v10, 0x60

    int-to-char v10, v10

    shr-int/lit8 v15, v8, 0x5

    and-int/lit8 v15, v15, 0x1f

    add-int/lit8 v15, v15, 0x60

    int-to-char v15, v15

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v39, v4

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const v4, 0x73747364

    .line 54
    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 55
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 57
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v8

    check-cast v21, Ljava/lang/String;

    move-object/from16 v18, v4

    move/from16 v19, v11

    move/from16 v20, v3

    move-object/from16 v22, p4

    move/from16 v23, p6

    .line 58
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v3

    if-nez p5, :cond_1b

    const v4, 0x65647473

    .line 59
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    if-eqz v4, :cond_1b

    const v8, 0x656c7374

    .line 60
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-nez v4, :cond_16

    move-object/from16 v40, v2

    move-wide/from16 v23, v12

    const/4 v2, 0x0

    goto :goto_13

    .line 61
    :cond_16
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x8

    .line 62
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 63
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    .line 64
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 65
    new-array v14, v10, [J

    .line 66
    new-array v15, v10, [J

    move-object/from16 v40, v2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v10, :cond_1a

    move/from16 v16, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_17

    .line 67
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v17

    goto :goto_11

    :cond_17
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v17

    :goto_11
    aput-wide v17, v14, v2

    if-ne v8, v10, :cond_18

    .line 68
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v17

    move-wide/from16 v23, v12

    goto :goto_12

    :cond_18
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    move-wide/from16 v23, v12

    int-to-long v12, v10

    move-wide/from16 v17, v12

    :goto_12
    aput-wide v17, v15, v2

    .line 69
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_19

    const/4 v10, 0x2

    .line 70
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v16

    move-wide/from16 v12, v23

    goto :goto_10

    .line 71
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-wide/from16 v23, v12

    .line 72
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_1c

    .line 73
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    .line 74
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [J

    move-object/from16 v30, v2

    move-object/from16 v29, v4

    goto :goto_14

    :cond_1b
    move-object/from16 v40, v2

    move-wide/from16 v23, v12

    :cond_1c
    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 75
    :goto_14
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_1d

    :goto_15
    move-object/from16 v0, p7

    const/4 v2, 0x0

    goto :goto_16

    .line 76
    :cond_1d
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 77
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v8, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v16, v2

    move/from16 v17, v11

    move/from16 v18, v9

    move-wide/from16 v21, v6

    move-object/from16 v25, v0

    move/from16 v26, v4

    move-object/from16 v27, v8

    move/from16 v28, v3

    invoke-direct/range {v16 .. v30}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v0, p7

    .line 79
    :goto_16
    invoke-interface {v0, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-nez v7, :cond_1e

    :goto_17
    move-object/from16 v0, v40

    const/16 v18, 0x0

    goto/16 :goto_42

    :cond_1e
    const v2, 0x6d646961

    .line 80
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 81
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 83
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    .line 84
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 85
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374737a

    .line 86
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 87
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_18

    :cond_1f
    const v3, 0x73747a32

    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 89
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 90
    :goto_18
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    if-nez v3, :cond_20

    .line 91
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v8, v3, [J

    new-array v9, v3, [I

    const/4 v10, 0x0

    new-array v11, v3, [J

    new-array v12, v3, [I

    const-wide/16 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    move-object v4, v1

    :goto_19
    const/16 v18, 0x0

    goto/16 :goto_34

    :cond_20
    const v5, 0x7374636f

    .line 92
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-nez v5, :cond_21

    const v5, 0x636f3634

    .line 93
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 94
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_1a

    :cond_21
    const/4 v6, 0x0

    .line 95
    :goto_1a
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v8, 0x73747363

    .line 96
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    .line 97
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v9, 0x73747473

    .line 99
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    .line 100
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747373

    .line 102
    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 103
    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_1b

    :cond_22
    const/4 v10, 0x0

    :goto_1b
    const v11, 0x63747473

    .line 104
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 105
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_1c

    :cond_23
    const/4 v2, 0x0

    .line 106
    :goto_1c
    new-instance v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v11, v8, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v5, 0xc

    .line 107
    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 108
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    .line 109
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 110
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    if-eqz v2, :cond_24

    .line 111
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    goto :goto_1d

    :cond_24
    const/4 v13, 0x0

    :goto_1d
    if-eqz v10, :cond_26

    .line 113
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 114
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_25

    .line 115
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    const/4 v15, -0x1

    add-int/lit8 v38, v14, -0x1

    move/from16 v14, v38

    goto :goto_1e

    :cond_25
    const/4 v15, -0x1

    move v14, v15

    const/4 v10, 0x0

    goto :goto_1e

    :cond_26
    const/4 v15, -0x1

    move v14, v15

    const/4 v5, 0x0

    .line 116
    :goto_1e
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v15

    .line 117
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move/from16 v16, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_28

    const-string v8, "audio/raw"

    .line 118
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "audio/g711-mlaw"

    .line 119
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "audio/g711-alaw"

    .line 120
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    if-nez v6, :cond_28

    if-nez v13, :cond_28

    if-nez v5, :cond_28

    const/4 v0, 0x1

    goto :goto_1f

    :cond_28
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_2d

    .line 121
    iget v0, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v0, [J

    .line 122
    new-array v4, v0, [I

    .line 123
    :goto_20
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 124
    iget v5, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v8, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v8, v2, v5

    .line 125
    iget v6, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_20

    :cond_29
    int-to-long v5, v12

    const/16 v8, 0x2000

    .line 126
    div-int/2addr v8, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v9, v0, :cond_2a

    .line 127
    aget v11, v4, v9

    .line 128
    sget v12, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    add-int/2addr v11, v8

    const/4 v12, -0x1

    add-int/2addr v11, v12

    .line 129
    div-int/2addr v11, v8

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 130
    :cond_2a
    new-array v9, v10, [J

    .line 131
    new-array v11, v10, [I

    .line 132
    new-array v12, v10, [J

    .line 133
    new-array v10, v10, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_22
    if-ge v13, v0, :cond_2c

    .line 134
    aget v18, v4, v13

    .line 135
    aget-wide v19, v2, v13

    move-wide/from16 v20, v19

    move-object/from16 v19, v2

    move/from16 v2, v18

    move/from16 v18, v0

    move/from16 v0, v17

    :goto_23
    if-lez v2, :cond_2b

    .line 136
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 137
    aput-wide v20, v9, v16

    mul-int v22, v15, v17

    .line 138
    aput v22, v11, v16

    move-object/from16 v22, v4

    .line 139
    aget v4, v11, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v8

    move-object/from16 v23, v9

    int-to-long v8, v14

    mul-long/2addr v8, v5

    .line 140
    aput-wide v8, v12, v16

    const/4 v8, 0x1

    .line 141
    aput v8, v10, v16

    .line 142
    aget v8, v11, v16

    int-to-long v8, v8

    add-long v20, v20, v8

    add-int v14, v14, v17

    sub-int v2, v2, v17

    add-int/lit8 v16, v16, 0x1

    move v8, v4

    move-object/from16 v4, v22

    move-object/from16 v9, v23

    goto :goto_23

    :cond_2b
    move-object/from16 v22, v4

    move v4, v8

    move-object/from16 v23, v9

    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v0

    move/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v4, v22

    goto :goto_22

    :cond_2c
    move-object/from16 v23, v9

    int-to-long v8, v14

    mul-long/2addr v5, v8

    move-object v2, v10

    move-object v1, v11

    move-object v15, v12

    move-object/from16 v0, v23

    goto/16 :goto_2f

    .line 143
    :cond_2d
    new-array v0, v3, [J

    .line 144
    new-array v8, v3, [I

    .line 145
    new-array v15, v3, [J

    move/from16 v17, v5

    .line 146
    new-array v5, v3, [I

    move/from16 v24, v6

    move-object/from16 v19, v9

    move v1, v14

    move/from16 v6, v17

    const/4 v9, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v17, v7

    move v14, v12

    const/4 v7, 0x0

    move/from16 v43, v16

    move/from16 v16, v13

    move/from16 v13, v43

    :goto_24
    const-string v12, "AtomParsers"

    if-ge v7, v3, :cond_36

    const/16 v25, 0x1

    :goto_25
    if-nez v18, :cond_2e

    .line 147
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v25

    if-eqz v25, :cond_2e

    move/from16 v26, v13

    move/from16 v27, v14

    .line 148
    iget-wide v13, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v28, v3

    .line 149
    iget v3, v11, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v18, v3

    move-wide/from16 v22, v13

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v3, v28

    goto :goto_25

    :cond_2e
    move/from16 v28, v3

    move/from16 v26, v13

    move/from16 v27, v14

    if-nez v25, :cond_2f

    const-string v1, "Unexpected end of chunk data"

    .line 150
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 152
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 153
    invoke-static {v15, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 154
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v3, v7

    goto/16 :goto_29

    :cond_2f
    if-eqz v2, :cond_31

    :goto_26
    if-nez v42, :cond_30

    if-lez v16, :cond_30

    .line 155
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v42

    .line 156
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v41

    add-int/lit8 v16, v16, -0x1

    goto :goto_26

    :cond_30
    add-int/lit8 v42, v42, -0x1

    :cond_31
    move/from16 v3, v41

    .line 157
    aput-wide v22, v0, v7

    .line 158
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v12

    aput v12, v8, v7

    .line 159
    aget v12, v8, v7

    if-le v12, v9, :cond_32

    .line 160
    aget v9, v8, v7

    :cond_32
    int-to-long v12, v3

    add-long v12, v20, v12

    .line 161
    aput-wide v12, v15, v7

    if-nez v10, :cond_33

    const/4 v12, 0x1

    goto :goto_27

    :cond_33
    const/4 v12, 0x0

    .line 162
    :goto_27
    aput v12, v5, v7

    if-ne v7, v1, :cond_34

    const/4 v12, 0x1

    .line 163
    aput v12, v5, v7

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_34

    .line 164
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    sub-int/2addr v1, v12

    :cond_34
    move/from16 v12, v27

    int-to-long v13, v12

    add-long v20, v20, v13

    add-int/lit8 v13, v26, -0x1

    if-nez v13, :cond_35

    if-lez v24, :cond_35

    .line 166
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 167
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v24, v24, -0x1

    move v14, v13

    move v13, v12

    goto :goto_28

    :cond_35
    move v14, v12

    .line 168
    :goto_28
    aget v12, v8, v7

    move-object/from16 v25, v0

    move/from16 v27, v1

    int-to-long v0, v12

    add-long v22, v22, v0

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v41, v3

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v3, v28

    goto/16 :goto_24

    :cond_36
    move-object/from16 v25, v0

    move/from16 v28, v3

    move/from16 v26, v13

    :goto_29
    move/from16 v1, v18

    move/from16 v4, v41

    int-to-long v10, v4

    add-long v10, v20, v10

    if-eqz v2, :cond_38

    :goto_2a
    if-lez v16, :cond_38

    .line 169
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x0

    goto :goto_2b

    .line 170
    :cond_37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_2a

    :cond_38
    const/4 v2, 0x1

    :goto_2b
    if-nez v6, :cond_3a

    if-nez v26, :cond_3a

    if-nez v1, :cond_3a

    if-nez v24, :cond_3a

    move/from16 v4, v42

    if-nez v4, :cond_3b

    if-nez v2, :cond_39

    goto :goto_2c

    :cond_39
    move-object/from16 v16, v0

    move-object/from16 v7, v17

    goto :goto_2e

    :cond_3a
    move/from16 v4, v42

    :cond_3b
    :goto_2c
    move-object/from16 v7, v17

    .line 171
    iget v13, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    if-nez v2, :cond_3c

    const-string v2, ", ctts invalid"

    goto :goto_2d

    :cond_3c
    const-string v2, ""

    .line 172
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit16 v14, v14, 0x106

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": remainingSynchronizationSamples "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remainingSamplesInChunk "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    move-object v2, v5

    move-object v1, v8

    move/from16 v17, v9

    move-wide v5, v10

    move-object/from16 v0, v16

    .line 174
    :goto_2f
    iget-wide v12, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v10, 0xf4240

    move-wide v8, v5

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 175
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-nez v4, :cond_3d

    .line 176
    iget-wide v3, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v15, v3, v4}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    .line 177
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v6, v3

    move-object v8, v0

    move-object v9, v1

    move/from16 v10, v17

    move-object v11, v15

    move-object v12, v2

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v4, p1

    :goto_30
    move-object v2, v3

    goto/16 :goto_19

    .line 178
    :cond_3d
    array-length v4, v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_41

    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v4, v8, :cond_41

    array-length v4, v15

    const/4 v8, 0x2

    if-lt v4, v8, :cond_41

    .line 179
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 180
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 181
    aget-wide v9, v4, v8

    .line 182
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v18, v4, v8

    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v13, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    .line 183
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    add-long/2addr v11, v9

    .line 184
    array-length v4, v15

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    const/4 v13, 0x4

    .line 185
    invoke-static {v13, v8, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v14

    move/from16 v16, v3

    .line 186
    array-length v3, v15

    sub-int/2addr v3, v13

    .line 187
    invoke-static {v3, v8, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    .line 188
    aget-wide v18, v15, v8

    cmp-long v4, v18, v9

    if-gtz v4, :cond_3e

    aget-wide v13, v15, v14

    cmp-long v4, v9, v13

    if-gez v4, :cond_3e

    aget-wide v3, v15, v3

    cmp-long v3, v3, v11

    if-gez v3, :cond_3e

    cmp-long v3, v11, v5

    if-gtz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_31

    :cond_3e
    const/4 v3, 0x0

    :goto_31
    if-eqz v3, :cond_40

    sub-long v18, v5, v11

    const/4 v3, 0x0

    .line 189
    aget-wide v11, v15, v3

    sub-long v20, v9, v11

    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v3, v3

    iget-wide v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v3

    move-wide/from16 v24, v8

    .line 190
    invoke-static/range {v20 .. v25}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 191
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v8

    iget-wide v10, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    .line 192
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-nez v12, :cond_3f

    cmp-long v12, v8, v10

    if-eqz v12, :cond_40

    :cond_3f
    const-wide/32 v10, 0x7fffffff

    cmp-long v12, v3, v10

    if-gtz v12, :cond_40

    cmp-long v10, v8, v10

    if-gtz v10, :cond_40

    long-to-int v3, v3

    move-object/from16 v4, p1

    .line 193
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v3, v8

    .line 194
    iput v3, v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 195
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v15, v5, v6}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    .line 196
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v8, v3, v5

    const-wide/32 v10, 0xf4240

    iget-wide v12, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 197
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 198
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v6, v3

    move-object v8, v0

    move-object v9, v1

    move/from16 v10, v17

    move-object v11, v15

    move-object v12, v2

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_30

    :cond_40
    move-object/from16 v4, p1

    goto :goto_32

    :cond_41
    move-object/from16 v4, p1

    move/from16 v16, v3

    .line 199
    :goto_32
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v3

    const/4 v9, 0x1

    const/16 v18, 0x0

    if-ne v8, v9, :cond_43

    aget-wide v8, v3, v18

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_43

    .line 200
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 201
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    aget-wide v8, v3, v18

    move/from16 v3, v18

    .line 203
    :goto_33
    array-length v10, v15

    if-ge v3, v10, :cond_42

    .line 204
    aget-wide v10, v15, v3

    sub-long v19, v10, v8

    const-wide/32 v21, 0xf4240

    iget-wide v10, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v10

    .line 205
    invoke-static/range {v19 .. v24}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    aput-wide v10, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_42
    sub-long v19, v5, v8

    const-wide/32 v21, 0xf4240

    .line 206
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v5

    .line 207
    invoke-static/range {v19 .. v24}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 208
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v6, v3

    move-object v8, v0

    move-object v9, v1

    move/from16 v10, v17

    move-object v11, v15

    move-object v12, v2

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    move-object v2, v3

    :goto_34
    move-object/from16 v0, v40

    goto/16 :goto_41

    .line 209
    :cond_43
    iget v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_44

    const/4 v10, 0x1

    goto :goto_35

    :cond_44
    move/from16 v10, v18

    .line 210
    :goto_35
    array-length v5, v3

    new-array v5, v5, [I

    .line 211
    array-length v3, v3

    new-array v3, v3, [I

    .line 212
    iget-object v6, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 213
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v18

    move v9, v8

    move v11, v9

    move v12, v11

    .line 214
    :goto_36
    iget-object v13, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v14, v13

    if-ge v8, v14, :cond_48

    move-object v14, v0

    move-object/from16 v19, v1

    .line 215
    aget-wide v0, v6, v8

    const-wide/16 v20, -0x1

    cmp-long v20, v0, v20

    if-eqz v20, :cond_47

    .line 216
    aget-wide v21, v13, v8

    move-object/from16 v20, v14

    iget-wide v13, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v27, v11

    move/from16 v28, v12

    iget-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v23, v13

    move-wide/from16 v25, v11

    .line 217
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    const/4 v13, 0x1

    .line 218
    invoke-static {v15, v0, v1, v13}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZ)I

    move-result v14

    aput v14, v5, v8

    add-long/2addr v0, v11

    .line 219
    invoke-static {v15, v0, v1, v10}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZ)I

    move-result v0

    aput v0, v3, v8

    .line 220
    :goto_37
    aget v0, v5, v8

    aget v1, v3, v8

    if-ge v0, v1, :cond_45

    aget v0, v5, v8

    aget v0, v2, v0

    and-int/2addr v0, v13

    if-nez v0, :cond_45

    .line 221
    aget v0, v5, v8

    add-int/2addr v0, v13

    aput v0, v5, v8

    goto :goto_37

    .line 222
    :cond_45
    aget v0, v3, v8

    aget v1, v5, v8

    sub-int/2addr v0, v1

    add-int/2addr v0, v9

    .line 223
    aget v1, v5, v8

    move/from16 v11, v27

    if-eq v11, v1, :cond_46

    move v1, v13

    goto :goto_38

    :cond_46
    move/from16 v1, v18

    :goto_38
    or-int v1, v1, v28

    .line 224
    aget v9, v3, v8

    move v12, v1

    move v11, v9

    move v9, v0

    goto :goto_39

    :cond_47
    move/from16 v28, v12

    move-object/from16 v20, v14

    const/4 v13, 0x1

    :goto_39
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    goto :goto_36

    :cond_48
    move-object/from16 v20, v0

    move-object/from16 v19, v1

    move/from16 v28, v12

    move/from16 v0, v16

    const/4 v13, 0x1

    if-eq v9, v0, :cond_49

    goto :goto_3a

    :cond_49
    move/from16 v13, v18

    :goto_3a
    or-int v0, v28, v13

    if-eqz v0, :cond_4a

    .line 225
    new-array v1, v9, [J

    move-object v8, v1

    goto :goto_3b

    :cond_4a
    move-object/from16 v8, v20

    :goto_3b
    if-eqz v0, :cond_4b

    .line 226
    new-array v1, v9, [I

    goto :goto_3c

    :cond_4b
    move-object/from16 v1, v19

    :goto_3c
    if-eqz v0, :cond_4c

    move/from16 v17, v18

    :cond_4c
    if-eqz v0, :cond_4d

    .line 227
    new-array v6, v9, [I

    move-object v12, v6

    goto :goto_3d

    :cond_4d
    move-object v12, v2

    .line 228
    :goto_3d
    new-array v11, v9, [J

    move/from16 v10, v17

    move/from16 v6, v18

    move v9, v6

    const-wide/16 v13, 0x0

    .line 229
    :goto_3e
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    if-ge v6, v4, :cond_51

    .line 230
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v16, v4, v6

    .line 231
    aget v4, v5, v6

    move-object/from16 v27, v5

    .line 232
    aget v5, v3, v6

    if-eqz v0, :cond_4e

    move-object/from16 v28, v3

    sub-int v3, v5, v4

    move/from16 v29, v10

    move-object/from16 v10, v20

    .line 233
    invoke-static {v10, v4, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v10, v19

    .line 234
    invoke-static {v10, v4, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v2, v4, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3f

    :cond_4e
    move-object/from16 v28, v3

    move/from16 v29, v10

    move-object/from16 v10, v19

    :goto_3f
    move/from16 v3, v29

    :goto_40
    if-ge v4, v5, :cond_50

    const-wide/32 v23, 0xf4240

    move/from16 v30, v5

    move/from16 v19, v6

    .line 236
    iget-wide v5, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v13

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 237
    aget-wide v21, v15, v4

    move-object/from16 v31, v12

    move-wide/from16 v23, v13

    sub-long v12, v21, v16

    move-object/from16 v21, v15

    const-wide/16 v14, 0x0

    .line 238
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v32

    const-wide/32 v34, 0xf4240

    iget-wide v12, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v36, v12

    .line 239
    invoke-static/range {v32 .. v37}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v5, v12

    .line 240
    aput-wide v5, v11, v9

    if-eqz v0, :cond_4f

    .line 241
    aget v5, v1, v9

    if-le v5, v3, :cond_4f

    .line 242
    aget v3, v10, v4

    :cond_4f
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v19

    move-object/from16 v15, v21

    move-wide/from16 v13, v23

    move/from16 v5, v30

    move-object/from16 v12, v31

    goto :goto_40

    :cond_50
    move/from16 v19, v6

    move-object/from16 v31, v12

    move-wide/from16 v23, v13

    move-object/from16 v21, v15

    const-wide/16 v14, 0x0

    .line 243
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v4, v4, v19

    add-long v4, v23, v4

    add-int/lit8 v6, v19, 0x1

    move-wide v13, v4

    move-object/from16 v19, v10

    move-object/from16 v15, v21

    move-object/from16 v5, v27

    move v10, v3

    move-object/from16 v3, v28

    goto/16 :goto_3e

    :cond_51
    move/from16 v29, v10

    move-object/from16 v31, v12

    move-wide/from16 v23, v13

    const-wide/32 v2, 0xf4240

    .line 244
    iget-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v23

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    .line 245
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 246
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v6, v2

    move-object v9, v1

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_34

    .line 247
    :goto_41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_42
    add-int/lit8 v4, v39, 0x1

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_52
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 248
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_53
    move-object v0, v2

    return-object v0
.end method
