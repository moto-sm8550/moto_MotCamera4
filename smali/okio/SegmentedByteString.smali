.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>(Lokio/Buffer;I)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 2
    iget-wide v1, p1, Lokio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 3
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_1

    .line 4
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_0

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 7
    :cond_1
    new-array v0, v3, [[B

    iput-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 8
    new-array v0, v3, [I

    iput-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    .line 9
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    move v0, v1

    :goto_1
    if-ge v1, p2, :cond_3

    .line 10
    iget-object v2, p0, Lokio/SegmentedByteString;->segments:[[B

    iget-object v3, p1, Lokio/Segment;->data:[B

    aput-object v3, v2, v0

    .line 11
    iget v3, p1, Lokio/Segment;->limit:I

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_2

    move v1, p2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 12
    :goto_2
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    aput v1, v3, v0

    .line 13
    array-length v2, v2

    add-int/2addr v2, v0

    aput v4, v3, v2

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p1, Lokio/Segment;->shared:Z

    add-int/lit8 v0, v0, 0x1

    .line 15
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    .line 2
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lokio/SegmentedByteString;->rangeEquals(Lokio/ByteString;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getByte(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 2
    invoke-virtual {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 4
    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, p0

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 5
    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    return p0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    .line 4
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 5
    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1
    if-ge v6, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 6
    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 7
    :cond_2
    iput v3, p0, Lokio/ByteString;->hashCode:I

    return v3
.end method

.method public final hex()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final internalArray()[B
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final rangeEquals(I[BII)Z
    .locals 9

    const/4 v0, 0x0

    if-ltz p1, :cond_6

    .line 8
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_6

    if-ltz p3, :cond_6

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-lez p4, :cond_5

    if-nez v1, :cond_1

    move v3, v0

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    .line 11
    :goto_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    sub-int/2addr v4, v3

    add-int/2addr v4, v3

    sub-int/2addr v4, p1

    .line 12
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 13
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v6

    add-int/2addr v7, v1

    aget v5, v5, v7

    sub-int v3, p1, v3

    add-int/2addr v3, v5

    .line 14
    aget-object v5, v6, v1

    sget-object v6, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_3

    add-int v7, v6, v3

    .line 15
    aget-byte v7, v5, v7

    add-int v8, v6, p3

    aget-byte v8, p2, v8

    if-eq v7, v8, :cond_2

    move v2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/2addr p1, v4

    add-int/2addr p3, v4

    sub-int/2addr p4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_4
    return v0
.end method

.method public final rangeEquals(Lokio/ByteString;I)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-lez p2, :cond_3

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    .line 4
    :goto_1
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    .line 5
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    iget-object v6, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v8, v7

    add-int/2addr v8, v0

    aget v6, v6, v8

    sub-int v4, v2, v4

    add-int/2addr v4, v6

    .line 7
    aget-object v6, v7, v0

    invoke-virtual {p1, v3, v6, v4, v5}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/2addr v2, v5

    add-int/2addr v3, v5

    sub-int/2addr p2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final segment(I)I
    .locals 2

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    not-int p0, p0

    :goto_0
    return p0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final substring()Lokio/ByteString;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->substring()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final toByteArray()[B
    .locals 8

    .line 1
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 2
    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 4
    aget v4, v4, v2

    .line 5
    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toByteString()Lokio/ByteString;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final utf8()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object p0

    .line 2
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
