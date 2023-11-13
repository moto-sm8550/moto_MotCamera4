.class public final Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;
.super Ljava/io/InputStream;
.source "ByteOrderedDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field public mByteOrder:Ljava/nio/ByteOrder;

.field public mDataInputStream:Ljava/io/DataInputStream;

.field public final mLength:I

.field public mPosition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public final readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    return p0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-byte p0, p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result p0

    return p0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 7
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result p0

    array-length p1, p1

    if-ne p0, p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t read up to the length of buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t read up to the length of buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    shl-int/lit8 p0, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    .line 8
    :cond_0
    sget-object v5, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_1

    shl-int/lit8 p0, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    add-int/2addr p0, v0

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr p0, v0

    add-int/2addr p0, v3

    return p0

    .line 9
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 10
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "ByteOrderedDataInputStream"

    const-string v0, "Currently unsupported"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final readLong()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v2, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v1, v2, :cond_3

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 5
    iget-object v3, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 6
    iget-object v4, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 7
    iget-object v5, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 8
    iget-object v6, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 9
    iget-object v7, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 10
    iget-object v8, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    or-int v9, v1, v2

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v7

    or-int/2addr v9, v8

    if-ltz v9, :cond_2

    .line 11
    iget-object v9, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v10, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0x30

    const/16 v16, 0x38

    if-ne v9, v10, :cond_0

    int-to-long v8, v8

    shl-long v8, v8, v16

    int-to-long v11, v7

    shl-long/2addr v11, v15

    add-long/2addr v8, v11

    int-to-long v6, v6

    shl-long/2addr v6, v14

    add-long/2addr v8, v6

    int-to-long v5, v5

    shl-long/2addr v5, v13

    add-long/2addr v8, v5

    int-to-long v4, v4

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    add-long/2addr v8, v4

    int-to-long v3, v3

    const/16 v0, 0x10

    shl-long/2addr v3, v0

    add-long/2addr v8, v3

    int-to-long v2, v2

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    add-long/2addr v8, v2

    int-to-long v0, v1

    add-long/2addr v8, v0

    return-wide v8

    .line 12
    :cond_0
    sget-object v11, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v11, :cond_1

    int-to-long v0, v1

    shl-long v0, v0, v16

    int-to-long v11, v2

    shl-long/2addr v11, v15

    add-long/2addr v0, v11

    int-to-long v2, v3

    shl-long/2addr v2, v14

    add-long/2addr v0, v2

    int-to-long v2, v4

    shl-long/2addr v2, v13

    add-long/2addr v0, v2

    int-to-long v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v7

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v8

    add-long/2addr v0, v2

    return-wide v0

    .line 13
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid byte order: "

    .line 14
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 17
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 p0, v1, 0x8

    add-int/2addr p0, v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 p0, v0, 0x8

    add-int/2addr p0, v1

    :goto_0
    int-to-short p0, p0

    return p0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 8
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    return p0
.end method

.method public final readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 2
    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    shl-int/lit8 p0, v1, 0x8

    add-int/2addr p0, v0

    return p0

    .line 6
    :cond_0
    sget-object v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    shl-int/lit8 p0, v0, 0x8

    add-int/2addr p0, v1

    return p0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    .line 8
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_0
    long-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p0

    if-ne p0, p1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t seek up to the byteCount"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final skipBytes(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mLength:I

    iget v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mPosition:I

    return v0
.end method
