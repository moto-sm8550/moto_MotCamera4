.class Lbr;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lbr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lby$c;

    .line 4
    iget p0, p0, Lby$c;->b:I

    return p0
.end method

.method public a(Ljava/lang/Object;)Lbt;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 2
    check-cast p1, Lby$d;

    iget-object p0, p1, Lby$d;->d:Lbt;

    return-object p0
.end method

.method public a(Lbp;Ldh;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "defaultInstance",
            "number"
        }
    .end annotation

    .line 129
    invoke-virtual {p1, p2, p3}, Lbp;->a(Ldh;I)Lbo;

    move-result-object p0

    return-object p0
.end method

.method public a(Lez;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "extension"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lby$c;

    .line 6
    iget-boolean v0, p0, Lby$c;->d:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lby$c;->c:Lex;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    iget v0, p0, Lby$c;->b:I

    .line 10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 11
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 12
    invoke-static {v0, p2, p1, p0}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 13
    :pswitch_1
    iget v0, p0, Lby$c;->b:I

    .line 14
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 15
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 16
    invoke-static {v0, p2, p1, p0}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 17
    :pswitch_2
    iget v0, p0, Lby$c;->b:I

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 19
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 20
    invoke-static {v0, p2, p1, p0}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 21
    :pswitch_3
    iget v0, p0, Lby$c;->b:I

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 23
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 24
    invoke-static {v0, p2, p1, p0}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 25
    :pswitch_4
    iget v0, p0, Lby$c;->b:I

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 27
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 28
    invoke-static {v0, p2, p1, p0}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 29
    :pswitch_5
    iget v0, p0, Lby$c;->b:I

    .line 30
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 31
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 32
    invoke-static {v0, p2, p1, p0}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 33
    :pswitch_6
    iget p0, p0, Lby$c;->b:I

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 35
    invoke-static {p0, p2, p1}, Ldy;->b(ILjava/util/List;Lez;)V

    goto/16 :goto_1

    .line 36
    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget p0, p0, Lby$c;->b:I

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 40
    sget-object v2, Ldu;->a:Ldu;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v0

    .line 42
    invoke-static {p0, p2, p1, v0}, Ldy;->a(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_0

    .line 43
    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget p0, p0, Lby$c;->b:I

    .line 46
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 47
    sget-object v2, Ldu;->a:Ldu;

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v0

    .line 49
    invoke-static {p0, p2, p1, v0}, Ldy;->b(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_1

    .line 50
    :pswitch_9
    iget p0, p0, Lby$c;->b:I

    .line 51
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 52
    invoke-static {p0, p2, p1}, Ldy;->a(ILjava/util/List;Lez;)V

    goto/16 :goto_1

    .line 53
    :pswitch_a
    iget v0, p0, Lby$c;->b:I

    .line 54
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 55
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 56
    invoke-static {v0, p2, p1, p0}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 57
    :pswitch_b
    iget v0, p0, Lby$c;->b:I

    .line 58
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 59
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 60
    invoke-static {v0, p2, p1, p0}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 61
    :pswitch_c
    iget v0, p0, Lby$c;->b:I

    .line 62
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 63
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 64
    invoke-static {v0, p2, p1, p0}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 65
    :pswitch_d
    iget v0, p0, Lby$c;->b:I

    .line 66
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 67
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 68
    invoke-static {v0, p2, p1, p0}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 69
    :pswitch_e
    iget v0, p0, Lby$c;->b:I

    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 71
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 72
    invoke-static {v0, p2, p1, p0}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 73
    :pswitch_f
    iget v0, p0, Lby$c;->b:I

    .line 74
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 75
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 76
    invoke-static {v0, p2, p1, p0}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 77
    :pswitch_10
    iget v0, p0, Lby$c;->b:I

    .line 78
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 79
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 80
    invoke-static {v0, p2, p1, p0}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    .line 81
    :pswitch_11
    iget v0, p0, Lby$c;->b:I

    .line 82
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 83
    iget-boolean p0, p0, Lby$c;->e:Z

    .line 84
    invoke-static {v0, p2, p1, p0}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_1

    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lby$c;->c:Lex;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 87
    :pswitch_12
    iget p0, p0, Lby$c;->b:I

    .line 88
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->e(IJ)V

    return-void

    .line 89
    :pswitch_13
    iget p0, p0, Lby$c;->b:I

    .line 90
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->f(II)V

    return-void

    .line 91
    :pswitch_14
    iget p0, p0, Lby$c;->b:I

    .line 92
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->b(IJ)V

    return-void

    .line 93
    :pswitch_15
    iget p0, p0, Lby$c;->b:I

    .line 94
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->a(II)V

    return-void

    .line 95
    :pswitch_16
    iget p0, p0, Lby$c;->b:I

    .line 96
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->c(II)V

    return-void

    .line 97
    :pswitch_17
    iget p0, p0, Lby$c;->b:I

    .line 98
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->e(II)V

    return-void

    .line 99
    :pswitch_18
    iget p0, p0, Lby$c;->b:I

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lba;

    invoke-virtual {p1, p0, p2}, Lez;->a(ILba;)V

    return-void

    .line 101
    :pswitch_19
    iget p0, p0, Lby$c;->b:I

    .line 102
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 103
    sget-object v1, Ldu;->a:Ldu;

    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p0, v0, p2}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_1

    .line 106
    :pswitch_1a
    iget p0, p0, Lby$c;->b:I

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 108
    sget-object v1, Ldu;->a:Ldu;

    .line 109
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object p2

    .line 110
    invoke-virtual {p1, p0, v0, p2}, Lez;->b(ILjava/lang/Object;Ldw;)V

    return-void

    .line 111
    :pswitch_1b
    iget p0, p0, Lby$c;->b:I

    .line 112
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lez;->a(ILjava/lang/String;)V

    return-void

    .line 113
    :pswitch_1c
    iget p0, p0, Lby$c;->b:I

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->a(IZ)V

    return-void

    .line 115
    :pswitch_1d
    iget p0, p0, Lby$c;->b:I

    .line 116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->d(II)V

    return-void

    .line 117
    :pswitch_1e
    iget p0, p0, Lby$c;->b:I

    .line 118
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->d(IJ)V

    return-void

    .line 119
    :pswitch_1f
    iget p0, p0, Lby$c;->b:I

    .line 120
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->c(II)V

    return-void

    .line 121
    :pswitch_20
    iget p0, p0, Lby$c;->b:I

    .line 122
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->c(IJ)V

    return-void

    .line 123
    :pswitch_21
    iget p0, p0, Lby$c;->b:I

    .line 124
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->a(IJ)V

    return-void

    .line 125
    :pswitch_22
    iget p0, p0, Lby$c;->b:I

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Lez;->a(IF)V

    return-void

    .line 127
    :pswitch_23
    iget p0, p0, Lby$c;->b:I

    .line 128
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lez;->a(ID)V

    :cond_2
    :goto_1
    return-void

    nop

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public a(Ldh;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lby$d;

    return p0
.end method

.method public b(Ljava/lang/Object;)Lbt;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p1, Lby$d;

    invoke-virtual {p1}, Lby$d;->c()Lbt;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object p0

    invoke-virtual {p0}, Lbt;->a()V

    return-void
.end method
