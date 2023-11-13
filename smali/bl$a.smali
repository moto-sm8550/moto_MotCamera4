.class final Lbl$a;
.super Lbl;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbl;-><init>()V

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    .line 3
    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 4
    iput-object p1, p0, Lbl$a;->d:[B

    .line 5
    iput p2, p0, Lbl$a;->f:I

    .line 6
    iput v2, p0, Lbl$a;->e:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length p1, p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 9
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 9
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lbl$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lbl$a;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lbl$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lbl$a;->f:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 60
    iget v0, p0, Lbl$a;->e:I

    iget p0, p0, Lbl$a;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Lbl$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lbl$a;->f:I

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lbl$a;->b(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 30
    invoke-virtual {p0, v0, v1}, Lbl$a;->a(J)V

    return-void
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lbl$a;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lbl$a;->a(J)V

    return-void
.end method

.method public final a(ILba;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 9
    invoke-virtual {p0, p2}, Lbl$a;->a(Lba;)V

    return-void
.end method

.method public final a(ILdh;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 19
    invoke-virtual {p0, v0, v1}, Lbl$a;->a(II)V

    const/4 v2, 0x2

    .line 20
    invoke-virtual {p0, v2, p1}, Lbl$a;->c(II)V

    .line 21
    invoke-virtual {p0, v1, v2}, Lbl$a;->a(II)V

    .line 22
    invoke-virtual {p0, p2}, Lbl$a;->a(Ldh;)V

    const/4 p1, 0x4

    .line 23
    invoke-virtual {p0, v0, p1}, Lbl$a;->a(II)V

    return-void
.end method

.method public final a(ILdh;Ldw;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 13
    move-object p1, p2

    check-cast p1, Lan;

    .line 14
    invoke-virtual {p1}, Lan;->k()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-interface {p3, p1}, Ldw;->d(Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lan;->a(I)V

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lbl$a;->b(I)V

    .line 18
    iget-object p0, p0, Lbl;->c:Lez;

    invoke-interface {p3, p2, p0}, Ldw;->a(Ljava/lang/Object;Lez;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 7
    invoke-virtual {p0, p2}, Lbl$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    int-to-byte p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lbl$a;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 31
    sget-boolean v0, Lbl;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lbl$a;->a()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v6, p0, Lbl$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lbl$a;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lep;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 35
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lbl$a;->d:[B

    iget v6, p0, Lbl$a;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lbl$a;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Lbl$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lbl$a;->f:I

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Lba;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lba;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lbl$a;->b(I)V

    .line 11
    invoke-virtual {p1, p0}, Lba;->a(Lax;)V

    return-void
.end method

.method public final a(Ldh;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ldh;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lbl$a;->b(I)V

    .line 25
    invoke-interface {p1, p0}, Ldh;->a(Lbl;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 40
    iget v0, p0, Lbl$a;->f:I

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 42
    invoke-static {v1}, Lbl;->g(I)I

    move-result v1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lbl;->g(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 44
    iput v1, p0, Lbl$a;->f:I

    .line 45
    iget-object v3, p0, Lbl$a;->d:[B

    invoke-virtual {p0}, Lbl$a;->a()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Les;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 46
    iput v0, p0, Lbl$a;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 47
    invoke-virtual {p0, v3}, Lbl$a;->b(I)V

    .line 48
    iput v1, p0, Lbl$a;->f:I

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Les;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lbl$a;->b(I)V

    .line 51
    iget-object v1, p0, Lbl$a;->d:[B

    iget v2, p0, Lbl$a;->f:I

    invoke-virtual {p0}, Lbl$a;->a()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Les;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lbl$a;->f:I
    :try_end_0
    .catch Lew; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Lbl$b;

    invoke-direct {p1, p0}, Lbl$b;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v1

    move-object v7, v1

    .line 53
    iput v0, p0, Lbl$a;->f:I

    .line 54
    sget-object v2, Lbl;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.CodedOutputStream"

    const-string v5, "inefficientWriteStringNoTag"

    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    sget-object v0, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 56
    :try_start_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lbl$a;->b(I)V

    const/4 v0, 0x0

    .line 57
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbl$a;->a([BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbl$b; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_2
    move-exception p0

    .line 58
    throw p0

    :catch_3
    move-exception p0

    .line 59
    new-instance p1, Lbl$b;

    invoke-direct {p1, p0}, Lbl$b;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lbl$a;->c([BII)V

    return-void
.end method

.method public final b(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11
    sget-boolean v0, Lbl;->b:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lau;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lbl$a;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lep;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lep;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lep;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    .line 21
    :cond_3
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lep;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    .line 22
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lep;->a([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    .line 23
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 24
    :cond_5
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lbl$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lbl$a;->f:I

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lbl$a;->a(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lbl$a;->b(J)V

    return-void
.end method

.method public final b(ILba;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v0, v1}, Lbl$a;->a(II)V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p0, v2, p1}, Lbl$a;->c(II)V

    .line 9
    invoke-virtual {p0, v1, p2}, Lbl$a;->a(ILba;)V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, v0, p1}, Lbl$a;->a(II)V

    return-void
.end method

.method public final b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 28
    iput v1, p0, Lbl$a;->f:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 29
    iput v2, p0, Lbl$a;->f:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 30
    iput v1, p0, Lbl$a;->f:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 31
    iput v2, p0, Lbl$a;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 32
    iput v1, p0, Lbl$a;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 33
    iput v2, p0, Lbl$a;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 34
    iput v1, p0, Lbl$a;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Lbl$b;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lbl$a;->f:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p3}, Lbl$a;->b(I)V

    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lbl$a;->c([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lbl$a;->d:[B

    iget v1, p0, Lbl$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl$a;->f:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 4
    iput v1, p0, Lbl$a;->f:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Lbl$a;->f:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 6
    iput v1, p0, Lbl$a;->f:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lbl$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lbl$a;->f:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lbl$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lbl$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lbl$a;->b(I)V

    return-void
.end method

.method public final d(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lbl$a;->a(II)V

    .line 2
    invoke-virtual {p0, p2}, Lbl$a;->c(I)V

    return-void
.end method
