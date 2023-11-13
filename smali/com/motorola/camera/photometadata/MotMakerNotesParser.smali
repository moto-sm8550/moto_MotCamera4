.class public final Lcom/motorola/camera/photometadata/MotMakerNotesParser;
.super Ljava/lang/Object;
.source "MotMakerNotesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;,
        Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;
    }
.end annotation


# static fields
.field public static final AF_STATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

.field public static final VENDOR_SIGNATURE:[B


# instance fields
.field public final mByteOrder:Ljava/nio/ByteOrder;

.field public final mMakerNotesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->VENDOR_SIGNATURE:[B

    const-string v0, "\\(state:pos\\): [0-9]+:(.*)"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->AF_STATE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        0x4ft
        0x54t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_MAKERNOTE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAMERA_APP_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CONTENT_AI_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_IMAGER_TUNING_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    new-instance v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 5
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    iput-object v4, v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v4

    .line 10
    new-instance v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;-><init>(S)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 11
    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    .line 12
    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 13
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    aget v4, v6, v4

    mul-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 14
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry doesn\'t begin with \"EM\""

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 15
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 16
    :cond_3
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v0

    .line 17
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAMERA_APP_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.motorola.camera3"

    .line 18
    invoke-static {v4, v3, v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendInfo(Ljava/lang/String;Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Lcom/motorola/camera/shared/PackageUtility;Ljava/io/OutputStream;)V

    .line 19
    :cond_4
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CONTENT_AI_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendInfo(Ljava/lang/String;Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Lcom/motorola/camera/shared/PackageUtility;Ljava/io/OutputStream;)V

    .line 21
    :cond_5
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_IMAGER_TUNING_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getImagerTuningName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendInfo(Ljava/lang/String;Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Lcom/motorola/camera/shared/PackageUtility;Ljava/io/OutputStream;)V

    .line 23
    :cond_6
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_MAKERNOTE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    .line 24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 25
    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "MotMakerNotesParser"

    const-string v0, "Error: unable to write app info to output stream"

    .line 26
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static appendInfo(Ljava/lang/String;Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Lcom/motorola/camera/shared/PackageUtility;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p2, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionMap:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, p3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 4
    array-length p3, p0

    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_2

    .line 5
    iget p3, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    if-gt p3, v0, :cond_1

    const/16 v0, -0x8000

    if-lt p3, v0, :cond_1

    const/16 p3, 0x45

    .line 6
    invoke-virtual {p2, p3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p3, 0x4d

    .line 7
    invoke-virtual {p2, p3}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 8
    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    int-to-short p1, p1

    .line 9
    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 11
    array-length p1, p0

    int-to-short p1, p1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 12
    invoke-virtual {p2, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag code value is not in Short type range."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Payload length value is not in Short type range."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readInt([BIZ)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 4
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    if-eqz p2, :cond_0

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static readShort([BIZ)S
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    if-eqz p2, :cond_0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    :goto_0
    int-to-short p0, p0

    return p0
.end method

.method public static readUint([BIZ)J
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 4
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    if-eqz p2, :cond_0

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    :goto_0
    or-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public static readUshort([BIZ)C
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    if-eqz p2, :cond_0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    :goto_0
    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final addEntryMarkerData([B)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 2
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3
    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    :goto_0
    const/4 v2, 0x7

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->available()I

    move-result v3

    if-le v3, v2, :cond_9

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v2

    const/16 v3, 0x45

    const-string v4, "MotMakerNotesParser"

    if-ne v2, v3, :cond_8

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v3

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 9
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    aget v6, v6, v3

    mul-int/2addr v6, v5

    .line 10
    iget-object v7, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    if-eqz v7, :cond_2

    .line 11
    new-array v4, v6, [B

    .line 12
    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    goto/16 :goto_7

    :cond_2
    packed-switch v3, :pswitch_data_0

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 13
    :pswitch_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    new-instance v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v10, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8, v10}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_2
    if-ge v9, v5, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v10

    .line 16
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v15, 0x28

    const/16 v16, 0x20

    const/16 v17, 0x18

    const/16 v18, 0x10

    const/16 v19, 0x8

    if-ne v8, v12, :cond_3

    .line 17
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    long-to-int v12, v10

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 18
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v19

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 19
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v18

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 20
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v17

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 21
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v16

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 22
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v15

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 23
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const/16 v12, 0x30

    ushr-long v12, v10, v12

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 24
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const/16 v13, 0x38

    ushr-long/2addr v10, v13

    long-to-int v10, v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v8, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_3
    const/16 v13, 0x38

    .line 25
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v14, :cond_4

    .line 26
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v13, v10, v13

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write(I)V

    .line 27
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const/16 v12, 0x30

    ushr-long v12, v10, v12

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 28
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v12, v10, v15

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 29
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v12, v10, v16

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 30
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v12, v10, v17

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 31
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v12, v10, v18

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 32
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    ushr-long v12, v10, v19

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write(I)V

    .line 33
    iget-object v8, v7, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    long-to-int v10, v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v8, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 34
    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_6

    .line 35
    :pswitch_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    new-instance v6, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v8, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_4
    if-ge v9, v5, :cond_6

    .line 37
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 38
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_7

    .line 39
    :pswitch_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    new-instance v6, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v8, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_5
    if-ge v9, v5, :cond_7

    .line 41
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 42
    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_7

    .line 43
    :pswitch_3
    new-array v4, v6, [B

    .line 44
    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    goto :goto_7

    :goto_6
    const-string v7, "Unknown type, update the parser"

    .line 45
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 46
    :goto_7
    new-instance v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    invoke-direct {v6, v3, v5, v4}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    .line 47
    iget-object v3, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    :goto_8
    const-string v0, "Unable to parse, bad entry markers"

    .line 48
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    .line 2
    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    if-eqz p1, :cond_16

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 5
    :goto_0
    iget v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    const/16 v3, 0x2c

    const/16 v4, 0x80

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 6
    :pswitch_1
    iget-object v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt([BIZ)I

    move-result p0

    .line 8
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    .line 11
    invoke-static {v0, v4, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt([BIZ)I

    move-result v5

    .line 12
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v4, v4, 0x4

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_2

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 16
    :pswitch_2
    iget-object v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_4

    .line 17
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt([BIZ)I

    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 19
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_2
    if-ge v1, p1, :cond_6

    .line 20
    invoke-static {v0, v4, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readInt([BIZ)I

    move-result v5

    add-int/lit8 v4, v4, 0x4

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_5

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 24
    :pswitch_3
    iget-object v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_7

    .line 25
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readShort([BIZ)S

    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 27
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_3
    if-ge v1, p1, :cond_9

    .line 28
    invoke-static {v0, v4, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readShort([BIZ)S

    move-result v5

    add-int/lit8 v4, v4, 0x2

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_8

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 32
    :pswitch_4
    iget-object p0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_a

    .line 33
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 35
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_4
    if-ge v1, p1, :cond_c

    .line 36
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    add-int/2addr v4, v2

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_b

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 39
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 40
    :pswitch_5
    iget-object v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_d

    .line 41
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUint([BIZ)J

    move-result-wide p0

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 43
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_5
    if-ge v1, p1, :cond_f

    .line 44
    invoke-static {v0, v4, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUint([BIZ)J

    move-result-wide v5

    add-int/lit8 v4, v4, 0x4

    .line 45
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_e

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 47
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .line 48
    :pswitch_6
    iget-object v0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_10

    .line 49
    invoke-static {v0, v1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUshort([BIZ)C

    move-result p0

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 51
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_6
    if-ge v1, p1, :cond_12

    .line 52
    invoke-static {v0, v4, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->readUshort([BIZ)C

    move-result v5

    add-int/lit8 v4, v4, 0x2

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_11

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 55
    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 56
    :pswitch_7
    :try_start_0
    iget-object p0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    .line 57
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 58
    :pswitch_8
    iget-object p0, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    if-ne p1, v2, :cond_13

    .line 59
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 61
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    :goto_7
    if-ge v1, p1, :cond_15

    .line 62
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    add-int/2addr v4, v2

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_14

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 65
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    move-object v0, p0

    goto :goto_a

    :catch_0
    :cond_16
    :goto_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final parse([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3
    iput-object v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 4
    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    .line 5
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v5, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v2, "MOT"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 9
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v7

    .line 13
    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mLookup:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 14
    sget-object v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    const/16 v10, 0xd

    if-lt v6, v10, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    goto :goto_3

    .line 16
    :cond_0
    aget v9, v9, v6

    mul-int/2addr v9, v7

    .line 17
    new-array v10, v9, [B

    if-le v9, v1, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 19
    :try_start_0
    invoke-static {p1, v11, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    .line 20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " tag:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "MotMakerNotesParser"

    invoke-static {v11, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_1
    if-ge v8, v9, :cond_2

    .line 21
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v11

    aput-byte v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    rsub-int/lit8 v8, v8, 0x4

    .line 22
    invoke-virtual {v0, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    .line 23
    :goto_2
    new-instance v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    invoke-direct {v8, v6, v7, v10}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    .line 24
    iget-object v6, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 25
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not Motorola MakerNotes Format: "

    .line 26
    invoke-static {p1, v3}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
