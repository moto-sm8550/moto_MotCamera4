.class public final Lel;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lel;


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:I

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lel;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lel;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lel;->a:Lel;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lel;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "tags",
            "objects",
            "isMutable"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lel;->e:I

    .line 4
    iput p1, p0, Lel;->b:I

    .line 5
    iput-object p2, p0, Lel;->c:[I

    .line 6
    iput-object p3, p0, Lel;->d:[Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lel;->f:Z

    return-void
.end method

.method public static a(Lel;Lel;)Lel;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .line 1
    iget v0, p0, Lel;->b:I

    iget v1, p1, Lel;->b:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lel;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lel;->c:[I

    iget v3, p0, Lel;->b:I

    iget v4, p1, Lel;->b:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lel;->d:[Ljava/lang/Object;

    iget p0, p0, Lel;->b:I

    iget p1, p1, Lel;->b:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lel;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lel;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lez;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "object",
            "writer"
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 13
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lez;->d(II)V

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcm;->d()Lcl;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 15
    :cond_1
    invoke-virtual {p2}, Lez;->a()I

    move-result p0

    sget v1, Lby$e;->k:I

    if-ne p0, v1, :cond_2

    .line 16
    invoke-virtual {p2, v0}, Lez;->a(I)V

    .line 17
    check-cast p1, Lel;

    invoke-virtual {p1, p2}, Lel;->a(Lez;)V

    .line 18
    invoke-virtual {p2, v0}, Lez;->b(I)V

    return-void

    .line 19
    :cond_2
    invoke-virtual {p2, v0}, Lez;->b(I)V

    .line 20
    check-cast p1, Lel;

    invoke-virtual {p1, p2}, Lel;->a(Lez;)V

    .line 21
    invoke-virtual {p2, v0}, Lez;->a(I)V

    return-void

    .line 22
    :cond_3
    check-cast p1, Lba;

    invoke-virtual {p2, v0, p1}, Lez;->a(ILba;)V

    return-void

    .line 23
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lez;->d(IJ)V

    return-void

    .line 24
    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lez;->a(IJ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 25
    iget v0, p0, Lel;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 26
    :goto_0
    iget v2, p0, Lel;->b:I

    if-ge v0, v2, :cond_6

    .line 27
    iget-object v2, p0, Lel;->c:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 28
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lbl;->i(II)I

    move-result v2

    goto :goto_1

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcm;->d()Lcl;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 30
    :cond_2
    invoke-static {v3}, Lbl;->e(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lel;

    .line 31
    invoke-virtual {v3}, Lel;->a()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_2

    .line 32
    :cond_3
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lba;

    invoke-static {v3, v2}, Lbl;->c(ILba;)I

    move-result v2

    goto :goto_1

    .line 33
    :cond_4
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lbl;->g(IJ)I

    move-result v2

    goto :goto_1

    .line 34
    :cond_5
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lbl;->e(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_6
    iput v1, p0, Lel;->e:I

    return v1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Lel;->f:Z

    if-eqz v0, :cond_2

    .line 37
    iget v0, p0, Lel;->b:I

    iget-object v1, p0, Lel;->c:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    .line 38
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lel;->c:[I

    .line 39
    iget-object v1, p0, Lel;->d:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lel;->d:[Ljava/lang/Object;

    .line 40
    :cond_1
    iget-object v0, p0, Lel;->c:[I

    iget v1, p0, Lel;->b:I

    aput p1, v0, v1

    .line 41
    iget-object p1, p0, Lel;->d:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 42
    iput v1, p0, Lel;->b:I

    return-void

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lez;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .line 7
    iget v0, p0, Lel;->b:I

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lez;->a()I

    move-result v0

    sget v1, Lby$e;->k:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Lel;->b:I

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lel;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lel;->a(ILjava/lang/Object;Lez;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    iget v0, p0, Lel;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 12
    iget-object v1, p0, Lel;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lel;->a(ILjava/lang/Object;Lez;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lel;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lel;

    .line 3
    iget v2, p0, Lel;->b:I

    iget v3, p1, Lel;->b:I

    if-ne v2, v3, :cond_8

    iget-object v3, p0, Lel;->c:[I

    iget-object v4, p1, Lel;->c:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    .line 4
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v2, :cond_8

    .line 5
    iget-object v2, p0, Lel;->d:[Ljava/lang/Object;

    iget-object p1, p1, Lel;->d:[Ljava/lang/Object;

    iget p0, p0, Lel;->b:I

    move v3, v1

    :goto_2
    if-ge v3, p0, :cond_6

    .line 6
    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move p0, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move p0, v0

    :goto_3
    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    return v0

    :cond_8
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lel;->b:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lel;->c:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    .line 3
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lel;->d:[Ljava/lang/Object;

    iget p0, p0, Lel;->b:I

    :goto_1
    if-ge v3, p0, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    .line 5
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method
