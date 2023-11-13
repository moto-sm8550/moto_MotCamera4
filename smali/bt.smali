.class public final Lbt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Lbt;


# instance fields
.field public final a:Ldx;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbt;-><init>(B)V

    sput-object v0, Lbt;->d:Lbt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lbt;->c:Z

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Ldx;->a(I)Ldx;

    move-result-object v0

    iput-object v0, p0, Lbt;->a:Ldx;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dummy"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lbt;->c:Z

    .line 6
    invoke-static {p1}, Ldx;->a(I)Ldx;

    move-result-object p1

    iput-object p1, p0, Lbt;->a:Ldx;

    .line 7
    invoke-virtual {p0}, Lbt;->a()V

    return-void
.end method

.method public static a(Lex;ILjava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "number",
            "value"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lbl;->e(I)I

    move-result p1

    .line 99
    sget-object v0, Lex;->j:Lex;

    if-ne p0, v0, :cond_0

    .line 100
    move-object v0, p2

    check-cast v0, Ldh;

    invoke-static {v0}, Lcc;->a(Ldh;)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 101
    :cond_0
    invoke-static {p0, p2}, Lbt;->b(Lex;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 31
    instance-of v0, p0, Ldo;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Ldo;

    invoke-interface {p0}, Ldo;->a()Ldo;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, [B

    .line 35
    array-length v0, p0

    new-array v0, v0, [B

    .line 36
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static a(Lbl;Lex;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "output",
            "type",
            "number",
            "value"
        }
    .end annotation

    .line 57
    sget-object v0, Lex;->j:Lex;

    if-ne p1, v0, :cond_1

    .line 58
    check-cast p3, Ldh;

    invoke-static {p3}, Lcc;->a(Ldh;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, p2, v0}, Lbl;->a(II)V

    .line 60
    invoke-interface {p3, p0}, Ldh;->a(Lbl;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p2, v0}, Lbl;->a(II)V

    .line 62
    invoke-interface {p3, p0}, Ldh;->a(Lbl;)V

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, p2, p1}, Lbl;->a(II)V

    return-void

    .line 64
    :cond_1
    iget v0, p1, Lex;->t:I

    .line 65
    invoke-virtual {p0, p2, v0}, Lbl;->a(II)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 67
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lbl;->c(J)V

    return-void

    .line 68
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->d(I)V

    return-void

    .line 69
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 70
    invoke-virtual {p0, p1, p2}, Lbl;->b(J)V

    return-void

    .line 71
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lbl;->c(I)V

    return-void

    .line 73
    :pswitch_4
    instance-of p1, p3, Lcd;

    if-eqz p1, :cond_2

    .line 74
    check-cast p3, Lcd;

    invoke-interface {p3}, Lcd;->a()I

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Lbl;->a(I)V

    return-void

    .line 76
    :cond_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Lbl;->a(I)V

    goto/16 :goto_0

    .line 78
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->b(I)V

    return-void

    .line 79
    :pswitch_6
    instance-of p1, p3, Lba;

    if-eqz p1, :cond_3

    .line 80
    check-cast p3, Lba;

    invoke-virtual {p0, p3}, Lbl;->a(Lba;)V

    return-void

    .line 81
    :cond_3
    check-cast p3, [B

    const/4 p1, 0x0

    .line 82
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lbl;->b([BII)V

    return-void

    .line 83
    :pswitch_7
    check-cast p3, Ldh;

    invoke-virtual {p0, p3}, Lbl;->a(Ldh;)V

    return-void

    .line 84
    :pswitch_8
    check-cast p3, Ldh;

    .line 85
    invoke-interface {p3, p0}, Ldh;->a(Lbl;)V

    return-void

    .line 86
    :pswitch_9
    instance-of p1, p3, Lba;

    if-eqz p1, :cond_4

    .line 87
    check-cast p3, Lba;

    invoke-virtual {p0, p3}, Lbl;->a(Lba;)V

    return-void

    .line 88
    :cond_4
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lbl;->a(Ljava/lang/String;)V

    return-void

    .line 89
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->a(Z)V

    return-void

    .line 90
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->c(I)V

    return-void

    .line 91
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lbl;->b(J)V

    return-void

    .line 92
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->a(I)V

    return-void

    .line 93
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lbl;->a(J)V

    return-void

    .line 94
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 95
    invoke-virtual {p0, p1, p2}, Lbl;->a(J)V

    return-void

    .line 96
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lbl;->a(F)V

    return-void

    .line 97
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lbl;->a(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lex;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lcc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p0, p0, Lex;->s:Lfa;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 21
    :pswitch_0
    instance-of p0, p1, Ldh;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcn;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 22
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcd;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 23
    :pswitch_2
    instance-of p0, p1, Lba;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    .line 24
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 25
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 26
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 27
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 28
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 29
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lex;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lbl;->f(J)I

    move-result p0

    return p0

    .line 26
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lbl;->h(I)I

    move-result p0

    return p0

    .line 27
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lbl;->e()I

    move-result p0

    return p0

    .line 28
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lbl;->c()I

    move-result p0

    return p0

    .line 29
    :pswitch_4
    instance-of p0, p1, Lcd;

    if-eqz p0, :cond_0

    .line 30
    check-cast p1, Lcd;

    invoke-interface {p1}, Lcd;->a()I

    move-result p0

    invoke-static {p0}, Lbl;->i(I)I

    move-result p0

    return p0

    .line 31
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lbl;->i(I)I

    move-result p0

    return p0

    .line 32
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lbl;->g(I)I

    move-result p0

    return p0

    .line 33
    :pswitch_6
    instance-of p0, p1, Lba;

    if-eqz p0, :cond_1

    .line 34
    check-cast p1, Lba;

    invoke-static {p1}, Lbl;->b(Lba;)I

    move-result p0

    return p0

    .line 35
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lbl;->b([B)I

    move-result p0

    return p0

    .line 36
    :pswitch_7
    instance-of p0, p1, Lcn;

    if-eqz p0, :cond_2

    .line 37
    check-cast p1, Lcn;

    invoke-static {p1}, Lbl;->a(Lcs;)I

    move-result p0

    return p0

    .line 38
    :cond_2
    check-cast p1, Ldh;

    invoke-static {p1}, Lbl;->b(Ldh;)I

    move-result p0

    return p0

    .line 39
    :pswitch_8
    check-cast p1, Ldh;

    invoke-static {p1}, Lbl;->c(Ldh;)I

    move-result p0

    return p0

    .line 40
    :pswitch_9
    instance-of p0, p1, Lba;

    if-eqz p0, :cond_3

    .line 41
    check-cast p1, Lba;

    invoke-static {p1}, Lbl;->b(Lba;)I

    move-result p0

    return p0

    .line 42
    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lbl;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 43
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lbl;->h()I

    move-result p0

    return p0

    .line 44
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lbl;->b()I

    move-result p0

    return p0

    .line 45
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lbl;->d()I

    move-result p0

    return p0

    .line 46
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lbl;->f(I)I

    move-result p0

    return p0

    .line 47
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lbl;->e(J)I

    move-result p0

    return p0

    .line 48
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lbl;->d(J)I

    move-result p0

    return p0

    .line 49
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Lbl;->f()I

    move-result p0

    return p0

    .line 50
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Lbl;->g()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .line 12
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 13
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-interface {v0}, Lbs;->c()Lfa;

    move-result-object v2

    sget-object v3, Lfa;->i:Lfa;

    if-ne v2, v3, :cond_1

    .line 15
    invoke-interface {v0}, Lbs;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    invoke-interface {v0}, Lbs;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    instance-of v0, v1, Lcn;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbs;

    invoke-interface {p0}, Lbs;->a()I

    move-result p0

    check-cast v1, Lcn;

    .line 19
    invoke-static {p0, v1}, Lbl;->b(ILcs;)I

    move-result p0

    return p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbs;

    invoke-interface {p0}, Lbs;->a()I

    move-result p0

    check-cast v1, Ldh;

    .line 21
    invoke-static {p0, v1}, Lbl;->b(ILdh;)I

    move-result p0

    return p0

    .line 22
    :cond_1
    invoke-static {v0, v1}, Lbt;->c(Lbs;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c(Lbs;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Lbs;->b()Lex;

    move-result-object v0

    .line 16
    invoke-interface {p0}, Lbs;->a()I

    move-result v1

    .line 17
    invoke-interface {p0}, Lbs;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {p0}, Lbs;->e()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 19
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lbt;->b(Lex;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v1}, Lbl;->e(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 22
    invoke-static {v2}, Lbl;->j(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 23
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 24
    invoke-static {v0, v1, p1}, Lbt;->a(Lex;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 25
    :cond_3
    invoke-static {v0, v1, p1}, Lbt;->a(Lex;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 6
    invoke-interface {v0}, Lbs;->c()Lfa;

    move-result-object v1

    sget-object v2, Lfa;->i:Lfa;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 7
    invoke-interface {v0}, Lbs;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldh;

    .line 9
    invoke-interface {v0}, Ldj;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 11
    instance-of v0, p0, Ldh;

    if-eqz v0, :cond_2

    .line 12
    check-cast p0, Ldh;

    invoke-interface {p0}, Ldj;->n()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 13
    :cond_2
    instance-of p0, p0, Lcn;

    if-eqz p0, :cond_3

    return v3

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method


# virtual methods
.method public final a(Lbs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0, p1}, Ldx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Lcn;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcn;->a()Ldh;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbt;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbt;->a:Ldx;

    invoke-virtual {v0}, Ldx;->a()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lbt;->b:Z

    return-void
.end method

.method public final a(Lbs;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Lbs;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-interface {p1}, Lbs;->b()Lex;

    move-result-object v3

    invoke-static {v3, v2}, Lbt;->a(Lex;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    invoke-interface {p1}, Lbs;->b()Lex;

    move-result-object v0

    invoke-static {v0, p2}, Lbt;->a(Lex;Ljava/lang/Object;)V

    .line 15
    :goto_1
    instance-of v0, p2, Lcn;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lbt;->c:Z

    .line 17
    :cond_3
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0, p1, p2}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 38
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 39
    instance-of v1, p1, Lcn;

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcn;->a()Ldh;

    move-result-object p1

    .line 41
    :cond_0
    invoke-interface {v0}, Lbs;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p0, v0}, Lbt;->a(Lbs;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lbt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_2
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0, v0, v1}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_3
    invoke-interface {v0}, Lbs;->c()Lfa;

    move-result-object v1

    sget-object v2, Lfa;->i:Lfa;

    if-ne v1, v2, :cond_6

    .line 48
    invoke-virtual {p0, v0}, Lbt;->a(Lbs;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 49
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-static {p1}, Lbt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 50
    :cond_4
    instance-of v2, v1, Ldo;

    if-eqz v2, :cond_5

    .line 51
    invoke-interface {v0}, Lbs;->f()Ldo;

    move-result-object p1

    goto :goto_1

    .line 52
    :cond_5
    check-cast v1, Ldh;

    .line 53
    invoke-interface {v1}, Ldh;->p()Ldk;

    move-result-object v1

    check-cast p1, Ldh;

    invoke-interface {v0, v1, p1}, Lbs;->a(Ldk;Ldh;)Ldk;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ldk;->f()Ldh;

    move-result-object p1

    .line 55
    :goto_1
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0, v0, p1}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 56
    :cond_6
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-static {p1}, Lbt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final b()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbt;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcp;

    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0}, Ldx;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcp;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0}, Ldx;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lbs;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lbs;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lbs;->b()Lex;

    move-result-object v0

    invoke-static {v0, p2}, Lbt;->a(Lex;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1}, Lbt;->a(Lbs;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0, p1, v0}, Ldx;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 10
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lbt;->a:Ldx;

    invoke-virtual {v2}, Ldx;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lbt;->a:Ldx;

    invoke-virtual {v2, v1}, Ldx;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lbt;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0}, Ldx;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v1}, Lbt;->c(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lbt;

    invoke-direct {v0}, Lbt;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lbt;->a:Ldx;

    invoke-virtual {v2}, Ldx;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lbt;->a:Ldx;

    invoke-virtual {v2, v1}, Ldx;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbs;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbt;->a(Lbs;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lbt;->a:Ldx;

    invoke-virtual {v1}, Ldx;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbs;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lbt;->a(Lbs;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean p0, p0, Lbt;->c:Z

    iput-boolean p0, v0, Lbt;->c:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lbt;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lbt;

    .line 3
    iget-object p0, p0, Lbt;->a:Ldx;

    iget-object p1, p1, Lbt;->a:Ldx;

    invoke-virtual {p0, p1}, Ldx;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lbt;->a:Ldx;

    invoke-virtual {p0}, Ldx;->hashCode()I

    move-result p0

    return p0
.end method
