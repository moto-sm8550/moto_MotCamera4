.class final Ldm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldw;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Ldh;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Ldn;

.field private final p:Lct;

.field private final q:Lem;

.field private final r:Lbr;

.field private final s:Ldd;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Ldm;->a:[I

    .line 2
    invoke-static {}, Lep;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ldm;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILdh;ZZ[IIILdn;Lct;Lem;Lbr;Ldd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "objects",
            "minFieldNumber",
            "maxFieldNumber",
            "defaultInstance",
            "proto3",
            "useCachedSizeField",
            "intArray",
            "checkInitialized",
            "mapFieldPositions",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldm;->c:[I

    .line 3
    iput-object p2, p0, Ldm;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Ldm;->e:I

    .line 5
    iput p4, p0, Ldm;->f:I

    .line 6
    instance-of p1, p5, Lby;

    iput-boolean p1, p0, Ldm;->i:Z

    .line 7
    iput-boolean p6, p0, Ldm;->j:Z

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lbr;->a(Ldh;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ldm;->h:Z

    .line 9
    iput-boolean p7, p0, Ldm;->k:Z

    .line 10
    iput-object p8, p0, Ldm;->l:[I

    .line 11
    iput p9, p0, Ldm;->m:I

    .line 12
    iput p10, p0, Ldm;->n:I

    .line 13
    iput-object p11, p0, Ldm;->o:Ldn;

    .line 14
    iput-object p12, p0, Ldm;->p:Lct;

    .line 15
    iput-object p13, p0, Ldm;->q:Lem;

    .line 16
    iput-object p14, p0, Ldm;->r:Lbr;

    .line 17
    iput-object p5, p0, Ldm;->g:Ldh;

    .line 18
    iput-object p15, p0, Ldm;->s:Ldd;

    return-void
.end method

.method private final a(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "number",
            "min"
        }
    .end annotation

    .line 1176
    iget v0, p0, Ldm;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldm;->f:I

    if-gt p1, v0, :cond_0

    .line 1177
    invoke-direct {p0, p1, p2}, Ldm;->b(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lem;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "message"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lem;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lem;->d(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILaw;)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "tag",
            "number",
            "wireType",
            "typeAndOffset",
            "fieldType",
            "fieldOffset",
            "bufferPosition",
            "registers"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 851
    sget-object v12, Ldm;->b:Lsun/misc/Unsafe;

    .line 852
    iget-object v7, v0, Ldm;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 853
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 854
    invoke-static/range {v2 .. v7}, Lat;->a(Ldw;[BIIILaw;)I

    move-result v0

    .line 855
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 856
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 857
    iget-object v2, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 858
    :cond_1
    iget-object v2, v11, Law;->c:Ljava/lang/Object;

    .line 859
    invoke-static {v15, v2}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 860
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_a

    .line 861
    invoke-static {v3, v4, v11}, Lat;->b([BILaw;)I

    move-result v0

    .line 862
    iget-wide v2, v11, Law;->b:J

    invoke-static {v2, v3}, Lbj;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_a

    .line 863
    invoke-static {v3, v4, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 864
    iget v2, v11, Law;->a:I

    invoke-static {v2}, Lbj;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_a

    .line 865
    invoke-static {v3, v4, v11}, Lat;->a([BILaw;)I

    move-result v3

    .line 866
    iget v4, v11, Law;->a:I

    .line 867
    invoke-direct {v0, v6}, Ldm;->c(I)Lcf;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 868
    invoke-interface {v0, v4}, Lcf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 869
    :cond_2
    invoke-static/range {p1 .. p1}, Ldm;->e(Ljava/lang/Object;)Lel;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lel;->a(ILjava/lang/Object;)V

    goto :goto_2

    .line 870
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 871
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v0, v3

    goto/16 :goto_c

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 872
    invoke-static {v3, v4, v11}, Lat;->e([BILaw;)I

    move-result v0

    .line 873
    iget-object v2, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 874
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v0

    move/from16 v2, p4

    .line 875
    invoke-static {v0, v3, v4, v2, v11}, Lat;->a(Ldw;[BIILaw;)I

    move-result v0

    .line 876
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_4

    .line 877
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_5

    .line 878
    iget-object v2, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    .line 879
    :cond_5
    iget-object v2, v11, Law;->c:Ljava/lang/Object;

    .line 880
    invoke-static {v15, v2}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 881
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 882
    :goto_4
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 883
    invoke-static {v3, v4, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 884
    iget v2, v11, Law;->a:I

    if-nez v2, :cond_6

    const-string v2, ""

    .line 885
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_6
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_8

    add-int v4, v0, v2

    .line 886
    invoke-static {v3, v0, v4}, Les;->a([BII)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    .line 887
    :cond_7
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object v0

    throw v0

    .line 888
    :cond_8
    :goto_5
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 889
    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    .line 890
    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_7
    if-nez v5, :cond_a

    .line 891
    invoke-static {v3, v4, v11}, Lat;->b([BILaw;)I

    move-result v0

    .line 892
    iget-wide v2, v11, Law;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 893
    invoke-static/range {p2 .. p3}, Lat;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_9
    const/4 v0, 0x1

    if-ne v5, v0, :cond_a

    .line 894
    invoke-static/range {p2 .. p3}, Lat;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_a
    if-nez v5, :cond_a

    .line 895
    invoke-static {v3, v4, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 896
    iget v2, v11, Law;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_a

    .line 897
    invoke-static {v3, v4, v11}, Lat;->b([BILaw;)I

    move-result v0

    .line 898
    iget-wide v2, v11, Law;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 899
    invoke-static/range {p2 .. p3}, Lat;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_d
    const/4 v0, 0x1

    if-ne v5, v0, :cond_a

    .line 900
    invoke-static/range {p2 .. p3}, Lat;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    add-int/lit8 v0, v4, 0x8

    .line 901
    :goto_a
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :cond_a
    :goto_b
    move v0, v4

    :goto_c
    return v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLaw;)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "tag",
            "number",
            "wireType",
            "bufferPosition",
            "typeAndOffset",
            "fieldType",
            "fieldOffset",
            "registers"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 693
    sget-object v11, Ldm;->b:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcj;

    .line 694
    invoke-interface {v12}, Lcj;->a()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    .line 695
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    .line 696
    :goto_0
    invoke-interface {v12, v13}, Lcj;->a(I)Lcj;

    move-result-object v12

    .line 697
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_22

    .line 698
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 699
    invoke-static/range {p6 .. p11}, Lat;->a(Ldw;[BIIILaw;)I

    move-result v4

    .line 700
    iget-object v6, v7, Law;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_22

    .line 701
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v6

    .line 702
    iget v8, v7, Law;->a:I

    if-ne v2, v8, :cond_22

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 703
    invoke-static/range {p6 .. p11}, Lat;->a(Ldw;[BIIILaw;)I

    move-result v4

    .line 704
    iget-object v6, v7, Law;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v13, :cond_2

    .line 705
    invoke-static {v3, v4, v12, v7}, Lat;->i([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_2
    if-nez v6, :cond_22

    .line 706
    check-cast v12, Lcy;

    .line 707
    invoke-static {v3, v4, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 708
    iget-wide v8, v7, Law;->b:J

    invoke-static {v8, v9}, Lbj;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcy;->a(J)V

    :goto_2
    if-ge v0, v5, :cond_23

    .line 709
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 710
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 711
    invoke-static {v3, v1, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 712
    iget-wide v8, v7, Law;->b:J

    invoke-static {v8, v9}, Lbj;->a(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcy;->a(J)V

    goto :goto_2

    :pswitch_2
    if-ne v6, v13, :cond_3

    .line 713
    invoke-static {v3, v4, v12, v7}, Lat;->h([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_3
    if-nez v6, :cond_22

    .line 714
    check-cast v12, Lca;

    .line 715
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 716
    iget v1, v7, Law;->a:I

    invoke-static {v1}, Lbj;->b(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lca;->c(I)V

    :goto_3
    if-ge v0, v5, :cond_23

    .line 717
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 718
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 719
    invoke-static {v3, v1, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 720
    iget v1, v7, Law;->a:I

    invoke-static {v1}, Lbj;->b(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lca;->c(I)V

    goto :goto_3

    :pswitch_3
    if-ne v6, v13, :cond_4

    .line 721
    invoke-static {v3, v4, v12, v7}, Lat;->a([BILcj;Law;)I

    move-result v2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_22

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 722
    invoke-static/range {v2 .. v7}, Lat;->a(I[BIILcj;Law;)I

    move-result v2

    .line 723
    :goto_4
    check-cast v1, Lby;

    iget-object v3, v1, Lby;->h:Lel;

    .line 724
    sget-object v4, Lel;->a:Lel;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 725
    :cond_5
    invoke-direct {p0, v8}, Ldm;->c(I)Lcf;

    move-result-object v4

    iget-object v0, v0, Ldm;->q:Lem;

    move/from16 v5, p6

    .line 726
    invoke-static {v5, v12, v4, v3, v0}, Ldy;->a(ILjava/util/List;Lcf;Ljava/lang/Object;Lem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lel;

    if-eqz v0, :cond_6

    .line 727
    iput-object v0, v1, Lby;->h:Lel;

    :cond_6
    move v0, v2

    goto/16 :goto_13

    :pswitch_4
    if-ne v6, v13, :cond_22

    .line 728
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 729
    iget v1, v7, Law;->a:I

    if-ltz v1, :cond_c

    .line 730
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_b

    if-nez v1, :cond_7

    .line 731
    sget-object v1, Lba;->a:Lba;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 732
    :cond_7
    invoke-static {v3, v0, v1}, Lba;->a([BII)Lba;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v0, v1

    :goto_6
    if-ge v0, v5, :cond_23

    .line 733
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 734
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 735
    invoke-static {v3, v1, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 736
    iget v1, v7, Law;->a:I

    if-ltz v1, :cond_a

    .line 737
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_9

    if-nez v1, :cond_8

    .line 738
    sget-object v1, Lba;->a:Lba;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 739
    :cond_8
    invoke-static {v3, v0, v1}, Lba;->a([BII)Lba;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 740
    :cond_9
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object v0

    throw v0

    .line 741
    :cond_a
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    .line 742
    :cond_b
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object v0

    throw v0

    .line 743
    :cond_c
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v6, v13, :cond_22

    .line 744
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 745
    invoke-static/range {p6 .. p12}, Lat;->a(Ldw;I[BIILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_6
    if-ne v6, v13, :cond_22

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v10

    const-string v1, ""

    if-nez v0, :cond_11

    .line 746
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 747
    iget v4, v7, Law;->a:I

    if-ltz v4, :cond_10

    if-nez v4, :cond_d

    .line 748
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 749
    :cond_d
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 750
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v4

    :goto_8
    if-ge v0, v5, :cond_23

    .line 751
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v4

    .line 752
    iget v6, v7, Law;->a:I

    if-ne v2, v6, :cond_23

    .line 753
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 754
    iget v4, v7, Law;->a:I

    if-ltz v4, :cond_f

    if-nez v4, :cond_e

    .line 755
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 756
    :cond_e
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 757
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 758
    :cond_f
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    .line 759
    :cond_10
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    .line 760
    :cond_11
    invoke-static {v3, v4, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 761
    iget v4, v7, Law;->a:I

    if-ltz v4, :cond_18

    if-nez v4, :cond_12

    .line 762
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_9

    :cond_12
    add-int v6, v0, v4

    .line 763
    invoke-static {v3, v0, v6}, Les;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 764
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 765
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v6, v5, :cond_16

    .line 766
    invoke-static {v3, v6, v7}, Lat;->a([BILaw;)I

    move-result v0

    .line 767
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_16

    .line 768
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v6

    .line 769
    iget v0, v7, Law;->a:I

    if-ltz v0, :cond_15

    if-nez v0, :cond_13

    .line 770
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    add-int v4, v6, v0

    .line 771
    invoke-static {v3, v6, v4}, Les;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 772
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 773
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_9

    .line 774
    :cond_14
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object v0

    throw v0

    .line 775
    :cond_15
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    :cond_16
    move v0, v6

    goto/16 :goto_13

    .line 776
    :cond_17
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object v0

    throw v0

    .line 777
    :cond_18
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object v0

    throw v0

    :pswitch_7
    if-ne v6, v13, :cond_19

    .line 778
    invoke-static {v3, v4, v12, v7}, Lat;->g([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_19
    if-nez v6, :cond_22

    .line 779
    check-cast v12, Lay;

    .line 780
    invoke-static {v3, v4, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 781
    iget-wide v8, v7, Law;->b:J

    cmp-long v1, v8, v10

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    move v1, v14

    goto :goto_a

    :cond_1a
    move v1, v4

    :goto_a
    invoke-virtual {v12, v1}, Lay;->a(Z)V

    :goto_b
    if-ge v0, v5, :cond_23

    .line 782
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 783
    iget v6, v7, Law;->a:I

    if-ne v2, v6, :cond_23

    .line 784
    invoke-static {v3, v1, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 785
    iget-wide v8, v7, Law;->b:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1b

    move v1, v14

    goto :goto_c

    :cond_1b
    move v1, v4

    :goto_c
    invoke-virtual {v12, v1}, Lay;->a(Z)V

    goto :goto_b

    :pswitch_8
    if-ne v6, v13, :cond_1c

    .line 786
    invoke-static {v3, v4, v12, v7}, Lat;->c([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_1c
    if-ne v6, v9, :cond_22

    .line 787
    check-cast v12, Lca;

    .line 788
    invoke-static/range {p2 .. p3}, Lat;->a([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lca;->c(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_d
    if-ge v0, v5, :cond_23

    .line 789
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 790
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 791
    invoke-static {v3, v1}, Lat;->a([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lca;->c(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_d

    :pswitch_9
    if-ne v6, v13, :cond_1d

    .line 792
    invoke-static {v3, v4, v12, v7}, Lat;->d([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_1d
    if-ne v6, v14, :cond_22

    .line 793
    check-cast v12, Lcy;

    .line 794
    invoke-static/range {p2 .. p3}, Lat;->b([BI)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcy;->a(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_e
    if-ge v0, v5, :cond_23

    .line 795
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 796
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 797
    invoke-static {v3, v1}, Lat;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcy;->a(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_e

    :pswitch_a
    if-ne v6, v13, :cond_1e

    .line 798
    invoke-static {v3, v4, v12, v7}, Lat;->a([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_1e
    if-nez v6, :cond_22

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 799
    invoke-static/range {p5 .. p10}, Lat;->a(I[BIILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_b
    if-ne v6, v13, :cond_1f

    .line 800
    invoke-static {v3, v4, v12, v7}, Lat;->b([BILcj;Law;)I

    move-result v0

    goto/16 :goto_13

    :cond_1f
    if-nez v6, :cond_22

    .line 801
    check-cast v12, Lcy;

    .line 802
    invoke-static {v3, v4, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 803
    iget-wide v8, v7, Law;->b:J

    invoke-virtual {v12, v8, v9}, Lcy;->a(J)V

    :goto_f
    if-ge v0, v5, :cond_23

    .line 804
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 805
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 806
    invoke-static {v3, v1, v7}, Lat;->b([BILaw;)I

    move-result v0

    .line 807
    iget-wide v8, v7, Law;->b:J

    invoke-virtual {v12, v8, v9}, Lcy;->a(J)V

    goto :goto_f

    :pswitch_c
    if-ne v6, v13, :cond_20

    .line 808
    invoke-static {v3, v4, v12, v7}, Lat;->e([BILcj;Law;)I

    move-result v0

    goto :goto_13

    :cond_20
    if-ne v6, v9, :cond_22

    .line 809
    check-cast v12, Lbx;

    .line 810
    invoke-static/range {p2 .. p3}, Lat;->d([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lbx;->a(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_10
    if-ge v0, v5, :cond_23

    .line 811
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 812
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 813
    invoke-static {v3, v1}, Lat;->d([BI)F

    move-result v0

    invoke-virtual {v12, v0}, Lbx;->a(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_10

    :pswitch_d
    if-ne v6, v13, :cond_21

    .line 814
    invoke-static {v3, v4, v12, v7}, Lat;->f([BILcj;Law;)I

    move-result v0

    goto :goto_13

    :cond_21
    if-ne v6, v14, :cond_22

    .line 815
    check-cast v12, Lbm;

    .line 816
    invoke-static/range {p2 .. p3}, Lat;->c([BI)D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lbm;->a(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_11
    if-ge v0, v5, :cond_23

    .line 817
    invoke-static {v3, v0, v7}, Lat;->a([BILaw;)I

    move-result v1

    .line 818
    iget v4, v7, Law;->a:I

    if-ne v2, v4, :cond_23

    .line 819
    invoke-static {v3, v1}, Lat;->c([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lbm;->a(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_11

    :cond_22
    :goto_12
    move v0, v4

    :cond_23
    :goto_13
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLaw;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "bufferPosition",
            "fieldOffset",
            "registers"
        }
    .end annotation

    .line 820
    sget-object v0, Ldm;->b:Lsun/misc/Unsafe;

    .line 821
    invoke-direct {p0, p5}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object p5

    .line 822
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 823
    iget-object v2, p0, Ldm;->s:Ldd;

    invoke-virtual {v2, v1}, Ldd;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    iget-object v2, p0, Ldm;->s:Ldd;

    invoke-virtual {v2}, Ldd;->a()Ljava/lang/Object;

    move-result-object v2

    .line 825
    iget-object v3, p0, Ldm;->s:Ldd;

    invoke-virtual {v3, v2, v1}, Ldd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 827
    :cond_0
    iget-object p1, p0, Ldm;->s:Ldd;

    .line 828
    invoke-virtual {p1, p5}, Ldd;->e(Ljava/lang/Object;)Ldb;

    move-result-object p1

    iget-object p0, p0, Ldm;->s:Ldd;

    .line 829
    invoke-virtual {p0, v1}, Ldd;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 830
    invoke-static {p2, p3, p8}, Lat;->a([BILaw;)I

    move-result p3

    .line 831
    iget p5, p8, Law;->a:I

    if-ltz p5, :cond_7

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_7

    add-int/2addr p5, p3

    .line 832
    iget-object p6, p1, Ldb;->b:Ljava/lang/Object;

    .line 833
    iget-object p7, p1, Ldb;->d:Ljava/lang/Object;

    :goto_0
    if-ge p3, p5, :cond_5

    add-int/lit8 v0, p3, 0x1

    .line 834
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 835
    invoke-static {p3, p2, v0, p8}, Lat;->a(I[BILaw;)I

    move-result v0

    .line 836
    iget p3, p8, Law;->a:I

    :cond_1
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 837
    :cond_2
    iget-object v3, p1, Ldb;->c:Lex;

    .line 838
    iget v0, v3, Lex;->t:I

    if-ne v2, v0, :cond_4

    .line 839
    iget-object p3, p1, Ldb;->d:Ljava/lang/Object;

    .line 840
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    .line 841
    invoke-static/range {v0 .. v5}, Ldm;->a([BIILex;Ljava/lang/Class;Law;)I

    move-result p3

    .line 842
    iget-object p7, p8, Law;->c:Ljava/lang/Object;

    goto :goto_0

    .line 843
    :cond_3
    iget-object v3, p1, Ldb;->a:Lex;

    .line 844
    iget v0, v3, Lex;->t:I

    if-ne v2, v0, :cond_4

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    .line 845
    invoke-static/range {v0 .. v5}, Ldm;->a([BIILex;Ljava/lang/Class;Law;)I

    move-result p3

    .line 846
    iget-object p6, p8, Law;->c:Ljava/lang/Object;

    goto :goto_0

    .line 847
    :cond_4
    :goto_1
    invoke-static {p3, p2, v1, p4, p8}, Lat;->a(I[BIILaw;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p5, :cond_6

    .line 848
    invoke-interface {p0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    .line 849
    :cond_6
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object p0

    throw p0

    .line 850
    :cond_7
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method private static a([BIILex;Ljava/lang/Class;Law;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "position",
            "limit",
            "fieldType",
            "messageType",
            "registers"
        }
    .end annotation

    .line 672
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 673
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 674
    :pswitch_1
    invoke-static {p0, p1, p5}, Lat;->b([BILaw;)I

    move-result p0

    .line 675
    iget-wide p1, p5, Law;->b:J

    invoke-static {p1, p2}, Lbj;->a(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Law;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 676
    :pswitch_2
    invoke-static {p0, p1, p5}, Lat;->a([BILaw;)I

    move-result p0

    .line 677
    iget p1, p5, Law;->a:I

    invoke-static {p1}, Lbj;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Law;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 678
    :pswitch_3
    invoke-static {p0, p1, p5}, Lat;->e([BILaw;)I

    move-result p0

    goto/16 :goto_3

    .line 679
    :pswitch_4
    sget-object p3, Ldu;->a:Ldu;

    .line 680
    invoke-virtual {p3, p4}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object p3

    .line 681
    invoke-static {p3, p0, p1, p2, p5}, Lat;->a(Ldw;[BIILaw;)I

    move-result p0

    goto :goto_3

    .line 682
    :pswitch_5
    invoke-static {p0, p1, p5}, Lat;->d([BILaw;)I

    move-result p0

    goto :goto_3

    .line 683
    :pswitch_6
    invoke-static {p0, p1, p5}, Lat;->b([BILaw;)I

    move-result p0

    .line 684
    iget-wide p1, p5, Law;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Law;->c:Ljava/lang/Object;

    goto :goto_3

    .line 685
    :pswitch_7
    invoke-static {p0, p1}, Lat;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Law;->c:Ljava/lang/Object;

    goto :goto_1

    .line 686
    :pswitch_8
    invoke-static {p0, p1}, Lat;->b([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Law;->c:Ljava/lang/Object;

    goto :goto_2

    .line 687
    :pswitch_9
    invoke-static {p0, p1, p5}, Lat;->a([BILaw;)I

    move-result p0

    .line 688
    iget p1, p5, Law;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Law;->c:Ljava/lang/Object;

    goto :goto_3

    .line 689
    :pswitch_a
    invoke-static {p0, p1, p5}, Lat;->b([BILaw;)I

    move-result p0

    .line 690
    iget-wide p1, p5, Law;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Law;->c:Ljava/lang/Object;

    goto :goto_3

    .line 691
    :pswitch_b
    invoke-static {p0, p1}, Lat;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Law;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    .line 692
    :pswitch_c
    invoke-static {p0, p1}, Lat;->c([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Law;->c:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p0, p1, 0x8

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageClass",
            "messageInfo",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    instance-of v1, v0, Ldt;

    if-eqz v1, :cond_34

    .line 2
    check-cast v0, Ldt;

    .line 3
    invoke-virtual {v0}, Ldt;->a()I

    move-result v1

    sget v2, Lby$e;->i:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    .line 4
    :goto_0
    iget-object v1, v0, Ldt;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 7
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    .line 10
    sget-object v9, Ldm;->a:[I

    move v6, v3

    move v10, v6

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v9

    move v9, v15

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 11
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v10, v9, 0x1

    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_9
    add-int/lit8 v12, v10, 0x1

    .line 15
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v17

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v18, v6, 0x1

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v3, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v18

    goto :goto_c

    :cond_14
    shl-int v6, v6, v16

    or-int/2addr v3, v6

    move/from16 v16, v18

    :cond_15
    add-int v6, v3, v14

    add-int/2addr v6, v15

    .line 27
    new-array v6, v6, [I

    shl-int/lit8 v15, v8, 0x1

    add-int/2addr v15, v9

    move v9, v12

    move v12, v15

    move v15, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v14

    move-object v14, v6

    move/from16 v6, v35

    .line 28
    :goto_d
    sget-object v7, Ldm;->b:Lsun/misc/Unsafe;

    .line 29
    iget-object v4, v0, Ldt;->c:[Ljava/lang/Object;

    move/from16 v19, v8

    .line 30
    iget-object v8, v0, Ldt;->a:Ldh;

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move/from16 v20, v12

    mul-int/lit8 v12, v13, 0x3

    .line 32
    new-array v12, v12, [I

    const/16 v18, 0x1

    shl-int/lit8 v13, v13, 0x1

    .line 33
    new-array v13, v13, [Ljava/lang/Object;

    add-int v21, v15, v6

    move/from16 v23, v15

    move/from16 v6, v19

    move/from16 v24, v21

    const/16 v19, 0x0

    const/16 v22, 0x0

    :goto_e
    if-ge v6, v2, :cond_33

    add-int/lit8 v25, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v2, v25

    const/16 v25, 0xd

    :goto_f
    add-int/lit8 v27, v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v25

    or-int/2addr v6, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v2, v27

    move/from16 v15, v28

    goto :goto_f

    :cond_16
    shl-int v2, v2, v25

    or-int/2addr v6, v2

    move/from16 v2, v27

    goto :goto_10

    :cond_17
    move/from16 v28, v15

    move/from16 v2, v25

    :goto_10
    add-int/lit8 v15, v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_11
    add-int/lit8 v27, v15, 0x1

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v11

    const v11, 0xd800

    if-lt v15, v11, :cond_18

    and-int/lit16 v11, v15, 0x1fff

    shl-int v11, v11, v25

    or-int/2addr v2, v11

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v11, v29

    goto :goto_11

    :cond_18
    shl-int v11, v15, v25

    or-int/2addr v2, v11

    move/from16 v15, v27

    goto :goto_12

    :cond_19
    move/from16 v29, v11

    move/from16 v15, v25

    :goto_12
    and-int/lit16 v11, v2, 0xff

    move/from16 v25, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v22, 0x1

    .line 38
    aput v19, v14, v22

    move/from16 v22, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v31, v10

    if-lt v11, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 39
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v9, 0x1

    .line 40
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_1b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v32

    or-int/2addr v15, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v9, v33

    const v10, 0xd800

    goto :goto_13

    :cond_1b
    shl-int v9, v9, v32

    or-int/2addr v15, v9

    move/from16 v9, v33

    :cond_1c
    add-int/lit8 v10, v11, -0x33

    move/from16 v32, v9

    const/16 v9, 0x9

    if-eq v10, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v10, v9, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0xc

    if-ne v10, v9, :cond_1e

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 41
    div-int/lit8 v9, v19, 0x3

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v20, 0x1

    aget-object v20, v4, v20

    aput-object v20, v13, v9

    move/from16 v20, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_15

    .line 42
    :cond_1f
    :goto_14
    div-int/lit8 v9, v19, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v18, v20, 0x1

    aget-object v20, v4, v20

    aput-object v20, v13, v9

    move/from16 v20, v18

    :goto_15
    shl-int/lit8 v9, v15, 0x1

    .line 43
    aget-object v10, v4, v9

    .line 44
    instance-of v15, v10, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 45
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 46
    :cond_20
    check-cast v10, Ljava/lang/String;

    invoke-static {v8, v10}, Ldm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 47
    aput-object v10, v4, v9

    :goto_16
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    .line 48
    invoke-virtual {v7, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v9, v9, 0x1

    .line 49
    aget-object v1, v4, v9

    .line 50
    instance-of v10, v1, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 51
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 52
    :cond_21
    check-cast v1, Ljava/lang/String;

    invoke-static {v8, v1}, Ldm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 53
    aput-object v1, v4, v9

    .line 54
    :goto_17
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    move v9, v3

    move-object/from16 v18, v4

    move/from16 v30, v32

    move-object/from16 v10, v34

    const/4 v15, 0x0

    goto/16 :goto_22

    :cond_22
    move-object/from16 v33, v0

    move-object/from16 v34, v1

    add-int/lit8 v0, v20, 0x1

    .line 55
    aget-object v1, v4, v20

    check-cast v1, Ljava/lang/String;

    invoke-static {v8, v1}, Ldm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v9, 0x31

    const/16 v10, 0x9

    if-eq v11, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v11, v10, :cond_23

    goto :goto_1c

    :cond_23
    const/16 v10, 0x1b

    if-eq v11, v10, :cond_29

    if-ne v11, v9, :cond_24

    goto :goto_1a

    :cond_24
    const/16 v10, 0xc

    if-eq v11, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v11, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v11, v10, :cond_25

    goto :goto_19

    :cond_25
    const/16 v10, 0x32

    if-ne v11, v10, :cond_27

    add-int/lit8 v10, v23, 0x1

    .line 56
    aput v19, v14, v23

    .line 57
    div-int/lit8 v20, v19, 0x3

    const/16 v18, 0x1

    shl-int/lit8 v20, v20, 0x1

    add-int/lit8 v23, v0, 0x1

    aget-object v0, v4, v0

    aput-object v0, v13, v20

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v0, v23, 0x1

    .line 58
    aget-object v23, v4, v23

    aput-object v23, v13, v20

    goto :goto_18

    :cond_26
    move/from16 v0, v23

    :goto_18
    move/from16 v23, v10

    goto :goto_1d

    :cond_27
    const/4 v9, 0x1

    goto :goto_1d

    :cond_28
    :goto_19
    and-int/lit8 v10, v5, 0x1

    const/4 v9, 0x1

    if-ne v10, v9, :cond_2b

    .line 59
    div-int/lit8 v10, v19, 0x3

    shl-int/2addr v10, v9

    add-int/2addr v10, v9

    add-int/lit8 v18, v0, 0x1

    aget-object v0, v4, v0

    aput-object v0, v13, v10

    goto :goto_1b

    :cond_29
    :goto_1a
    const/4 v9, 0x1

    .line 60
    div-int/lit8 v10, v19, 0x3

    shl-int/2addr v10, v9

    add-int/2addr v10, v9

    add-int/lit8 v18, v0, 0x1

    aget-object v0, v4, v0

    aput-object v0, v13, v10

    :goto_1b
    move/from16 v0, v18

    goto :goto_1d

    :cond_2a
    :goto_1c
    const/4 v9, 0x1

    .line 61
    div-int/lit8 v10, v19, 0x3

    shl-int/2addr v10, v9

    add-int/2addr v10, v9

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v13, v10

    .line 62
    :cond_2b
    :goto_1d
    invoke-virtual {v7, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v1, v9

    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2f

    const/16 v9, 0x11

    if-gt v11, v9, :cond_2f

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v10, v34

    .line 63
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v27, v0

    const v0, 0xd800

    if-lt v15, v0, :cond_2d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v16, 0xd

    :goto_1e
    add-int/lit8 v30, v9, 0x1

    .line 64
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v0, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v16

    or-int/2addr v15, v9

    add-int/lit8 v16, v16, 0xd

    move/from16 v9, v30

    goto :goto_1e

    :cond_2c
    shl-int v9, v9, v16

    or-int/2addr v15, v9

    goto :goto_1f

    :cond_2d
    move/from16 v30, v9

    :goto_1f
    const/4 v9, 0x1

    shl-int/lit8 v16, v3, 0x1

    .line 65
    div-int/lit8 v18, v15, 0x20

    add-int v18, v18, v16

    .line 66
    aget-object v0, v4, v18

    .line 67
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_2e

    .line 68
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_20

    .line 69
    :cond_2e
    check-cast v0, Ljava/lang/String;

    invoke-static {v8, v0}, Ldm;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 70
    aput-object v0, v4, v18

    :goto_20
    move v9, v3

    move-object/from16 v18, v4

    .line 71
    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 72
    rem-int/lit8 v15, v15, 0x20

    goto :goto_21

    :cond_2f
    move/from16 v27, v0

    move v9, v3

    move-object/from16 v18, v4

    move-object/from16 v10, v34

    move/from16 v30, v15

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_21
    const/16 v3, 0x12

    if-lt v11, v3, :cond_30

    const/16 v3, 0x31

    if-gt v11, v3, :cond_30

    add-int/lit8 v3, v24, 0x1

    .line 73
    aput v1, v14, v24

    move/from16 v24, v3

    :cond_30
    move/from16 v20, v27

    move/from16 v35, v1

    move v1, v0

    move/from16 v0, v35

    :goto_22
    add-int/lit8 v3, v19, 0x1

    .line 74
    aput v6, v12, v19

    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v6, v2, 0x200

    if-eqz v6, :cond_31

    const/high16 v6, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v6, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v2, v6

    shl-int/lit8 v6, v11, 0x14

    or-int/2addr v2, v6

    or-int/2addr v0, v2

    .line 75
    aput v0, v12, v3

    add-int/lit8 v19, v4, 0x1

    shl-int/lit8 v0, v15, 0x14

    or-int/2addr v0, v1

    .line 76
    aput v0, v12, v4

    move v3, v9

    move-object v1, v10

    move-object/from16 v4, v18

    move/from16 v9, v25

    move/from16 v2, v26

    move/from16 v15, v28

    move/from16 v11, v29

    move/from16 v6, v30

    move/from16 v10, v31

    move-object/from16 v0, v33

    goto/16 :goto_e

    :cond_33
    move-object/from16 v33, v0

    move/from16 v25, v9

    move/from16 v31, v10

    move/from16 v29, v11

    move/from16 v28, v15

    .line 77
    new-instance v0, Ldm;

    move-object/from16 v1, v33

    .line 78
    iget-object v10, v1, Ldt;->a:Ldh;

    const/4 v1, 0x0

    move-object v5, v0

    move-object v6, v12

    move-object v7, v13

    move/from16 v8, v31

    move v12, v1

    move-object v13, v14

    move/from16 v14, v28

    move/from16 v15, v21

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 79
    invoke-direct/range {v5 .. v20}, Ldm;-><init>([I[Ljava/lang/Object;IILdh;ZZ[IIILdn;Lct;Lem;Lbr;Ldd;)V

    return-object v0

    .line 80
    :cond_34
    check-cast v0, Leh;

    .line 81
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final a(I)Ldw;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 902
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 903
    iget-object v0, p0, Ldm;->d:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Ldw;

    if-eqz v1, :cond_0

    return-object v1

    .line 904
    :cond_0
    sget-object v1, Ldu;->a:Ldu;

    add-int/lit8 v2, p1, 0x1

    .line 905
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v0

    .line 906
    iget-object p0, p0, Ldm;->d:[Ljava/lang/Object;

    aput-object v0, p0, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcf;Ljava/lang/Object;Lem;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "number",
            "mapData",
            "enumVerifier",
            "unknownFields",
            "unknownFieldSchema"
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Ldm;->s:Ldd;

    .line 1127
    invoke-direct {p0, p1}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ldd;->e(Ljava/lang/Object;)Ldb;

    move-result-object p0

    .line 1128
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1130
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p4, v0}, Lcf;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    .line 1131
    invoke-virtual {p6}, Lem;->a()Ljava/lang/Object;

    move-result-object p5

    .line 1132
    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ldc;->a(Ldb;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1133
    invoke-static {v0}, Lba;->c(I)Lbi;

    move-result-object v0

    .line 1134
    iget-object v1, v0, Lbi;->a:Lbl;

    .line 1135
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p0, v2, p3}, Ldc;->a(Lbl;Ldb;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    invoke-virtual {v0}, Lbi;->a()Lba;

    move-result-object p3

    invoke-virtual {p6, p5, p2, p3}, Lem;->a(Ljava/lang/Object;ILba;)V

    .line 1137
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1138
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lem;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "unknownFields",
            "unknownFieldSchema"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Ldm;->c:[I

    aget v3, v0, p2

    .line 1121
    invoke-direct {p0, p2}, Ldm;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1122
    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 1123
    :cond_0
    invoke-direct {p0, p2}, Ldm;->c(I)Lcf;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 1124
    :cond_1
    iget-object v0, p0, Ldm;->s:Ldd;

    invoke-virtual {v0, p1}, Ldd;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 1125
    invoke-direct/range {v1 .. v7}, Ldm;->a(IILjava/util/Map;Lcf;Ljava/lang/Object;Lem;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageClass",
            "fieldName"
        }
    .end annotation

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 83
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 84
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    .line 89
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 91
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Field "

    const-string v4, " for "

    .line 92
    invoke-static {v2, v3, p1, v4, p0}, Lan$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    .line 93
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 247
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lez;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "writer"
        }
    .end annotation

    .line 1141
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1142
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lez;->a(ILjava/lang/String;)V

    return-void

    .line 1143
    :cond_0
    check-cast p1, Lba;

    invoke-virtual {p2, p0, p1}, Lez;->a(ILba;)V

    return-void
.end method

.method private static a(Lem;Ljava/lang/Object;Lez;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "schema",
            "message",
            "writer"
        }
    .end annotation

    .line 671
    invoke-virtual {p0, p1}, Lem;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lem;->a(Ljava/lang/Object;Lez;)V

    return-void
.end method

.method private final a(Lez;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "number",
            "mapField",
            "pos"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 667
    iget-object v0, p0, Ldm;->s:Ldd;

    .line 668
    invoke-direct {p0, p4}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ldd;->e(Ljava/lang/Object;)Ldb;

    move-result-object p4

    iget-object p0, p0, Ldm;->s:Ldd;

    .line 669
    invoke-virtual {p0, p3}, Ldd;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 670
    invoke-virtual {p1, p2, p4, p0}, Lez;->a(ILdb;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p3}, Ldm;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 237
    invoke-direct {p0, p2, p3}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 239
    invoke-static {p2, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 240
    invoke-static {v2, p2}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 241
    invoke-static {p1, v0, v1, p2}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 242
    invoke-direct {p0, p1, p3}, Ldm;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 243
    invoke-static {p1, v0, v1, p2}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 244
    invoke-direct {p0, p1, p3}, Ldm;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pos"
        }
    .end annotation

    .line 1146
    iget-boolean v0, p0, Ldm;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1147
    invoke-direct {p0, p2}, Ldm;->d(I)I

    move-result p0

    and-int p2, p0, v1

    int-to-long v0, p2

    const/high16 p2, 0xff00000

    and-int/2addr p0, p2

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v4, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1148
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1149
    :pswitch_0
    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2

    .line 1150
    :pswitch_1
    invoke-static {p1, v0, v1}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2

    .line 1151
    :pswitch_2
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    .line 1152
    :pswitch_3
    invoke-static {p1, v0, v1}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    .line 1153
    :pswitch_4
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2

    .line 1154
    :pswitch_5
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v2

    .line 1155
    :pswitch_6
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v2

    .line 1156
    :pswitch_7
    sget-object p0, Lba;->a:Lba;

    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lba;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v3

    :cond_7
    return v2

    .line 1157
    :pswitch_8
    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v3

    :cond_8
    return v2

    .line 1158
    :pswitch_9
    invoke-static {p1, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1159
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 1160
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v3

    :cond_9
    return v2

    .line 1161
    :cond_a
    instance-of p1, p0, Lba;

    if-eqz p1, :cond_c

    .line 1162
    sget-object p1, Lba;->a:Lba;

    invoke-virtual {p1, p0}, Lba;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    return v2

    .line 1163
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1164
    :pswitch_a
    invoke-static {p1, v0, v1}, Lep;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 1165
    :pswitch_b
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v3

    :cond_d
    return v2

    .line 1166
    :pswitch_c
    invoke-static {p1, v0, v1}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_e

    return v3

    :cond_e
    return v2

    .line 1167
    :pswitch_d
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v3

    :cond_f
    return v2

    .line 1168
    :pswitch_e
    invoke-static {p1, v0, v1}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_10

    return v3

    :cond_10
    return v2

    .line 1169
    :pswitch_f
    invoke-static {p1, v0, v1}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_11

    return v3

    :cond_11
    return v2

    .line 1170
    :pswitch_10
    invoke-static {p1, v0, v1}, Lep;->d(Ljava/lang/Object;J)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v3

    :cond_12
    return v2

    .line 1171
    :pswitch_11
    invoke-static {p1, v0, v1}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v3

    :cond_13
    return v2

    .line 1172
    :cond_14
    invoke-direct {p0, p2}, Ldm;->e(I)I

    move-result p0

    ushr-int/lit8 p2, p0, 0x14

    shl-int p2, v3, p2

    and-int/2addr p0, v1

    int-to-long v0, p0

    .line 1173
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_15

    return v3

    :cond_15
    return v2

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
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos"
        }
    .end annotation

    .line 1174
    invoke-direct {p0, p3}, Ldm;->e(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 1175
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "presenceField",
            "presenceMask"
        }
    .end annotation

    .line 1144
    iget-boolean v0, p0, Ldm;->j:Z

    if-eqz v0, :cond_0

    .line 1145
    invoke-direct {p0, p1, p2}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p3, p4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Object;ILdw;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "schema"
        }
    .end annotation

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1139
    invoke-static {p0, v0, v1}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 1140
    invoke-interface {p2, p0}, Ldw;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 267
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "number",
            "min"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Ldm;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 275
    iget-object v3, p0, Ldm;->c:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 257
    iget-object p0, p0, Ldm;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pos"
        }
    .end annotation

    .line 268
    iget-boolean v0, p0, Ldm;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-direct {p0, p2}, Ldm;->e(I)I

    move-result p0

    const/4 p2, 0x1

    ushr-int/lit8 v0, p0, 0x14

    shl-int/2addr p2, v0

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    .line 270
    invoke-static {p1, v0, v1}, Lep;->a(Ljava/lang/Object;J)I

    move-result p0

    or-int/2addr p0, p2

    .line 271
    invoke-static {p1, v0, v1, p0}, Lep;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos"
        }
    .end annotation

    .line 272
    invoke-direct {p0, p3}, Ldm;->e(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 273
    invoke-static {p1, v0, v1, p2}, Lep;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lez;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 79
    iget-boolean v3, v0, Ldm;->h:Z

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, v0, Ldm;->r:Lbr;

    invoke-virtual {v3, v1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object v3

    .line 81
    iget-object v5, v3, Lbt;->a:Ldx;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    invoke-virtual {v3}, Lbt;->b()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 84
    iget-object v7, v0, Ldm;->c:[I

    array-length v7, v7

    .line 85
    sget-object v8, Ldm;->b:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    .line 86
    invoke-direct {v0, v10}, Ldm;->d(I)I

    move-result v12

    .line 87
    iget-object v13, v0, Ldm;->c:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    .line 88
    iget-boolean v4, v0, Ldm;->j:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 89
    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    .line 90
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 91
    iget-object v9, v0, Ldm;->r:Lbr;

    invoke-virtual {v9, v5}, Lbr;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 92
    iget-object v9, v0, Ldm;->r:Lbr;

    invoke-virtual {v9, v2, v5}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 94
    :pswitch_0
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 95
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 96
    invoke-virtual {v2, v14, v4, v9}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto :goto_3

    .line 97
    :pswitch_1
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-static {v1, v9, v10}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->e(IJ)V

    goto :goto_3

    .line 99
    :pswitch_2
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->f(II)V

    goto :goto_3

    .line 101
    :pswitch_3
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-static {v1, v9, v10}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->b(IJ)V

    goto :goto_3

    .line 103
    :pswitch_4
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->a(II)V

    goto :goto_3

    .line 105
    :pswitch_5
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->b(II)V

    goto :goto_3

    .line 107
    :pswitch_6
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->e(II)V

    goto :goto_3

    .line 109
    :pswitch_7
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba;

    invoke-virtual {v2, v14, v4}, Lez;->a(ILba;)V

    goto :goto_3

    .line 111
    :pswitch_8
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 113
    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v9

    invoke-virtual {v2, v14, v4, v9}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_3

    .line 114
    :pswitch_9
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto/16 :goto_3

    .line 116
    :pswitch_a
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {v1, v9, v10}, Ldm;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->a(IZ)V

    goto/16 :goto_3

    .line 118
    :pswitch_b
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 119
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->d(II)V

    goto/16 :goto_3

    .line 120
    :pswitch_c
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-static {v1, v9, v10}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->d(IJ)V

    goto/16 :goto_3

    .line 122
    :pswitch_d
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    invoke-static {v1, v9, v10}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->c(II)V

    goto/16 :goto_3

    .line 124
    :pswitch_e
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-static {v1, v9, v10}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->c(IJ)V

    goto/16 :goto_3

    .line 126
    :pswitch_f
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    invoke-static {v1, v9, v10}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->a(IJ)V

    goto/16 :goto_3

    .line 128
    :pswitch_10
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 129
    invoke-static {v1, v9, v10}, Ldm;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->a(IF)V

    goto/16 :goto_3

    .line 130
    :pswitch_11
    invoke-direct {v0, v1, v14, v12}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 131
    invoke-static {v1, v9, v10}, Ldm;->b(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->a(ID)V

    goto/16 :goto_3

    .line 132
    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Ldm;->a(Lez;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 133
    :pswitch_13
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 134
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 135
    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 136
    invoke-static {v4, v9, v2, v10}, Ldy;->b(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_3

    .line 137
    :pswitch_14
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 138
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    .line 139
    invoke-static {v4, v9, v2, v13}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    .line 140
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 141
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 142
    invoke-static {v4, v9, v2, v13}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    .line 143
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 144
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 145
    invoke-static {v4, v9, v2, v13}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    .line 146
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 147
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 148
    invoke-static {v4, v9, v2, v13}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    .line 149
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 150
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 151
    invoke-static {v4, v9, v2, v13}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    .line 152
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 153
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 154
    invoke-static {v4, v9, v2, v13}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    .line 155
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 156
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 157
    invoke-static {v4, v9, v2, v13}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    .line 158
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 159
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 160
    invoke-static {v4, v9, v2, v13}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    .line 161
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 162
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 163
    invoke-static {v4, v9, v2, v13}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    .line 164
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 165
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 166
    invoke-static {v4, v9, v2, v13}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    .line 167
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 168
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 169
    invoke-static {v4, v9, v2, v13}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    .line 170
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 171
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 172
    invoke-static {v4, v9, v2, v13}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    .line 173
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 174
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 175
    invoke-static {v4, v9, v2, v13}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    .line 176
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 177
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 178
    invoke-static {v4, v9, v2, v13}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_3

    .line 179
    :pswitch_22
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 180
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 181
    invoke-static {v4, v9, v2, v13}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    .line 182
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 183
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 184
    invoke-static {v4, v9, v2, v13}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    .line 185
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 186
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 187
    invoke-static {v4, v9, v2, v13}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    .line 188
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 189
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 190
    invoke-static {v4, v9, v2, v13}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    .line 191
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 192
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 193
    invoke-static {v4, v9, v2, v13}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    .line 194
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 195
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 196
    invoke-static {v4, v9, v2, v13}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 197
    :pswitch_28
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 198
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 199
    invoke-static {v4, v9, v2}, Ldy;->b(ILjava/util/List;Lez;)V

    goto/16 :goto_3

    .line 200
    :pswitch_29
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 201
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 202
    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 203
    invoke-static {v4, v9, v2, v10}, Ldy;->a(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_3

    .line 204
    :pswitch_2a
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 205
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 206
    invoke-static {v4, v9, v2}, Ldy;->a(ILjava/util/List;Lez;)V

    goto/16 :goto_3

    .line 207
    :pswitch_2b
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 208
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    .line 209
    invoke-static {v4, v9, v2, v13}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    .line 210
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 211
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 212
    invoke-static {v4, v9, v2, v13}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    .line 213
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 214
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 215
    invoke-static {v4, v9, v2, v13}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    .line 216
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 217
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 218
    invoke-static {v4, v9, v2, v13}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    .line 219
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 220
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 221
    invoke-static {v4, v9, v2, v13}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    .line 222
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 223
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 224
    invoke-static {v4, v9, v2, v13}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    .line 225
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 226
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 227
    invoke-static {v4, v9, v2, v13}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    .line 228
    iget-object v4, v0, Ldm;->c:[I

    aget v4, v4, v12

    .line 229
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 230
    invoke-static {v4, v9, v2, v13}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 231
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 232
    invoke-virtual {v2, v14, v4, v9}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 233
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 234
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->f(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 235
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->b(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 236
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->a(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 237
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->b(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 238
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->e(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 239
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lba;

    invoke-virtual {v2, v14, v4}, Lez;->a(ILba;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 240
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 241
    invoke-direct {v0, v12}, Ldm;->a(I)Ldw;

    move-result-object v9

    invoke-virtual {v2, v14, v4, v9}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 242
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 243
    invoke-static {v1, v9, v10}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 244
    invoke-virtual {v2, v14, v4}, Lez;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 245
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->d(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 246
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->d(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 247
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Lez;->c(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 248
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->c(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 249
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v2, v14, v9, v10}, Lez;->a(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 250
    invoke-static {v1, v9, v10}, Lep;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 251
    invoke-virtual {v2, v14, v4}, Lez;->a(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 252
    invoke-static {v1, v9, v10}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 253
    invoke-virtual {v2, v14, v9, v10}, Lez;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 254
    iget-object v4, v0, Ldm;->r:Lbr;

    invoke-virtual {v4, v2, v5}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 255
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 256
    :cond_9
    iget-object v0, v0, Ldm;->q:Lem;

    invoke-static {v0, v1, v2}, Ldm;->a(Lem;Ljava/lang/Object;Lez;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p3}, Ldm;->d(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Ldm;->c:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 71
    invoke-direct {p0, p2, v1, p3}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {p1, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-static {p2, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 74
    invoke-static {v0, p2}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 75
    invoke-static {p1, v2, v3, p2}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 76
    invoke-direct {p0, p1, v1, p3}, Ldm;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 77
    invoke-static {p1, v2, v3, p2}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1, v1, p3}, Ldm;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 34
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)Lcf;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldm;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcf;

    return-object p0
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p3}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final d(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 415
    iget-object p0, p0, Ldm;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 416
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final e(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Ldm;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/lang/Object;)Lel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    check-cast p0, Lby;

    iget-object v0, p0, Lby;->h:Lel;

    .line 2
    sget-object v1, Lel;->a:Lel;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lel;

    invoke-direct {v0}, Lel;-><init>()V

    .line 4
    iput-object v0, p0, Lby;->h:Lel;

    :cond_0
    return-object v0
.end method

.method private final f(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 2
    iget v0, p0, Ldm;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldm;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Ldm;->b(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Ldm;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 170
    invoke-direct {p0, v1}, Ldm;->d(I)I

    move-result v3

    .line 171
    iget-object v4, p0, Ldm;->c:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 172
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 175
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 176
    invoke-static {p1, v5, v6}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 177
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 178
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 179
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 180
    invoke-static {p1, v5, v6}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 181
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 182
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 183
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 184
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 185
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 186
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 187
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 188
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 189
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 192
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 193
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 194
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 195
    invoke-static {p1, v5, v6}, Ldm;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcc;->a(Z)I

    move-result v3

    goto/16 :goto_3

    .line 196
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 197
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 198
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 199
    invoke-static {p1, v5, v6}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 200
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 201
    invoke-static {p1, v5, v6}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 202
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 203
    invoke-static {p1, v5, v6}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 204
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 205
    invoke-static {p1, v5, v6}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    .line 206
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 207
    invoke-static {p1, v5, v6}, Ldm;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    .line 208
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 209
    invoke-static {p1, v5, v6}, Ldm;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 210
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 211
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 212
    :pswitch_14
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 214
    invoke-static {p1, v5, v6}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 215
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 216
    invoke-static {p1, v5, v6}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 217
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 218
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 219
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 220
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 221
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 223
    invoke-static {p1, v5, v6}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 224
    invoke-static {p1, v5, v6}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcc;->a(Z)I

    move-result v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 225
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 226
    invoke-static {p1, v5, v6}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 227
    invoke-static {p1, v5, v6}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    goto :goto_4

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 228
    invoke-static {p1, v5, v6}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 229
    invoke-static {p1, v5, v6}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 230
    invoke-static {p1, v5, v6}, Lep;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 231
    invoke-static {p1, v5, v6}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 232
    invoke-static {v3, v4}, Lcc;->a(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 233
    iget-object v0, p0, Ldm;->q:Lem;

    invoke-virtual {v0, p1}, Lem;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 234
    iget-boolean v1, p0, Ldm;->h:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    .line 235
    iget-object p0, p0, Ldm;->r:Lbr;

    invoke-virtual {p0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object p0

    invoke-virtual {p0}, Lbt;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final a(Ljava/lang/Object;[BIIILaw;)I
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "endGroup",
            "registers"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 907
    sget-object v10, Ldm;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v6, v3

    const/4 v1, -0x1

    const/4 v7, -0x1

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_2b

    add-int/lit8 v3, v0, 0x1

    .line 908
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 909
    invoke-static {v0, v12, v3, v9}, Lat;->a(I[BILaw;)I

    move-result v0

    .line 910
    iget v3, v9, Law;->a:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 911
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Ldm;->a(II)I

    move-result v1

    goto :goto_2

    .line 912
    :cond_1
    invoke-direct {v15, v3}, Ldm;->f(I)I

    move-result v1

    :goto_2
    move v2, v1

    const-wide/16 v19, 0x0

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 p3, v3

    move v2, v4

    move v9, v5

    move-object/from16 v28, v10

    move v8, v11

    move/from16 v29, v16

    const/16 v22, 0x1

    goto/16 :goto_15

    .line 913
    :cond_2
    iget-object v1, v15, Ldm;->c:[I

    add-int/lit8 v22, v2, 0x1

    aget v8, v1, v22

    const/high16 v22, 0xff00000

    and-int v22, v8, v22

    ushr-int/lit8 v11, v22, 0x14

    const v22, 0xfffff

    move/from16 v24, v5

    and-int v5, v8, v22

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v25, v8

    if-gt v11, v5, :cond_12

    add-int/lit8 v5, v2, 0x2

    .line 914
    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/16 v23, 0x1

    shl-int v26, v23, v5

    and-int v1, v1, v22

    const/4 v5, -0x1

    if-eq v1, v7, :cond_4

    if-eq v7, v5, :cond_3

    int-to-long v8, v7

    .line 915
    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v6, v1

    .line 916
    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    :cond_4
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 p3, v7

    move/from16 v8, v24

    :goto_3
    const/4 v5, 0x1

    move v7, v4

    goto/16 :goto_f

    :pswitch_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    .line 917
    invoke-direct {v15, v2}, Ldm;->a(I)Ldw;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v22, v5

    move/from16 v8, v24

    move-object/from16 v5, p6

    .line 918
    invoke-static/range {v0 .. v5}, Lat;->a(Ldw;[BIIILaw;)I

    move-result v0

    and-int v1, v6, v26

    if-nez v1, :cond_5

    move-object/from16 v5, p6

    .line 919
    iget-object v1, v5, Law;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    .line 920
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Law;->c:Ljava/lang/Object;

    .line 921
    invoke-static {v1, v2}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 922
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v26

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_0

    :cond_6
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_b

    :pswitch_1
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 v8, v24

    move-object/from16 v5, p6

    if-nez v0, :cond_7

    move-wide v2, v12

    move-object/from16 v12, p2

    .line 923
    invoke-static {v12, v4, v5}, Lat;->b([BILaw;)I

    move-result v13

    .line 924
    iget-wide v0, v5, Law;->b:J

    .line 925
    invoke-static {v0, v1}, Lbj;->a(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v17

    .line 926
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v26

    move/from16 v0, p3

    goto/16 :goto_e

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_b

    :pswitch_2
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 927
    invoke-static {v12, v4, v13}, Lat;->a([BILaw;)I

    move-result v0

    .line 928
    iget v1, v13, Law;->a:I

    .line 929
    invoke-static {v1}, Lbj;->b(I)I

    move-result v1

    .line 930
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 931
    invoke-static {v12, v4, v13}, Lat;->a([BILaw;)I

    move-result v0

    .line 932
    iget v1, v13, Law;->a:I

    .line 933
    invoke-direct {v15, v9}, Ldm;->c(I)Lcf;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 934
    invoke-interface {v4, v1}, Lcf;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 935
    :cond_8
    invoke-static/range {p1 .. p1}, Ldm;->e(Ljava/lang/Object;)Lel;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lel;->a(ILjava/lang/Object;)V

    goto/16 :goto_e

    .line 936
    :cond_9
    :goto_5
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_4
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 937
    invoke-static {v12, v4, v13}, Lat;->e([BILaw;)I

    move-result v0

    .line 938
    iget-object v1, v13, Law;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v6, v6, v26

    goto/16 :goto_e

    :pswitch_5
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_b

    .line 939
    invoke-direct {v15, v9}, Ldm;->a(I)Ldw;

    move-result-object v0

    move/from16 v5, p4

    .line 940
    invoke-static {v0, v12, v4, v5, v13}, Lat;->a(Ldw;[BIILaw;)I

    move-result v0

    and-int v1, v6, v26

    if-nez v1, :cond_a

    .line 941
    iget-object v1, v13, Law;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 942
    :cond_a
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Law;->c:Ljava/lang/Object;

    .line 943
    invoke-static {v1, v4}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 944
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_b
    move/from16 v5, p4

    goto/16 :goto_b

    :pswitch_6
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    const/4 v1, 0x2

    move-object/from16 v12, p2

    move/from16 v5, p4

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v25, v0

    if-nez v0, :cond_c

    .line 945
    invoke-static {v12, v4, v13}, Lat;->c([BILaw;)I

    move-result v0

    goto :goto_7

    .line 946
    :cond_c
    invoke-static {v12, v4, v13}, Lat;->d([BILaw;)I

    move-result v0

    .line 947
    :goto_7
    iget-object v1, v13, Law;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_7
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move/from16 v5, p4

    move-object/from16 v13, p6

    if-nez v0, :cond_e

    .line 948
    invoke-static {v12, v4, v13}, Lat;->b([BILaw;)I

    move-result v0

    move/from16 p3, v0

    .line 949
    iget-wide v0, v13, Law;->b:J

    cmp-long v0, v0, v19

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    move/from16 v0, v16

    :goto_8
    invoke-static {v14, v2, v3, v0}, Lep;->a(Ljava/lang/Object;JZ)V

    or-int v6, v6, v26

    move/from16 v0, p3

    goto :goto_a

    :pswitch_8
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move/from16 v5, p4

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_e

    .line 950
    invoke-static {v12, v4}, Lat;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_9
    or-int v6, v6, v26

    :goto_a
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_0

    :cond_e
    :goto_b
    move/from16 p3, v7

    goto/16 :goto_3

    :pswitch_9
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move-wide v2, v12

    move/from16 v8, v24

    const/4 v1, 0x1

    move-object/from16 v12, p2

    move/from16 v5, p4

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_f

    .line 951
    invoke-static {v12, v4}, Lat;->b([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_f
    move/from16 p3, v7

    move v7, v4

    move v5, v1

    goto/16 :goto_f

    :pswitch_a
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_10

    .line 952
    invoke-static {v12, v7, v13}, Lat;->a([BILaw;)I

    move-result v0

    .line 953
    iget v1, v13, Law;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_b
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_10

    .line 954
    invoke-static {v12, v7, v13}, Lat;->b([BILaw;)I

    move-result v7

    .line 955
    iget-wide v4, v13, Law;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v26

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto/16 :goto_11

    :pswitch_c
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v24

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_10

    .line 956
    invoke-static {v12, v7}, Lat;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lep;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_d

    :cond_10
    const/4 v5, 0x1

    goto :goto_f

    :pswitch_d
    move v9, v2

    move v11, v3

    move/from16 v22, v5

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v24

    const/4 v5, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v5, :cond_11

    .line 957
    invoke-static {v12, v7}, Lat;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lep;->a(Ljava/lang/Object;JD)V

    :goto_c
    add-int/lit8 v0, v7, 0x8

    :goto_d
    or-int v6, v6, v26

    move/from16 v7, p3

    :goto_e
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    goto/16 :goto_11

    :cond_11
    :goto_f
    move/from16 v22, v5

    move v2, v7

    move/from16 v29, v9

    move-object/from16 v28, v10

    move/from16 v7, p3

    move v9, v8

    move/from16 p3, v11

    move/from16 v8, p5

    goto/16 :goto_15

    :cond_12
    move/from16 v23, v7

    move/from16 v8, v24

    const/4 v5, 0x1

    const/16 v22, -0x1

    move v7, v4

    move v4, v3

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v30

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_16

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 958
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj;

    .line 959
    invoke-interface {v0}, Lcj;->a()Z

    move-result v1

    if-nez v1, :cond_14

    .line 960
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_10

    :cond_13
    shl-int/lit8 v1, v1, 0x1

    .line 961
    :goto_10
    invoke-interface {v0, v1}, Lcj;->a(I)Lcj;

    move-result-object v0

    .line 962
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v5, v0

    .line 963
    invoke-direct {v15, v9}, Ldm;->a(I)Ldw;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move v11, v4

    move/from16 v4, p4

    move/from16 v24, v6

    move-object/from16 v6, p6

    .line 964
    invoke-static/range {v0 .. v6}, Lat;->a(Ldw;I[BIILcj;Law;)I

    move-result v0

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, v23

    move/from16 v6, v24

    :goto_11
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_15
    move/from16 v24, v6

    move/from16 p3, v4

    move/from16 v22, v5

    move v15, v7

    move/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v28, v10

    goto/16 :goto_12

    :cond_16
    move/from16 v24, v6

    const/16 v1, 0x31

    if-gt v11, v1, :cond_18

    move/from16 v6, v25

    int-to-long v12, v6

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v25, v2

    move-object/from16 v2, p2

    move v3, v7

    move/from16 p3, v4

    move/from16 v4, p4

    move/from16 v18, v5

    move v5, v8

    move/from16 v21, v6

    move/from16 v6, p3

    move v15, v7

    move/from16 v7, v21

    move/from16 v27, v8

    move/from16 v22, v18

    move v8, v9

    move/from16 v29, v9

    move-object/from16 v28, v10

    move-wide v9, v12

    move/from16 v12, p5

    move-wide/from16 v12, v25

    move-object/from16 v14, p6

    .line 965
    invoke-direct/range {v0 .. v14}, Ldm;->a(Ljava/lang/Object;[BIIIIIIJIJLaw;)I

    move-result v0

    if-ne v0, v15, :cond_17

    goto/16 :goto_14

    :cond_17
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v23

    move/from16 v6, v24

    move/from16 v3, v27

    move-object/from16 v10, v28

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_18
    move/from16 v21, v0

    move/from16 p3, v4

    move/from16 v22, v5

    move v15, v7

    move/from16 v27, v8

    move/from16 v29, v9

    move-object/from16 v28, v10

    move/from16 v6, v25

    move-wide/from16 v25, v2

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1a

    move/from16 v7, v21

    const/4 v0, 0x2

    if-ne v7, v0, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v29

    move-wide/from16 v6, v25

    move-object/from16 v8, p6

    .line 966
    invoke-direct/range {v0 .. v8}, Ldm;->a(Ljava/lang/Object;[BIIIJLaw;)I

    move-result v0

    if-ne v0, v15, :cond_17

    goto :goto_14

    :cond_19
    :goto_12
    move/from16 v8, p5

    move v2, v15

    :goto_13
    move/from16 v7, v23

    move/from16 v6, v24

    move/from16 v9, v27

    goto :goto_15

    :cond_1a
    move/from16 v7, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v27

    move v8, v6

    move/from16 v6, p3

    move v9, v11

    move-wide/from16 v10, v25

    move/from16 v12, v29

    move-object/from16 v13, p6

    .line 967
    invoke-direct/range {v0 .. v13}, Ldm;->a(Ljava/lang/Object;[BIIIIIIIJILaw;)I

    move-result v0

    if-ne v0, v15, :cond_2a

    :goto_14
    move/from16 v8, p5

    move v2, v0

    goto :goto_13

    :goto_15
    if-ne v9, v8, :cond_1c

    if-nez v8, :cond_1b

    goto :goto_16

    :cond_1b
    move-object/from16 v10, p0

    move-object/from16 v14, p1

    move v0, v2

    move v1, v6

    move v3, v9

    const/4 v2, -0x1

    move/from16 v6, p4

    goto/16 :goto_26

    :cond_1c
    :goto_16
    move-object/from16 v10, p0

    .line 968
    iget-boolean v0, v10, Ldm;->h:Z

    if-eqz v0, :cond_29

    move-object/from16 v11, p6

    iget-object v0, v11, Law;->d:Lbp;

    .line 969
    invoke-static {}, Lbp;->a()Lbp;

    move-result-object v1

    if-eq v0, v1, :cond_28

    .line 970
    iget-object v0, v10, Ldm;->g:Ldh;

    iget-object v1, v10, Ldm;->q:Lem;

    .line 971
    iget-object v3, v11, Law;->d:Lbp;

    move/from16 v12, p3

    .line 972
    invoke-virtual {v3, v0, v12}, Lbp;->a(Ldh;I)Lbo;

    move-result-object v13

    if-nez v13, :cond_1d

    .line 973
    invoke-static/range {p1 .. p1}, Ldm;->e(Ljava/lang/Object;)Lel;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 974
    invoke-static/range {v0 .. v5}, Lat;->a(I[BIILel;Law;)I

    move-result v0

    move-object/from16 v14, p1

    move/from16 p3, v6

    move/from16 v18, v7

    move-object/from16 v7, p2

    move/from16 v6, p4

    goto/16 :goto_25

    :cond_1d
    move-object/from16 v14, p1

    .line 975
    move-object v0, v14

    check-cast v0, Lby$d;

    invoke-virtual {v0}, Lby$d;->c()Lbt;

    .line 976
    iget-object v15, v0, Lby$d;->d:Lbt;

    .line 977
    iget-object v3, v13, Lbo;->d:Lby$c;

    .line 978
    iget-boolean v4, v3, Lby$c;->d:Z

    if-eqz v4, :cond_20

    .line 979
    iget-boolean v3, v3, Lby$c;->e:Z

    if-eqz v3, :cond_20

    .line 980
    invoke-virtual {v13}, Lbo;->c()Lex;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 981
    :pswitch_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v13, Lbo;->d:Lby$c;

    .line 982
    iget-object v1, v1, Lby$c;->c:Lex;

    .line 983
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Type cannot be packed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :pswitch_f
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    move-object/from16 v5, p2

    .line 985
    invoke-static {v5, v2, v0, v11}, Lat;->i([BILcj;Law;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_10
    move-object/from16 v5, p2

    .line 986
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    .line 987
    invoke-static {v5, v2, v0, v11}, Lat;->h([BILcj;Law;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_11
    move-object/from16 v5, p2

    .line 988
    new-instance v3, Lca;

    invoke-direct {v3}, Lca;-><init>()V

    .line 989
    invoke-static {v5, v2, v3, v11}, Lat;->a([BILcj;Law;)I

    move-result v2

    .line 990
    iget-object v4, v0, Lby;->h:Lel;

    move/from16 p3, v2

    .line 991
    sget-object v2, Lel;->a:Lel;

    if-ne v4, v2, :cond_1e

    move-object/from16 v4, v17

    .line 992
    :cond_1e
    iget-object v2, v13, Lbo;->d:Lby$c;

    .line 993
    iget-object v2, v2, Lby$c;->a:Lcg;

    .line 994
    invoke-static {v12, v3, v2, v4, v1}, Ldy;->a(ILjava/util/List;Lcg;Ljava/lang/Object;Lem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lel;

    if-eqz v1, :cond_1f

    .line 995
    iput-object v1, v0, Lby;->h:Lel;

    .line 996
    :cond_1f
    iget-object v0, v13, Lbo;->d:Lby$c;

    invoke-virtual {v15, v0, v3}, Lbt;->a(Lbs;Ljava/lang/Object;)V

    move/from16 v2, p3

    goto/16 :goto_18

    :pswitch_12
    move-object/from16 v5, p2

    .line 997
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    .line 998
    invoke-static {v5, v2, v0, v11}, Lat;->g([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_13
    move-object/from16 v5, p2

    .line 999
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    .line 1000
    invoke-static {v5, v2, v0, v11}, Lat;->c([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_14
    move-object/from16 v5, p2

    .line 1001
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    .line 1002
    invoke-static {v5, v2, v0, v11}, Lat;->d([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_15
    move-object/from16 v5, p2

    .line 1003
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    .line 1004
    invoke-static {v5, v2, v0, v11}, Lat;->a([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_16
    move-object/from16 v5, p2

    .line 1005
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    .line 1006
    invoke-static {v5, v2, v0, v11}, Lat;->b([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_17
    move-object/from16 v5, p2

    .line 1007
    new-instance v0, Lbx;

    invoke-direct {v0}, Lbx;-><init>()V

    .line 1008
    invoke-static {v5, v2, v0, v11}, Lat;->e([BILcj;Law;)I

    move-result v1

    goto :goto_17

    :pswitch_18
    move-object/from16 v5, p2

    .line 1009
    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    .line 1010
    invoke-static {v5, v2, v0, v11}, Lat;->f([BILcj;Law;)I

    move-result v1

    :goto_17
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    goto/16 :goto_22

    :cond_20
    move-object/from16 v5, p2

    .line 1011
    invoke-virtual {v13}, Lbo;->c()Lex;

    move-result-object v3

    sget-object v4, Lex;->n:Lex;

    if-ne v3, v4, :cond_23

    .line 1012
    invoke-static {v5, v2, v11}, Lat;->a([BILaw;)I

    move-result v2

    .line 1013
    iget-object v3, v13, Lbo;->d:Lby$c;

    .line 1014
    iget-object v3, v3, Lby$c;->a:Lcg;

    .line 1015
    iget v4, v11, Law;->a:I

    invoke-interface {v3, v4}, Lcg;->a(I)Lcd;

    move-result-object v3

    if-nez v3, :cond_22

    .line 1016
    iget-object v3, v0, Lby;->h:Lel;

    .line 1017
    sget-object v4, Lel;->a:Lel;

    if-ne v3, v4, :cond_21

    .line 1018
    new-instance v3, Lel;

    invoke-direct {v3}, Lel;-><init>()V

    .line 1019
    iput-object v3, v0, Lby;->h:Lel;

    .line 1020
    :cond_21
    iget v0, v11, Law;->a:I

    invoke-static {v12, v0, v3, v1}, Ldy;->a(IILjava/lang/Object;Lem;)Ljava/lang/Object;

    :goto_18
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    goto/16 :goto_23

    .line 1021
    :cond_22
    iget v0, v11, Law;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_1a

    .line 1022
    :cond_23
    invoke-virtual {v13}, Lbo;->c()Lex;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    :goto_19
    move-object/from16 v0, v17

    goto/16 :goto_20

    .line 1023
    :pswitch_19
    invoke-static {v5, v2, v11}, Lat;->b([BILaw;)I

    move-result v2

    .line 1024
    iget-wide v0, v11, Law;->b:J

    invoke-static {v0, v1}, Lbj;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_1a

    .line 1025
    :pswitch_1a
    invoke-static {v5, v2, v11}, Lat;->a([BILaw;)I

    move-result v2

    .line 1026
    iget v0, v11, Law;->a:I

    invoke-static {v0}, Lbj;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_1a
    move/from16 p3, v6

    move/from16 v18, v7

    move-object/from16 v0, v17

    goto :goto_1b

    .line 1027
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :pswitch_1c
    invoke-static {v5, v2, v11}, Lat;->e([BILaw;)I

    move-result v2

    .line 1029
    iget-object v0, v11, Law;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move/from16 v18, v7

    :goto_1b
    move/from16 v6, p4

    goto :goto_1c

    .line 1030
    :pswitch_1d
    sget-object v0, Ldu;->a:Ldu;

    .line 1031
    invoke-virtual {v13}, Lbo;->b()Ldh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v0

    move/from16 v4, p4

    .line 1032
    invoke-static {v0, v5, v2, v4, v11}, Lat;->a(Ldw;[BIILaw;)I

    move-result v2

    .line 1033
    iget-object v0, v11, Law;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move/from16 v18, v7

    move v6, v4

    :goto_1c
    move-object v7, v5

    goto/16 :goto_20

    :pswitch_1e
    move/from16 v4, p4

    shl-int/lit8 v0, v12, 0x3

    or-int/lit8 v17, v0, 0x4

    .line 1034
    sget-object v0, Ldu;->a:Ldu;

    .line 1035
    invoke-virtual {v13}, Lbo;->b()Ldh;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 p3, v6

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, p6

    .line 1036
    invoke-static/range {v0 .. v5}, Lat;->a(Ldw;[BIIILaw;)I

    move-result v2

    .line 1037
    iget-object v0, v11, Law;->c:Ljava/lang/Object;

    goto/16 :goto_20

    :pswitch_1f
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1038
    invoke-static {v7, v2, v11}, Lat;->c([BILaw;)I

    move-result v2

    .line 1039
    iget-object v0, v11, Law;->c:Ljava/lang/Object;

    goto/16 :goto_20

    :pswitch_20
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1040
    invoke-static {v7, v2, v11}, Lat;->b([BILaw;)I

    move-result v2

    .line 1041
    iget-wide v0, v11, Law;->b:J

    cmp-long v0, v0, v19

    if-eqz v0, :cond_24

    goto :goto_1d

    :cond_24
    move/from16 v22, v16

    :goto_1d
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_21
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1042
    invoke-static {v7, v2}, Lat;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_1e

    :pswitch_22
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1043
    invoke-static {v7, v2}, Lat;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_1f

    :pswitch_23
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1044
    invoke-static {v7, v2, v11}, Lat;->a([BILaw;)I

    move-result v2

    .line 1045
    iget v0, v11, Law;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_24
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1046
    invoke-static {v7, v2, v11}, Lat;->b([BILaw;)I

    move-result v2

    .line 1047
    iget-wide v0, v11, Law;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_25
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1048
    invoke-static {v7, v2}, Lat;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    :goto_1e
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_19

    :pswitch_26
    move/from16 p3, v6

    move/from16 v18, v7

    move/from16 v6, p4

    move-object v7, v5

    .line 1049
    invoke-static {v7, v2}, Lat;->c([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_1f
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_19

    .line 1050
    :goto_20
    invoke-virtual {v13}, Lbo;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1051
    iget-object v1, v13, Lbo;->d:Lby$c;

    invoke-virtual {v15, v1, v0}, Lbt;->b(Lbs;Ljava/lang/Object;)V

    goto :goto_23

    .line 1052
    :cond_25
    invoke-virtual {v13}, Lbo;->c()Lex;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_26

    const/16 v3, 0xa

    if-eq v1, v3, :cond_26

    goto :goto_21

    .line 1053
    :cond_26
    iget-object v1, v13, Lbo;->d:Lby$c;

    invoke-virtual {v15, v1}, Lbt;->a(Lbs;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1054
    invoke-static {v1, v0}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_27
    :goto_21
    move v1, v2

    .line 1055
    :goto_22
    iget-object v2, v13, Lbo;->d:Lby$c;

    invoke-virtual {v15, v2, v0}, Lbt;->a(Lbs;Ljava/lang/Object;)V

    move v2, v1

    :goto_23
    move v0, v2

    goto :goto_25

    :cond_28
    move-object/from16 v14, p1

    move/from16 v12, p3

    goto :goto_24

    :cond_29
    move-object/from16 v14, p1

    move/from16 v12, p3

    move-object/from16 v11, p6

    :goto_24
    move/from16 p3, v6

    move/from16 v18, v7

    move-object/from16 v7, p2

    move/from16 v6, p4

    .line 1056
    invoke-static/range {p1 .. p1}, Ldm;->e(Ljava/lang/Object;)Lel;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 1057
    invoke-static/range {v0 .. v5}, Lat;->a(I[BIILel;Law;)I

    move-result v0

    :goto_25
    move v13, v6

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move v1, v12

    move-object/from16 v10, v28

    move/from16 v2, v29

    move/from16 v6, p3

    move-object v12, v7

    move v11, v8

    move/from16 v7, v18

    goto/16 :goto_0

    :cond_2a
    move/from16 v12, p3

    move/from16 v9, v27

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    move/from16 v11, p5

    move v3, v9

    move v1, v12

    move/from16 v7, v23

    move/from16 v6, v24

    move-object/from16 v10, v28

    move/from16 v2, v29

    move-object/from16 v12, p2

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_2b
    move/from16 v24, v6

    move/from16 v23, v7

    move-object/from16 v28, v10

    move v8, v11

    move v6, v13

    move-object v10, v15

    move/from16 v1, v24

    const/4 v2, -0x1

    :goto_26
    if-eq v7, v2, :cond_2c

    int-to-long v4, v7

    move-object/from16 v2, v28

    .line 1058
    invoke-virtual {v2, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1059
    :cond_2c
    iget v1, v10, Ldm;->m:I

    move-object/from16 v2, v17

    :goto_27
    iget v4, v10, Ldm;->n:I

    if-ge v1, v4, :cond_2d

    .line 1060
    iget-object v4, v10, Ldm;->l:[I

    aget v4, v4, v1

    iget-object v5, v10, Ldm;->q:Lem;

    .line 1061
    invoke-direct {v10, v14, v4, v2, v5}, Ldm;->a(Ljava/lang/Object;ILjava/lang/Object;Lem;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lel;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_2d
    if-eqz v2, :cond_2e

    .line 1062
    iget-object v1, v10, Ldm;->q:Lem;

    .line 1063
    invoke-virtual {v1, v14, v2}, Lem;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    if-nez v8, :cond_30

    if-ne v0, v6, :cond_2f

    goto :goto_28

    .line 1064
    :cond_2f
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object v0

    throw v0

    :cond_30
    if-gt v0, v6, :cond_31

    if-ne v3, v8, :cond_31

    :goto_28
    return v0

    .line 1065
    :cond_31
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_23
        :pswitch_1b
        :pswitch_21
        :pswitch_22
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Ldm;->o:Ldn;

    iget-object p0, p0, Ldm;->g:Ldh;

    invoke-virtual {v0, p0}, Ldn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lez;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .line 248
    invoke-virtual {p2}, Lez;->a()I

    move-result v0

    sget v1, Lby$e;->l:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_8

    .line 249
    iget-object v0, p0, Ldm;->q:Lem;

    invoke-static {v0, p1, p2}, Ldm;->a(Lem;Ljava/lang/Object;Lez;)V

    .line 250
    iget-boolean v0, p0, Ldm;->h:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Ldm;->r:Lbr;

    invoke-virtual {v0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lbt;->a:Ldx;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-boolean v1, v0, Lbt;->c:Z

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Lcp;

    iget-object v0, v0, Lbt;->a:Ldx;

    invoke-virtual {v0}, Ldx;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcp;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, v0, Lbt;->a:Ldx;

    invoke-virtual {v0}, Ldx;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_1
    move-object v0, v3

    move-object v1, v0

    .line 257
    :goto_1
    iget-object v7, p0, Ldm;->c:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_2
    if-ltz v7, :cond_5

    .line 258
    invoke-direct {p0, v7}, Ldm;->d(I)I

    move-result v8

    .line 259
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    :goto_3
    if-eqz v0, :cond_3

    .line 260
    iget-object v10, p0, Ldm;->r:Lbr;

    invoke-virtual {v10, v0}, Lbr;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_3

    .line 261
    iget-object v10, p0, Ldm;->r:Lbr;

    invoke-virtual {v10, p2, v0}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_2
    move-object v0, v3

    goto :goto_3

    :cond_3
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    .line 263
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 264
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 265
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 266
    invoke-virtual {p2, v9, v8, v10}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    .line 267
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 268
    invoke-static {p1, v10, v11}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->e(IJ)V

    goto/16 :goto_4

    .line 269
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 270
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->f(II)V

    goto/16 :goto_4

    .line 271
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 272
    invoke-static {p1, v10, v11}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->b(IJ)V

    goto/16 :goto_4

    .line 273
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 274
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->a(II)V

    goto/16 :goto_4

    .line 275
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 276
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->b(II)V

    goto/16 :goto_4

    .line 277
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 278
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->e(II)V

    goto/16 :goto_4

    .line 279
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 280
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lba;

    .line 281
    invoke-virtual {p2, v9, v8}, Lez;->a(ILba;)V

    goto/16 :goto_4

    .line 282
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 283
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 284
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    .line 285
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 286
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto/16 :goto_4

    .line 287
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 288
    invoke-static {p1, v10, v11}, Ldm;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->a(IZ)V

    goto/16 :goto_4

    .line 289
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 290
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->d(II)V

    goto/16 :goto_4

    .line 291
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 292
    invoke-static {p1, v10, v11}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->d(IJ)V

    goto/16 :goto_4

    .line 293
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 294
    invoke-static {p1, v10, v11}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->c(II)V

    goto/16 :goto_4

    .line 295
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 296
    invoke-static {p1, v10, v11}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->c(IJ)V

    goto/16 :goto_4

    .line 297
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 298
    invoke-static {p1, v10, v11}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->a(IJ)V

    goto/16 :goto_4

    .line 299
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 300
    invoke-static {p1, v10, v11}, Ldm;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {p2, v9, v8}, Lez;->a(IF)V

    goto/16 :goto_4

    .line 301
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 302
    invoke-static {p1, v10, v11}, Ldm;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lez;->a(ID)V

    goto/16 :goto_4

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 303
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Ldm;->a(Lez;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 304
    :pswitch_13
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 305
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 306
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 307
    invoke-static {v9, v8, p2, v10}, Ldy;->b(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_4

    .line 308
    :pswitch_14
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 309
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 310
    invoke-static {v9, v8, p2, v4}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 311
    :pswitch_15
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 312
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 313
    invoke-static {v9, v8, p2, v4}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 314
    :pswitch_16
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 315
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 316
    invoke-static {v9, v8, p2, v4}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 317
    :pswitch_17
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 318
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 319
    invoke-static {v9, v8, p2, v4}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 320
    :pswitch_18
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 321
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 322
    invoke-static {v9, v8, p2, v4}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 323
    :pswitch_19
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 324
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 325
    invoke-static {v9, v8, p2, v4}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 326
    :pswitch_1a
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 327
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 328
    invoke-static {v9, v8, p2, v4}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 329
    :pswitch_1b
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 330
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 331
    invoke-static {v9, v8, p2, v4}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 332
    :pswitch_1c
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 333
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 334
    invoke-static {v9, v8, p2, v4}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 335
    :pswitch_1d
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 336
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 337
    invoke-static {v9, v8, p2, v4}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 338
    :pswitch_1e
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 339
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 340
    invoke-static {v9, v8, p2, v4}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 341
    :pswitch_1f
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 342
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 343
    invoke-static {v9, v8, p2, v4}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 344
    :pswitch_20
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 345
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 346
    invoke-static {v9, v8, p2, v4}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 347
    :pswitch_21
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 348
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 349
    invoke-static {v9, v8, p2, v4}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 350
    :pswitch_22
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 351
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 352
    invoke-static {v9, v8, p2, v5}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 353
    :pswitch_23
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 354
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 355
    invoke-static {v9, v8, p2, v5}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 356
    :pswitch_24
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 357
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 358
    invoke-static {v9, v8, p2, v5}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 359
    :pswitch_25
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 360
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 361
    invoke-static {v9, v8, p2, v5}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 362
    :pswitch_26
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 363
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 364
    invoke-static {v9, v8, p2, v5}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 365
    :pswitch_27
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 366
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 367
    invoke-static {v9, v8, p2, v5}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 368
    :pswitch_28
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 369
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 370
    invoke-static {v9, v8, p2}, Ldy;->b(ILjava/util/List;Lez;)V

    goto/16 :goto_4

    .line 371
    :pswitch_29
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 372
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 373
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 374
    invoke-static {v9, v8, p2, v10}, Ldy;->a(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_4

    .line 375
    :pswitch_2a
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 376
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 377
    invoke-static {v9, v8, p2}, Ldy;->a(ILjava/util/List;Lez;)V

    goto/16 :goto_4

    .line 378
    :pswitch_2b
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 379
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 380
    invoke-static {v9, v8, p2, v5}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 381
    :pswitch_2c
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 382
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 383
    invoke-static {v9, v8, p2, v5}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 384
    :pswitch_2d
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 385
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 386
    invoke-static {v9, v8, p2, v5}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 387
    :pswitch_2e
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 388
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 389
    invoke-static {v9, v8, p2, v5}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 390
    :pswitch_2f
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 391
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 392
    invoke-static {v9, v8, p2, v5}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 393
    :pswitch_30
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 394
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 395
    invoke-static {v9, v8, p2, v5}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 396
    :pswitch_31
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 397
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 398
    invoke-static {v9, v8, p2, v5}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 399
    :pswitch_32
    iget-object v9, p0, Ldm;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 400
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 401
    invoke-static {v9, v8, p2, v5}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_4

    .line 402
    :pswitch_33
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 403
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 404
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    .line 405
    invoke-virtual {p2, v9, v8, v10}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    .line 406
    :pswitch_34
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 407
    invoke-static {p1, v10, v11}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 408
    invoke-virtual {p2, v9, v10, v11}, Lez;->e(IJ)V

    goto/16 :goto_4

    .line 409
    :pswitch_35
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 410
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 411
    invoke-virtual {p2, v9, v8}, Lez;->f(II)V

    goto/16 :goto_4

    .line 412
    :pswitch_36
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 413
    invoke-static {p1, v10, v11}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 414
    invoke-virtual {p2, v9, v10, v11}, Lez;->b(IJ)V

    goto/16 :goto_4

    .line 415
    :pswitch_37
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 416
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 417
    invoke-virtual {p2, v9, v8}, Lez;->a(II)V

    goto/16 :goto_4

    .line 418
    :pswitch_38
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 419
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 420
    invoke-virtual {p2, v9, v8}, Lez;->b(II)V

    goto/16 :goto_4

    .line 421
    :pswitch_39
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 422
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 423
    invoke-virtual {p2, v9, v8}, Lez;->e(II)V

    goto/16 :goto_4

    .line 424
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 425
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lba;

    .line 426
    invoke-virtual {p2, v9, v8}, Lez;->a(ILba;)V

    goto/16 :goto_4

    .line 427
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 428
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 429
    invoke-direct {p0, v7}, Ldm;->a(I)Ldw;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_4

    .line 430
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 431
    invoke-static {p1, v10, v11}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto/16 :goto_4

    .line 432
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 433
    invoke-static {p1, v10, v11}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 434
    invoke-virtual {p2, v9, v8}, Lez;->a(IZ)V

    goto/16 :goto_4

    .line 435
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 436
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 437
    invoke-virtual {p2, v9, v8}, Lez;->d(II)V

    goto :goto_4

    .line 438
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 439
    invoke-static {p1, v10, v11}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 440
    invoke-virtual {p2, v9, v10, v11}, Lez;->d(IJ)V

    goto :goto_4

    .line 441
    :pswitch_40
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 442
    invoke-static {p1, v10, v11}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 443
    invoke-virtual {p2, v9, v8}, Lez;->c(II)V

    goto :goto_4

    .line 444
    :pswitch_41
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 445
    invoke-static {p1, v10, v11}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 446
    invoke-virtual {p2, v9, v10, v11}, Lez;->c(IJ)V

    goto :goto_4

    .line 447
    :pswitch_42
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 448
    invoke-static {p1, v10, v11}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 449
    invoke-virtual {p2, v9, v10, v11}, Lez;->a(IJ)V

    goto :goto_4

    .line 450
    :pswitch_43
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 451
    invoke-static {p1, v10, v11}, Lep;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 452
    invoke-virtual {p2, v9, v8}, Lez;->a(IF)V

    goto :goto_4

    .line 453
    :pswitch_44
    invoke-direct {p0, p1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 454
    invoke-static {p1, v10, v11}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 455
    invoke-virtual {p2, v9, v10, v11}, Lez;->a(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_2

    :cond_5
    :goto_5
    if-eqz v0, :cond_7

    .line 456
    iget-object p1, p0, Ldm;->r:Lbr;

    invoke-virtual {p1, p2, v0}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v0, p1

    goto :goto_5

    :cond_6
    move-object v0, v3

    goto :goto_5

    :cond_7
    return-void

    .line 458
    :cond_8
    iget-boolean v0, p0, Ldm;->j:Z

    if-eqz v0, :cond_10

    .line 459
    iget-boolean v0, p0, Ldm;->h:Z

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Ldm;->r:Lbr;

    invoke-virtual {v0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object v0

    .line 461
    iget-object v1, v0, Lbt;->a:Ldx;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 462
    invoke-virtual {v0}, Lbt;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_9
    move-object v0, v3

    move-object v1, v0

    .line 464
    :goto_6
    iget-object v7, p0, Ldm;->c:[I

    array-length v7, v7

    move v8, v5

    :goto_7
    if-ge v8, v7, :cond_d

    .line 465
    invoke-direct {p0, v8}, Ldm;->d(I)I

    move-result v9

    .line 466
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    :goto_8
    if-eqz v1, :cond_b

    .line 467
    iget-object v11, p0, Ldm;->r:Lbr;

    invoke-virtual {v11, v1}, Lbr;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_b

    .line 468
    iget-object v11, p0, Ldm;->r:Lbr;

    invoke-virtual {v11, p2, v1}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_8

    :cond_a
    move-object v1, v3

    goto :goto_8

    :cond_b
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_9

    .line 470
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 471
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 472
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    .line 473
    invoke-virtual {p2, v10, v9, v11}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_9

    .line 474
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 475
    invoke-static {p1, v11, v12}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->e(IJ)V

    goto/16 :goto_9

    .line 476
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 477
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->f(II)V

    goto/16 :goto_9

    .line 478
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 479
    invoke-static {p1, v11, v12}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->b(IJ)V

    goto/16 :goto_9

    .line 480
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 481
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->a(II)V

    goto/16 :goto_9

    .line 482
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 483
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->b(II)V

    goto/16 :goto_9

    .line 484
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 485
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->e(II)V

    goto/16 :goto_9

    .line 486
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 487
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lba;

    .line 488
    invoke-virtual {p2, v10, v9}, Lez;->a(ILba;)V

    goto/16 :goto_9

    .line 489
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 490
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 491
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_9

    .line 492
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 493
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto/16 :goto_9

    .line 494
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 495
    invoke-static {p1, v11, v12}, Ldm;->f(Ljava/lang/Object;J)Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->a(IZ)V

    goto/16 :goto_9

    .line 496
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 497
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->d(II)V

    goto/16 :goto_9

    .line 498
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 499
    invoke-static {p1, v11, v12}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->d(IJ)V

    goto/16 :goto_9

    .line 500
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 501
    invoke-static {p1, v11, v12}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->c(II)V

    goto/16 :goto_9

    .line 502
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 503
    invoke-static {p1, v11, v12}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->c(IJ)V

    goto/16 :goto_9

    .line 504
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 505
    invoke-static {p1, v11, v12}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->a(IJ)V

    goto/16 :goto_9

    .line 506
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 507
    invoke-static {p1, v11, v12}, Ldm;->c(Ljava/lang/Object;J)F

    move-result v9

    invoke-virtual {p2, v10, v9}, Lez;->a(IF)V

    goto/16 :goto_9

    .line 508
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 509
    invoke-static {p1, v11, v12}, Ldm;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lez;->a(ID)V

    goto/16 :goto_9

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 510
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Ldm;->a(Lez;ILjava/lang/Object;I)V

    goto/16 :goto_9

    .line 511
    :pswitch_58
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 512
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 513
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    .line 514
    invoke-static {v10, v9, p2, v11}, Ldy;->b(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_9

    .line 515
    :pswitch_59
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 516
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 517
    invoke-static {v10, v9, p2, v4}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 518
    :pswitch_5a
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 519
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 520
    invoke-static {v10, v9, p2, v4}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 521
    :pswitch_5b
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 522
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 523
    invoke-static {v10, v9, p2, v4}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 524
    :pswitch_5c
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 525
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 526
    invoke-static {v10, v9, p2, v4}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 527
    :pswitch_5d
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 528
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 529
    invoke-static {v10, v9, p2, v4}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 530
    :pswitch_5e
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 531
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 532
    invoke-static {v10, v9, p2, v4}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 533
    :pswitch_5f
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 534
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 535
    invoke-static {v10, v9, p2, v4}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 536
    :pswitch_60
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 537
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 538
    invoke-static {v10, v9, p2, v4}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 539
    :pswitch_61
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 540
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 541
    invoke-static {v10, v9, p2, v4}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 542
    :pswitch_62
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 543
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 544
    invoke-static {v10, v9, p2, v4}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 545
    :pswitch_63
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 546
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 547
    invoke-static {v10, v9, p2, v4}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 548
    :pswitch_64
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 549
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 550
    invoke-static {v10, v9, p2, v4}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 551
    :pswitch_65
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 552
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 553
    invoke-static {v10, v9, p2, v4}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 554
    :pswitch_66
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 555
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 556
    invoke-static {v10, v9, p2, v4}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 557
    :pswitch_67
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 558
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 559
    invoke-static {v10, v9, p2, v5}, Ldy;->e(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 560
    :pswitch_68
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 561
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 562
    invoke-static {v10, v9, p2, v5}, Ldy;->j(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 563
    :pswitch_69
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 564
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 565
    invoke-static {v10, v9, p2, v5}, Ldy;->g(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 566
    :pswitch_6a
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 567
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 568
    invoke-static {v10, v9, p2, v5}, Ldy;->l(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 569
    :pswitch_6b
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 570
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 571
    invoke-static {v10, v9, p2, v5}, Ldy;->m(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 572
    :pswitch_6c
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 573
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 574
    invoke-static {v10, v9, p2, v5}, Ldy;->i(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 575
    :pswitch_6d
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 576
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 577
    invoke-static {v10, v9, p2}, Ldy;->b(ILjava/util/List;Lez;)V

    goto/16 :goto_9

    .line 578
    :pswitch_6e
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 579
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 580
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    .line 581
    invoke-static {v10, v9, p2, v11}, Ldy;->a(ILjava/util/List;Lez;Ldw;)V

    goto/16 :goto_9

    .line 582
    :pswitch_6f
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 583
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 584
    invoke-static {v10, v9, p2}, Ldy;->a(ILjava/util/List;Lez;)V

    goto/16 :goto_9

    .line 585
    :pswitch_70
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 586
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 587
    invoke-static {v10, v9, p2, v5}, Ldy;->n(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 588
    :pswitch_71
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 589
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 590
    invoke-static {v10, v9, p2, v5}, Ldy;->k(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 591
    :pswitch_72
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 592
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 593
    invoke-static {v10, v9, p2, v5}, Ldy;->f(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 594
    :pswitch_73
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 595
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 596
    invoke-static {v10, v9, p2, v5}, Ldy;->h(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 597
    :pswitch_74
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 598
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 599
    invoke-static {v10, v9, p2, v5}, Ldy;->d(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 600
    :pswitch_75
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 601
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 602
    invoke-static {v10, v9, p2, v5}, Ldy;->c(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 603
    :pswitch_76
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 604
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 605
    invoke-static {v10, v9, p2, v5}, Ldy;->b(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 606
    :pswitch_77
    iget-object v10, p0, Ldm;->c:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 607
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 608
    invoke-static {v10, v9, p2, v5}, Ldy;->a(ILjava/util/List;Lez;Z)V

    goto/16 :goto_9

    .line 609
    :pswitch_78
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 610
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 611
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    .line 612
    invoke-virtual {p2, v10, v9, v11}, Lez;->b(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_9

    .line 613
    :pswitch_79
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 614
    invoke-static {p1, v11, v12}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 615
    invoke-virtual {p2, v10, v11, v12}, Lez;->e(IJ)V

    goto/16 :goto_9

    .line 616
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 617
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 618
    invoke-virtual {p2, v10, v9}, Lez;->f(II)V

    goto/16 :goto_9

    .line 619
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 620
    invoke-static {p1, v11, v12}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 621
    invoke-virtual {p2, v10, v11, v12}, Lez;->b(IJ)V

    goto/16 :goto_9

    .line 622
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 623
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 624
    invoke-virtual {p2, v10, v9}, Lez;->a(II)V

    goto/16 :goto_9

    .line 625
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 626
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 627
    invoke-virtual {p2, v10, v9}, Lez;->b(II)V

    goto/16 :goto_9

    .line 628
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 629
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 630
    invoke-virtual {p2, v10, v9}, Lez;->e(II)V

    goto/16 :goto_9

    .line 631
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 632
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lba;

    .line 633
    invoke-virtual {p2, v10, v9}, Lez;->a(ILba;)V

    goto/16 :goto_9

    .line 634
    :pswitch_80
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 635
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 636
    invoke-direct {p0, v8}, Ldm;->a(I)Ldw;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lez;->a(ILjava/lang/Object;Ldw;)V

    goto/16 :goto_9

    .line 637
    :pswitch_81
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 638
    invoke-static {p1, v11, v12}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Ldm;->a(ILjava/lang/Object;Lez;)V

    goto/16 :goto_9

    .line 639
    :pswitch_82
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 640
    invoke-static {p1, v11, v12}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v9

    .line 641
    invoke-virtual {p2, v10, v9}, Lez;->a(IZ)V

    goto/16 :goto_9

    .line 642
    :pswitch_83
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 643
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 644
    invoke-virtual {p2, v10, v9}, Lez;->d(II)V

    goto :goto_9

    .line 645
    :pswitch_84
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 646
    invoke-static {p1, v11, v12}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 647
    invoke-virtual {p2, v10, v11, v12}, Lez;->d(IJ)V

    goto :goto_9

    .line 648
    :pswitch_85
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 649
    invoke-static {p1, v11, v12}, Lep;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 650
    invoke-virtual {p2, v10, v9}, Lez;->c(II)V

    goto :goto_9

    .line 651
    :pswitch_86
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 652
    invoke-static {p1, v11, v12}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 653
    invoke-virtual {p2, v10, v11, v12}, Lez;->c(IJ)V

    goto :goto_9

    .line 654
    :pswitch_87
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 655
    invoke-static {p1, v11, v12}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 656
    invoke-virtual {p2, v10, v11, v12}, Lez;->a(IJ)V

    goto :goto_9

    .line 657
    :pswitch_88
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 658
    invoke-static {p1, v11, v12}, Lep;->d(Ljava/lang/Object;J)F

    move-result v9

    .line 659
    invoke-virtual {p2, v10, v9}, Lez;->a(IF)V

    goto :goto_9

    .line 660
    :pswitch_89
    invoke-direct {p0, p1, v8}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_c

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 661
    invoke-static {p1, v11, v12}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 662
    invoke-virtual {p2, v10, v11, v12}, Lez;->a(ID)V

    :cond_c
    :goto_9
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_7

    :cond_d
    :goto_a
    if-eqz v1, :cond_f

    .line 663
    iget-object v2, p0, Ldm;->r:Lbr;

    invoke-virtual {v2, p2, v1}, Lbr;->a(Lez;Ljava/util/Map$Entry;)V

    .line 664
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_a

    :cond_e
    move-object v1, v3

    goto :goto_a

    .line 665
    :cond_f
    iget-object p0, p0, Ldm;->q:Lem;

    invoke-static {p0, p1, p2}, Ldm;->a(Lem;Ljava/lang/Object;Lez;)V

    return-void

    .line 666
    :cond_10
    invoke-direct {p0, p1, p2}, Ldm;->b(Ljava/lang/Object;Lez;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILaw;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "registers"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1066
    iget-boolean v0, v15, Ldm;->j:Z

    if-eqz v0, :cond_12

    .line 1067
    sget-object v9, Ldm;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v10

    move/from16 v2, v16

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 1068
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 1069
    invoke-static {v0, v12, v3, v11}, Lat;->a(I[BILaw;)I

    move-result v0

    .line 1070
    iget v3, v11, Law;->a:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 1071
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Ldm;->a(II)I

    move-result v0

    goto :goto_2

    .line 1072
    :cond_1
    invoke-direct {v15, v7}, Ldm;->f(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    move/from16 v26, v10

    move/from16 v19, v16

    goto/16 :goto_f

    .line 1073
    :cond_2
    iget-object v0, v15, Ldm;->c:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    if-nez v6, :cond_a

    .line 1074
    invoke-static {v12, v8, v11}, Lat;->b([BILaw;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 1075
    iget-wide v0, v11, Law;->b:J

    .line 1076
    invoke-static {v0, v1}, Lbj;->a(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 1077
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1078
    invoke-static {v12, v8, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 1079
    iget v1, v11, Law;->a:I

    .line 1080
    invoke-static {v1}, Lbj;->b(I)I

    move-result v1

    .line 1081
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1082
    invoke-static {v12, v8, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 1083
    iget v1, v11, Law;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1084
    invoke-static {v12, v8, v11}, Lat;->e([BILaw;)I

    move-result v0

    .line 1085
    iget-object v1, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 1086
    invoke-direct {v15, v4}, Ldm;->a(I)Ldw;

    move-result-object v0

    .line 1087
    invoke-static {v0, v12, v8, v13, v11}, Lat;->a(Ldw;[BIILaw;)I

    move-result v0

    .line 1088
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1089
    iget-object v1, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1090
    :cond_3
    iget-object v5, v11, Law;->c:Ljava/lang/Object;

    .line 1091
    invoke-static {v1, v5}, Lcc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1092
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 1093
    invoke-static {v12, v8, v11}, Lat;->c([BILaw;)I

    move-result v0

    goto :goto_3

    .line 1094
    :cond_4
    invoke-static {v12, v8, v11}, Lat;->d([BILaw;)I

    move-result v0

    .line 1095
    :goto_3
    iget-object v1, v11, Law;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 1096
    invoke-static {v12, v8, v11}, Lat;->b([BILaw;)I

    move-result v1

    .line 1097
    iget-wide v5, v11, Law;->b:J

    const-wide/16 v19, 0x0

    cmp-long v5, v5, v19

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v0, v16

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lep;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 1098
    invoke-static {v12, v8}, Lat;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_9

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 1099
    invoke-static {v12, v8}, Lat;->b([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1100
    invoke-static {v12, v8, v11}, Lat;->a([BILaw;)I

    move-result v0

    .line 1101
    iget v1, v11, Law;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 1102
    invoke-static {v12, v8, v11}, Lat;->b([BILaw;)I

    move-result v6

    .line 1103
    iget-wide v4, v11, Law;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 1104
    invoke-static {v12, v8}, Lat;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lep;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 1105
    invoke-static {v12, v8}, Lat;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lep;->a(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    :goto_9
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_c

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 1106
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj;

    .line 1107
    invoke-interface {v0}, Lcj;->a()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_a

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 1109
    :goto_a
    invoke-interface {v0, v3}, Lcj;->a(I)Lcj;

    move-result-object v0

    .line 1110
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 1111
    invoke-direct {v15, v4}, Ldm;->a(I)Ldw;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1112
    invoke-static/range {v0 .. v6}, Lat;->a(Ldw;I[BIILcj;Law;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto :goto_9

    :cond_a
    :goto_b
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_c
    const/16 v26, -0x1

    goto/16 :goto_d

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 1113
    invoke-direct/range {v0 .. v14}, Ldm;->a(Ljava/lang/Object;[BIIIIIIJIJLaw;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 1114
    invoke-direct/range {v0 .. v8}, Ldm;->a(Ljava/lang/Object;[BIIIJLaw;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v15

    goto :goto_f

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 1115
    invoke-direct/range {v0 .. v13}, Ldm;->a(Ljava/lang/Object;[BIIIIIIIJILaw;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_e
    move v2, v0

    .line 1116
    :goto_f
    invoke-static/range {p1 .. p1}, Ldm;->e(Ljava/lang/Object;)Lel;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 1117
    invoke-static/range {v0 .. v5}, Lat;->a(I[BIILel;Law;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    move/from16 v10, v26

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 1118
    :cond_11
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 1119
    invoke-virtual/range {v0 .. v6}, Ldm;->a(Ljava/lang/Object;[BIIILaw;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ldm;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 110
    invoke-direct {p0, v2}, Ldm;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 111
    :pswitch_0
    invoke-direct {p0, v2}, Ldm;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 112
    invoke-static {p1, v4, v5}, Lep;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 113
    invoke-static {p2, v4, v5}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 114
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 115
    invoke-static {v4, v5}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 116
    :pswitch_1
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 117
    invoke-static {v3, v4}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 118
    :pswitch_2
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 119
    invoke-static {v3, v4}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 120
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 123
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-static {p1, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 125
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 127
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-static {p1, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 129
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 131
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 133
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 135
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 138
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 140
    invoke-static {v4, v5}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 141
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 143
    invoke-static {v4, v5}, Ldy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 144
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-static {p1, v6, v7}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 146
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 148
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-static {p1, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 150
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-static {p1, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lep;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 152
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    invoke-static {p1, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_1

    .line 154
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {p1, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_1

    .line 156
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-static {p1, v6, v7}, Lep;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 158
    invoke-static {p2, v6, v7}, Lep;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 159
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Ldm;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-static {p1, v6, v7}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 161
    invoke-static {p2, v6, v7}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Ldm;->q:Lem;

    invoke-virtual {v0, p1}, Lem;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget-object v2, p0, Ldm;->q:Lem;

    invoke-virtual {v2, p2}, Lem;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 165
    :cond_3
    iget-boolean v0, p0, Ldm;->h:Z

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Ldm;->r:Lbr;

    invoke-virtual {v0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object p1

    .line 167
    iget-object p0, p0, Ldm;->r:Lbr;

    invoke-virtual {p0, p2}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object p0

    .line 168
    invoke-virtual {p1, p0}, Lbt;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 258
    iget v0, p0, Ldm;->m:I

    :goto_0
    iget v1, p0, Ldm;->n:I

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Ldm;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Ldm;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 260
    invoke-static {p1, v1, v2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v4, p0, Ldm;->s:Ldd;

    invoke-virtual {v4, v3}, Ldd;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Ldm;->l:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 263
    iget-object v2, p0, Ldm;->p:Lct;

    iget-object v3, p0, Ldm;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lct;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    :cond_2
    iget-object v0, p0, Ldm;->q:Lem;

    invoke-virtual {v0, p1}, Lem;->b(Ljava/lang/Object;)V

    .line 265
    iget-boolean v0, p0, Ldm;->h:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object p0, p0, Ldm;->r:Lbr;

    invoke-virtual {p0, p1}, Lbr;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ldm;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Ldm;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 4
    iget-object v4, p0, Ldm;->c:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Ldm;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v4, v0}, Ldm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Ldm;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v4, v0}, Ldm;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    iget-object v1, p0, Ldm;->s:Ldd;

    invoke-static {v1, p1, p2, v2, v3}, Ldy;->a(Ldd;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_5
    iget-object v1, p0, Ldm;->p:Lct;

    invoke-virtual {v1, p1, p2, v2, v3}, Lct;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 15
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Ldm;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 16
    :pswitch_7
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p2, v2, v3}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 19
    :pswitch_8
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 21
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 22
    :pswitch_9
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p2, v2, v3}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JJ)V

    .line 24
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 27
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 28
    :pswitch_b
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 31
    :pswitch_c
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_d
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Ldm;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_f
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v2, v3}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_10
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v2, v3}, Lep;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JZ)V

    .line 43
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_11
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 46
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 47
    :pswitch_12
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p2, v2, v3}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JJ)V

    .line 49
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 50
    :pswitch_13
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p2, v2, v3}, Lep;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JI)V

    .line 52
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 53
    :pswitch_14
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v2, v3}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JJ)V

    .line 55
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 56
    :pswitch_15
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p2, v2, v3}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 59
    :pswitch_16
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v2, v3}, Lep;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lep;->a(Ljava/lang/Object;JF)V

    .line 61
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 62
    :pswitch_17
    invoke-direct {p0, p2, v0}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v2, v3}, Lep;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lep;->a(Ljava/lang/Object;JD)V

    .line 64
    invoke-direct {p0, p1, v0}, Ldm;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 65
    :cond_1
    iget-boolean v0, p0, Ldm;->j:Z

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Ldm;->q:Lem;

    invoke-static {v0, p1, p2}, Ldy;->a(Lem;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-boolean v0, p0, Ldm;->h:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object p0, p0, Ldm;->r:Lbr;

    invoke-static {p0, p1, p2}, Ldy;->a(Lbr;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v2

    .line 2
    :goto_0
    iget v4, p0, Ldm;->m:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_e

    .line 3
    iget-object v4, p0, Ldm;->l:[I

    aget v4, v4, v2

    .line 4
    iget-object v6, p0, Ldm;->c:[I

    aget v6, v6, v4

    .line 5
    invoke-direct {p0, v4}, Ldm;->d(I)I

    move-result v7

    .line 6
    iget-boolean v8, p0, Ldm;->j:Z

    const v9, 0xfffff

    if-nez v8, :cond_0

    .line 7
    iget-object v8, p0, Ldm;->c:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v1, :cond_1

    .line 8
    sget-object v1, Ldm;->b:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v10

    goto :goto_1

    :cond_0
    move v8, v0

    :cond_1
    :goto_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    if-eqz v10, :cond_3

    .line 9
    invoke-direct {p0, p1, v4, v3, v8}, Ldm;->a(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_3

    return v0

    :cond_3
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_c

    const/16 v11, 0x11

    if-eq v10, v11, :cond_c

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_9

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_8

    const/16 v8, 0x44

    if-eq v10, v8, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_4

    goto/16 :goto_5

    .line 10
    :cond_4
    iget-object v6, p0, Ldm;->s:Ldd;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 11
    invoke-static {p1, v7, v8}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ldd;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 12
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 13
    invoke-direct {p0, v4}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 14
    iget-object v7, p0, Ldm;->s:Ldd;

    invoke-virtual {v7, v4}, Ldd;->e(Ljava/lang/Object;)Ldb;

    move-result-object v4

    .line 15
    iget-object v4, v4, Ldb;->c:Lex;

    .line 16
    iget-object v4, v4, Lex;->s:Lfa;

    .line 17
    sget-object v7, Lfa;->i:Lfa;

    if-ne v4, v7, :cond_7

    const/4 v4, 0x0

    .line 18
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_6

    .line 19
    sget-object v4, Ldu;->a:Ldu;

    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Ldu;->a(Ljava/lang/Class;)Ldw;

    move-result-object v4

    .line 21
    :cond_6
    invoke-interface {v4, v7}, Ldw;->c(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v0

    :cond_7
    if-nez v5, :cond_d

    return v0

    .line 22
    :cond_8
    invoke-direct {p0, p1, v6, v4}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 23
    invoke-direct {p0, v4}, Ldm;->a(I)Ldw;

    move-result-object v4

    invoke-static {p1, v7, v4}, Ldm;->a(Ljava/lang/Object;ILdw;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_9
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 24
    invoke-static {p1, v6, v7}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 25
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 26
    invoke-direct {p0, v4}, Ldm;->a(I)Ldw;

    move-result-object v4

    move v7, v0

    .line 27
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 28
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 29
    invoke-interface {v4, v8}, Ldw;->c(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    move v5, v0

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v5, :cond_d

    return v0

    .line 30
    :cond_c
    invoke-direct {p0, p1, v4, v3, v8}, Ldm;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 31
    invoke-direct {p0, v4}, Ldm;->a(I)Ldw;

    move-result-object v4

    invoke-static {p1, v7, v4}, Ldm;->a(Ljava/lang/Object;ILdw;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_e
    iget-boolean v1, p0, Ldm;->h:Z

    if-eqz v1, :cond_f

    .line 33
    iget-object p0, p0, Ldm;->r:Lbr;

    invoke-virtual {p0, p1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object p0

    invoke-virtual {p0}, Lbt;->c()Z

    move-result p0

    if-nez p0, :cond_f

    return v0

    :cond_f
    return v5
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Ldm;->j:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x0

    if-eqz v2, :cond_13

    .line 2
    sget-object v2, Ldm;->b:Lsun/misc/Unsafe;

    move v7, v6

    move v8, v7

    .line 3
    :goto_0
    iget-object v9, v0, Ldm;->c:[I

    array-length v9, v9

    if-ge v7, v9, :cond_12

    .line 4
    invoke-direct {v0, v7}, Ldm;->d(I)I

    move-result v9

    and-int/2addr v3, v9

    ushr-int/lit8 v3, v3, 0x14

    .line 5
    iget-object v10, v0, Ldm;->c:[I

    aget v11, v10, v7

    and-int/2addr v9, v5

    int-to-long v12, v9

    .line 6
    sget-object v9, Lbv;->d:Lbv;

    .line 7
    iget v9, v9, Lbv;->h:I

    if-lt v3, v9, :cond_0

    .line 8
    sget-object v9, Lbv;->e:Lbv;

    .line 9
    iget v9, v9, Lbv;->h:I

    if-gt v3, v9, :cond_0

    add-int/lit8 v9, v7, 0x2

    .line 10
    aget v9, v10, v9

    and-int/2addr v9, v5

    goto :goto_1

    :cond_0
    move v9, v6

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 11
    :pswitch_0
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 12
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    .line 13
    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 14
    invoke-static {v11, v3, v9}, Lbl;->c(ILdh;Ldw;)I

    move-result v3

    goto/16 :goto_3

    .line 15
    :pswitch_1
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 16
    invoke-static {v1, v12, v13}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->f(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 17
    :pswitch_2
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 18
    invoke-static {v1, v12, v13}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->h(II)I

    move-result v3

    goto/16 :goto_3

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 20
    invoke-static {v11, v9, v10}, Lbl;->h(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 22
    invoke-static {v11, v6}, Lbl;->j(II)I

    move-result v3

    goto/16 :goto_3

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 24
    invoke-static {v1, v12, v13}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->k(II)I

    move-result v3

    goto/16 :goto_3

    .line 25
    :pswitch_6
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 26
    invoke-static {v1, v12, v13}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->g(II)I

    move-result v3

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 28
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 29
    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto/16 :goto_3

    .line 30
    :pswitch_8
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 31
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    invoke-static {v11, v3, v9}, Ldy;->a(ILjava/lang/Object;Ldw;)I

    move-result v3

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 34
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 35
    instance-of v9, v3, Lba;

    if-eqz v9, :cond_1

    .line 36
    check-cast v3, Lba;

    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto/16 :goto_3

    .line 37
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lbl;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 38
    :pswitch_a
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    .line 39
    invoke-static {v11, v3}, Lbl;->b(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 40
    :pswitch_b
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 41
    invoke-static {v11, v6}, Lbl;->i(II)I

    move-result v3

    goto/16 :goto_3

    .line 42
    :pswitch_c
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 43
    invoke-static {v11, v9, v10}, Lbl;->g(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 44
    :pswitch_d
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 45
    invoke-static {v1, v12, v13}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->f(II)I

    move-result v3

    goto/16 :goto_3

    .line 46
    :pswitch_e
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 47
    invoke-static {v1, v12, v13}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->e(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 48
    :pswitch_f
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 49
    invoke-static {v1, v12, v13}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->d(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 50
    :pswitch_10
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 51
    invoke-static {v11, v4}, Lbl;->b(IF)I

    move-result v3

    goto/16 :goto_3

    .line 52
    :pswitch_11
    invoke-direct {v0, v1, v11, v7}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 53
    invoke-static {v11, v9, v10}, Lbl;->b(ID)I

    move-result v3

    goto/16 :goto_3

    .line 54
    :pswitch_12
    iget-object v3, v0, Ldm;->s:Ldd;

    .line 55
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v7}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object v10

    .line 56
    invoke-virtual {v3, v11, v9, v10}, Ldd;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 57
    :pswitch_13
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 58
    invoke-static {v11, v3, v9}, Ldy;->b(ILjava/util/List;Ldw;)I

    move-result v3

    goto/16 :goto_3

    .line 59
    :pswitch_14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-static {v3}, Ldy;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 61
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_2

    int-to-long v9, v9

    .line 62
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 63
    :cond_2
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 64
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 65
    :pswitch_15
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 66
    invoke-static {v3}, Ldy;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 67
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_3

    int-to-long v9, v9

    .line 68
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 69
    :cond_3
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 70
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 71
    :pswitch_16
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 72
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 73
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_4

    int-to-long v9, v9

    .line 74
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 75
    :cond_4
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 76
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 77
    :pswitch_17
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 78
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 79
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_5

    int-to-long v9, v9

    .line 80
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 81
    :cond_5
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 82
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 83
    :pswitch_18
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    invoke-static {v3}, Ldy;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 85
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_6

    int-to-long v9, v9

    .line 86
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 87
    :cond_6
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 88
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 89
    :pswitch_19
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    invoke-static {v3}, Ldy;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 91
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_7

    int-to-long v9, v9

    .line 92
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 93
    :cond_7
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 94
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 95
    :pswitch_1a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 96
    invoke-static {v3}, Ldy;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 97
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_8

    int-to-long v9, v9

    .line 98
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 99
    :cond_8
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 100
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 101
    :pswitch_1b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 102
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 103
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_9

    int-to-long v9, v9

    .line 104
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 105
    :cond_9
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 106
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 107
    :pswitch_1c
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 108
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 109
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_a

    int-to-long v9, v9

    .line 110
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 111
    :cond_a
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 112
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 113
    :pswitch_1d
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 114
    invoke-static {v3}, Ldy;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 115
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_b

    int-to-long v9, v9

    .line 116
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 117
    :cond_b
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 118
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_2

    .line 119
    :pswitch_1e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 120
    invoke-static {v3}, Ldy;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 121
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_c

    int-to-long v9, v9

    .line 122
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 123
    :cond_c
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 124
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_2

    .line 125
    :pswitch_1f
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 126
    invoke-static {v3}, Ldy;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 127
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_d

    int-to-long v9, v9

    .line 128
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 129
    :cond_d
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 130
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_2

    .line 131
    :pswitch_20
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 132
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 133
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_e

    int-to-long v9, v9

    .line 134
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 135
    :cond_e
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 136
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_2

    .line 137
    :pswitch_21
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 138
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_11

    .line 139
    iget-boolean v10, v0, Ldm;->k:Z

    if-eqz v10, :cond_f

    int-to-long v9, v9

    .line 140
    invoke-virtual {v2, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 141
    :cond_f
    invoke-static {v11}, Lbl;->e(I)I

    move-result v9

    .line 142
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    :goto_2
    add-int/2addr v10, v9

    add-int/2addr v3, v10

    goto/16 :goto_3

    .line 143
    :pswitch_22
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 144
    :pswitch_23
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 145
    :pswitch_24
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 146
    :pswitch_25
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 147
    :pswitch_26
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 148
    :pswitch_27
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 149
    :pswitch_28
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3}, Ldy;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    .line 150
    :pswitch_29
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 151
    invoke-static {v11, v3, v9}, Ldy;->a(ILjava/util/List;Ldw;)I

    move-result v3

    goto/16 :goto_3

    .line 152
    :pswitch_2a
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3}, Ldy;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    .line 153
    :pswitch_2b
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->j(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 154
    :pswitch_2c
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 155
    :pswitch_2d
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 156
    :pswitch_2e
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->e(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 157
    :pswitch_2f
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->b(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 158
    :pswitch_30
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->a(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 159
    :pswitch_31
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 160
    :pswitch_32
    invoke-static {v1, v12, v13}, Ldm;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v11, v3, v6}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 161
    :pswitch_33
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 162
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    .line 163
    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    .line 164
    invoke-static {v11, v3, v9}, Lbl;->c(ILdh;Ldw;)I

    move-result v3

    goto/16 :goto_3

    .line 165
    :pswitch_34
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 166
    invoke-static {v1, v12, v13}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->f(IJ)I

    move-result v3

    goto :goto_3

    .line 167
    :pswitch_35
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 168
    invoke-static {v1, v12, v13}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->h(II)I

    move-result v3

    goto :goto_3

    .line 169
    :pswitch_36
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 170
    invoke-static {v11, v9, v10}, Lbl;->h(IJ)I

    move-result v3

    goto :goto_3

    .line 171
    :pswitch_37
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 172
    invoke-static {v11, v6}, Lbl;->j(II)I

    move-result v3

    goto :goto_3

    .line 173
    :pswitch_38
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 174
    invoke-static {v1, v12, v13}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->k(II)I

    move-result v3

    goto :goto_3

    .line 175
    :pswitch_39
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 176
    invoke-static {v1, v12, v13}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->g(II)I

    move-result v3

    goto :goto_3

    .line 177
    :pswitch_3a
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 178
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 179
    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto :goto_3

    .line 180
    :pswitch_3b
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 181
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 182
    invoke-direct {v0, v7}, Ldm;->a(I)Ldw;

    move-result-object v9

    invoke-static {v11, v3, v9}, Ldy;->a(ILjava/lang/Object;Ldw;)I

    move-result v3

    :goto_3
    add-int/2addr v8, v3

    goto/16 :goto_4

    .line 183
    :pswitch_3c
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 184
    invoke-static {v1, v12, v13}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 185
    instance-of v9, v3, Lba;

    if-eqz v9, :cond_10

    .line 186
    check-cast v3, Lba;

    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto :goto_3

    .line 187
    :cond_10
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lbl;->b(ILjava/lang/String;)I

    move-result v3

    goto :goto_3

    .line 188
    :pswitch_3d
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    .line 189
    invoke-static {v11, v3}, Lbl;->b(IZ)I

    move-result v3

    goto :goto_3

    .line 190
    :pswitch_3e
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 191
    invoke-static {v11, v6}, Lbl;->i(II)I

    move-result v3

    goto :goto_3

    .line 192
    :pswitch_3f
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 193
    invoke-static {v11, v9, v10}, Lbl;->g(IJ)I

    move-result v3

    goto :goto_3

    .line 194
    :pswitch_40
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 195
    invoke-static {v1, v12, v13}, Lep;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->f(II)I

    move-result v3

    goto :goto_3

    .line 196
    :pswitch_41
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 197
    invoke-static {v1, v12, v13}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->e(IJ)I

    move-result v3

    goto :goto_3

    .line 198
    :pswitch_42
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 199
    invoke-static {v1, v12, v13}, Lep;->b(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11, v9, v10}, Lbl;->d(IJ)I

    move-result v3

    goto :goto_3

    .line 200
    :pswitch_43
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 201
    invoke-static {v11, v4}, Lbl;->b(IF)I

    move-result v3

    goto :goto_3

    .line 202
    :pswitch_44
    invoke-direct {v0, v1, v7}, Ldm;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/16 v9, 0x0

    .line 203
    invoke-static {v11, v9, v10}, Lbl;->b(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v7, v7, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 204
    :cond_12
    iget-object v0, v0, Ldm;->q:Lem;

    invoke-static {v0, v1}, Ldm;->a(Lem;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v8, v0

    return v8

    .line 205
    :cond_13
    sget-object v2, Ldm;->b:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    move v7, v6

    move v8, v7

    move v9, v8

    .line 206
    :goto_5
    iget-object v10, v0, Ldm;->c:[I

    array-length v10, v10

    if-ge v6, v10, :cond_2c

    .line 207
    invoke-direct {v0, v6}, Ldm;->d(I)I

    move-result v7

    .line 208
    iget-object v10, v0, Ldm;->c:[I

    aget v11, v10, v6

    const/high16 v12, 0xff00000

    and-int/2addr v12, v7

    ushr-int/lit8 v12, v12, 0x14

    const/16 v13, 0x11

    if-gt v12, v13, :cond_14

    add-int/lit8 v13, v6, 0x2

    .line 209
    aget v10, v10, v13

    and-int v13, v10, v5

    ushr-int/lit8 v14, v10, 0x14

    const/4 v15, 0x1

    shl-int v14, v15, v14

    if-eq v13, v3, :cond_16

    int-to-long v4, v13

    .line 210
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v9, v3

    move v3, v13

    const v5, 0xfffff

    goto :goto_7

    .line 211
    :cond_14
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_15

    sget-object v4, Lbv;->d:Lbv;

    .line 212
    iget v4, v4, Lbv;->h:I

    if-lt v12, v4, :cond_15

    .line 213
    sget-object v4, Lbv;->e:Lbv;

    .line 214
    iget v4, v4, Lbv;->h:I

    if-gt v12, v4, :cond_15

    add-int/lit8 v4, v6, 0x2

    .line 215
    aget v4, v10, v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    goto :goto_6

    :cond_15
    const v5, 0xfffff

    const/4 v4, 0x0

    :goto_6
    move v10, v4

    const/4 v14, 0x0

    :cond_16
    :goto_7
    and-int v4, v7, v5

    move v7, v3

    int-to-long v3, v4

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_c

    .line 216
    :pswitch_45
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 217
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    .line 218
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    .line 219
    invoke-static {v11, v3, v4}, Lbl;->c(ILdh;Ldw;)I

    move-result v3

    goto/16 :goto_b

    .line 220
    :pswitch_46
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 221
    invoke-static {v1, v3, v4}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->f(IJ)I

    move-result v3

    goto/16 :goto_b

    .line 222
    :pswitch_47
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 223
    invoke-static {v1, v3, v4}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->h(II)I

    move-result v3

    goto/16 :goto_b

    .line 224
    :pswitch_48
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v3, 0x0

    .line 225
    invoke-static {v11, v3, v4}, Lbl;->h(IJ)I

    move-result v3

    goto/16 :goto_b

    .line 226
    :pswitch_49
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 227
    invoke-static {v11, v3}, Lbl;->j(II)I

    move-result v3

    goto/16 :goto_b

    .line 228
    :pswitch_4a
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 229
    invoke-static {v1, v3, v4}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->k(II)I

    move-result v3

    goto/16 :goto_b

    .line 230
    :pswitch_4b
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 231
    invoke-static {v1, v3, v4}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->g(II)I

    move-result v3

    goto/16 :goto_b

    .line 232
    :pswitch_4c
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 233
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 234
    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto/16 :goto_b

    .line 235
    :pswitch_4d
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 236
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 237
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Ldy;->a(ILjava/lang/Object;Ldw;)I

    move-result v3

    goto/16 :goto_b

    .line 238
    :pswitch_4e
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 239
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 240
    instance-of v4, v3, Lba;

    if-eqz v4, :cond_17

    .line 241
    check-cast v3, Lba;

    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto/16 :goto_b

    .line 242
    :cond_17
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lbl;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_b

    .line 243
    :pswitch_4f
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    .line 244
    invoke-static {v11, v3}, Lbl;->b(IZ)I

    move-result v3

    goto/16 :goto_b

    .line 245
    :pswitch_50
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 246
    invoke-static {v11, v3}, Lbl;->i(II)I

    move-result v3

    goto/16 :goto_b

    .line 247
    :pswitch_51
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v3, 0x0

    .line 248
    invoke-static {v11, v3, v4}, Lbl;->g(IJ)I

    move-result v3

    goto/16 :goto_b

    .line 249
    :pswitch_52
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 250
    invoke-static {v1, v3, v4}, Ldm;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->f(II)I

    move-result v3

    goto/16 :goto_b

    .line 251
    :pswitch_53
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 252
    invoke-static {v1, v3, v4}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->e(IJ)I

    move-result v3

    goto/16 :goto_b

    .line 253
    :pswitch_54
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 254
    invoke-static {v1, v3, v4}, Ldm;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->d(IJ)I

    move-result v3

    goto/16 :goto_b

    .line 255
    :pswitch_55
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 256
    invoke-static {v11, v3}, Lbl;->b(IF)I

    move-result v4

    move v3, v4

    goto/16 :goto_b

    .line 257
    :pswitch_56
    invoke-direct {v0, v1, v11, v6}, Ldm;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v3, 0x0

    .line 258
    invoke-static {v11, v3, v4}, Lbl;->b(ID)I

    move-result v3

    goto/16 :goto_b

    .line 259
    :pswitch_57
    iget-object v10, v0, Ldm;->s:Ldd;

    .line 260
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v6}, Ldm;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 261
    invoke-virtual {v10, v11, v3, v4}, Ldd;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_b

    .line 262
    :pswitch_58
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 263
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    .line 264
    invoke-static {v11, v3, v4}, Ldy;->b(ILjava/util/List;Ldw;)I

    move-result v3

    goto/16 :goto_b

    .line 265
    :pswitch_59
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 266
    invoke-static {v3}, Ldy;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 267
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_18

    int-to-long v12, v10

    .line 268
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 269
    :cond_18
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 270
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 271
    :pswitch_5a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 272
    invoke-static {v3}, Ldy;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 273
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_19

    int-to-long v12, v10

    .line 274
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 275
    :cond_19
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 276
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 277
    :pswitch_5b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 278
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 279
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1a

    int-to-long v12, v10

    .line 280
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 281
    :cond_1a
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 282
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 283
    :pswitch_5c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 284
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 285
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1b

    int-to-long v12, v10

    .line 286
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 287
    :cond_1b
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 288
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 289
    :pswitch_5d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 290
    invoke-static {v3}, Ldy;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 291
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1c

    int-to-long v12, v10

    .line 292
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 293
    :cond_1c
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 294
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 295
    :pswitch_5e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 296
    invoke-static {v3}, Ldy;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 297
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1d

    int-to-long v12, v10

    .line 298
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 299
    :cond_1d
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 300
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 301
    :pswitch_5f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 302
    invoke-static {v3}, Ldy;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 303
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1e

    int-to-long v12, v10

    .line 304
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 305
    :cond_1e
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 306
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 307
    :pswitch_60
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 308
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 309
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_1f

    int-to-long v12, v10

    .line 310
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 311
    :cond_1f
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 312
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 313
    :pswitch_61
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 314
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 315
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_20

    int-to-long v12, v10

    .line 316
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 317
    :cond_20
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 318
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 319
    :pswitch_62
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 320
    invoke-static {v3}, Ldy;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 321
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_21

    int-to-long v12, v10

    .line 322
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 323
    :cond_21
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 324
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto/16 :goto_8

    .line 325
    :pswitch_63
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 326
    invoke-static {v3}, Ldy;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 327
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_22

    int-to-long v12, v10

    .line 328
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 329
    :cond_22
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 330
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_8

    .line 331
    :pswitch_64
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 332
    invoke-static {v3}, Ldy;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 333
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_23

    int-to-long v12, v10

    .line 334
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 335
    :cond_23
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 336
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_8

    .line 337
    :pswitch_65
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 338
    invoke-static {v3}, Ldy;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 339
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_24

    int-to-long v12, v10

    .line 340
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 341
    :cond_24
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 342
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    goto :goto_8

    .line 343
    :pswitch_66
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 344
    invoke-static {v3}, Ldy;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_26

    .line 345
    iget-boolean v4, v0, Ldm;->k:Z

    if-eqz v4, :cond_25

    int-to-long v12, v10

    .line 346
    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 347
    :cond_25
    invoke-static {v11}, Lbl;->e(I)I

    move-result v4

    .line 348
    invoke-static {v3}, Lbl;->g(I)I

    move-result v10

    :goto_8
    add-int/2addr v10, v4

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    goto/16 :goto_c

    .line 349
    :pswitch_67
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 350
    invoke-static {v11, v3, v4}, Ldy;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_68
    const/4 v10, 0x0

    .line 351
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 352
    invoke-static {v11, v3, v10}, Ldy;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_9

    :pswitch_69
    const/4 v10, 0x0

    .line 353
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 354
    invoke-static {v11, v3, v10}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_9

    :pswitch_6a
    const/4 v10, 0x0

    .line 355
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 356
    invoke-static {v11, v3, v10}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_9

    :pswitch_6b
    const/4 v10, 0x0

    .line 357
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 358
    invoke-static {v11, v3, v10}, Ldy;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_9

    :pswitch_6c
    const/4 v10, 0x0

    .line 359
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 360
    invoke-static {v11, v3, v10}, Ldy;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_b

    .line 361
    :pswitch_6d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 362
    invoke-static {v11, v3}, Ldy;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_b

    .line 363
    :pswitch_6e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    .line 364
    invoke-static {v11, v3, v4}, Ldy;->a(ILjava/util/List;Ldw;)I

    move-result v3

    goto/16 :goto_b

    .line 365
    :pswitch_6f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Ldy;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_b

    .line 366
    :pswitch_70
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 367
    invoke-static {v11, v3, v4}, Ldy;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_71
    const/4 v10, 0x0

    .line 368
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 369
    invoke-static {v11, v3, v10}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_9

    :pswitch_72
    const/4 v10, 0x0

    .line 370
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 371
    invoke-static {v11, v3, v10}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_9

    :pswitch_73
    const/4 v10, 0x0

    .line 372
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 373
    invoke-static {v11, v3, v10}, Ldy;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_9

    :pswitch_74
    const/4 v10, 0x0

    .line 374
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 375
    invoke-static {v11, v3, v10}, Ldy;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_9

    :pswitch_75
    const/4 v10, 0x0

    .line 376
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 377
    invoke-static {v11, v3, v10}, Ldy;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_9

    :pswitch_76
    const/4 v10, 0x0

    .line 378
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 379
    invoke-static {v11, v3, v10}, Ldy;->h(ILjava/util/List;Z)I

    move-result v3

    :goto_9
    move v4, v10

    :goto_a
    add-int/2addr v8, v3

    goto/16 :goto_d

    :pswitch_77
    const/4 v10, 0x0

    .line 380
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 381
    invoke-static {v11, v3, v10}, Ldy;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_b

    :pswitch_78
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 382
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    .line 383
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    .line 384
    invoke-static {v11, v3, v4}, Lbl;->c(ILdh;Ldw;)I

    move-result v3

    goto/16 :goto_b

    :pswitch_79
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 385
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->f(IJ)I

    move-result v3

    goto :goto_b

    :pswitch_7a
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 386
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->h(II)I

    move-result v3

    goto :goto_b

    :pswitch_7b
    and-int v3, v9, v14

    if-eqz v3, :cond_26

    const-wide/16 v3, 0x0

    .line 387
    invoke-static {v11, v3, v4}, Lbl;->h(IJ)I

    move-result v3

    goto :goto_b

    :pswitch_7c
    and-int v3, v9, v14

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 388
    invoke-static {v11, v3}, Lbl;->j(II)I

    move-result v3

    goto :goto_b

    :pswitch_7d
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 389
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->k(II)I

    move-result v3

    goto :goto_b

    :pswitch_7e
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 390
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->g(II)I

    move-result v3

    goto :goto_b

    :pswitch_7f
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 391
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lba;

    .line 392
    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto :goto_b

    :pswitch_80
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 393
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 394
    invoke-direct {v0, v6}, Ldm;->a(I)Ldw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Ldy;->a(ILjava/lang/Object;Ldw;)I

    move-result v3

    :goto_b
    add-int/2addr v8, v3

    :cond_26
    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_12

    :pswitch_81
    and-int v10, v9, v14

    if-eqz v10, :cond_26

    .line 395
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 396
    instance-of v4, v3, Lba;

    if-eqz v4, :cond_27

    .line 397
    check-cast v3, Lba;

    invoke-static {v11, v3}, Lbl;->c(ILba;)I

    move-result v3

    goto :goto_b

    .line 398
    :cond_27
    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lbl;->b(ILjava/lang/String;)I

    move-result v3

    goto :goto_b

    :pswitch_82
    and-int v3, v9, v14

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    .line 399
    invoke-static {v11, v3}, Lbl;->b(IZ)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v4, 0x0

    goto/16 :goto_13

    :pswitch_83
    and-int v3, v9, v14

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    .line 400
    invoke-static {v11, v4}, Lbl;->i(II)I

    move-result v3

    add-int/2addr v8, v3

    :cond_28
    :goto_d
    move v3, v8

    move v8, v4

    const/4 v4, 0x0

    goto :goto_14

    :pswitch_84
    const/4 v3, 0x0

    and-int v4, v9, v14

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_2a

    .line 401
    invoke-static {v11, v12, v13}, Lbl;->g(IJ)I

    move-result v4

    goto :goto_f

    :pswitch_85
    const/4 v10, 0x0

    and-int v12, v9, v14

    if-eqz v12, :cond_29

    .line 402
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lbl;->f(II)I

    move-result v4

    goto :goto_e

    :pswitch_86
    const/4 v10, 0x0

    and-int v12, v9, v14

    if-eqz v12, :cond_29

    .line 403
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->e(IJ)I

    move-result v4

    goto :goto_e

    :pswitch_87
    const/4 v10, 0x0

    and-int v12, v9, v14

    if-eqz v12, :cond_29

    .line 404
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11, v3, v4}, Lbl;->d(IJ)I

    move-result v4

    :goto_e
    move v3, v10

    :goto_f
    move v10, v4

    const/4 v4, 0x0

    goto :goto_10

    :cond_29
    move v3, v10

    goto :goto_11

    :pswitch_88
    const/4 v3, 0x0

    and-int v4, v9, v14

    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    .line 405
    invoke-static {v11, v4}, Lbl;->b(IF)I

    move-result v10

    :goto_10
    add-int/2addr v8, v10

    goto :goto_15

    :cond_2a
    :goto_11
    const/4 v4, 0x0

    goto :goto_15

    :pswitch_89
    const/4 v4, 0x0

    const/4 v3, 0x0

    and-int v10, v9, v14

    if-eqz v10, :cond_2b

    const-wide/16 v12, 0x0

    .line 406
    invoke-static {v11, v12, v13}, Lbl;->b(ID)I

    move-result v10

    add-int/2addr v10, v8

    move v8, v10

    goto :goto_15

    :goto_12
    move v3, v8

    :goto_13
    const/4 v8, 0x0

    :goto_14
    move/from16 v16, v8

    move v8, v3

    move/from16 v3, v16

    :cond_2b
    :goto_15
    add-int/lit8 v6, v6, 0x3

    move/from16 v16, v7

    move v7, v3

    move/from16 v3, v16

    goto/16 :goto_5

    .line 407
    :cond_2c
    iget-object v2, v0, Ldm;->q:Lem;

    invoke-static {v2, v1}, Ldm;->a(Lem;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v8, v2

    .line 408
    iget-boolean v2, v0, Ldm;->h:Z

    if-eqz v2, :cond_2f

    .line 409
    iget-object v0, v0, Ldm;->r:Lbr;

    invoke-virtual {v0, v1}, Lbr;->a(Ljava/lang/Object;)Lbt;

    move-result-object v0

    move v1, v7

    .line 410
    :goto_16
    iget-object v2, v0, Lbt;->a:Ldx;

    invoke-virtual {v2}, Ldx;->b()I

    move-result v2

    if-ge v7, v2, :cond_2d

    .line 411
    iget-object v2, v0, Lbt;->a:Ldx;

    invoke-virtual {v2, v7}, Ldx;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 412
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbs;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lbt;->c(Lbs;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 413
    :cond_2d
    iget-object v0, v0, Lbt;->a:Ldx;

    invoke-virtual {v0}, Ldx;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbs;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lbt;->c(Lbs;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_17

    :cond_2e
    add-int/2addr v8, v1

    :cond_2f
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
