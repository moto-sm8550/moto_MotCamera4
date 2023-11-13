.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1

    .line 8
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 22

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 2
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 5
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_29

    .line 6
    invoke-static {v2, v5}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v2, v18, v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    const/4 v15, 0x0

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v15, v14, :cond_3

    .line 11
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-object/from16 v21, v13

    const/16 v13, 0x28

    if-ne v14, v13, :cond_2

    .line 12
    invoke-static {v15, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    .line 13
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v21

    goto :goto_1

    :cond_3
    move-object/from16 v21, v13

    .line 15
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, -0x1

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x3

    sparse-switch v13, :sswitch_data_0

    :goto_3
    move/from16 v19, v3

    goto/16 :goto_4

    :sswitch_0
    const-string v13, "3933"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    const/16 v19, 0x22

    goto/16 :goto_4

    :sswitch_1
    const-string v13, "3932"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_3

    :cond_6
    const/16 v19, 0x21

    goto/16 :goto_4

    :sswitch_2
    const-string v13, "3931"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_3

    :cond_7
    const/16 v19, 0x20

    goto/16 :goto_4

    :sswitch_3
    const-string v13, "3930"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    const/16 v19, 0x1f

    goto/16 :goto_4

    :sswitch_4
    const-string v13, "3923"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_3

    :cond_9
    const/16 v19, 0x1e

    goto/16 :goto_4

    :sswitch_5
    const-string v13, "3922"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_3

    :cond_a
    const/16 v19, 0x1d

    goto/16 :goto_4

    :sswitch_6
    const-string v13, "3921"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_3

    :cond_b
    const/16 v19, 0x1c

    goto/16 :goto_4

    :sswitch_7
    const-string v13, "3920"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_3

    :cond_c
    const/16 v19, 0x1b

    goto/16 :goto_4

    :sswitch_8
    const-string v13, "3209"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_3

    :cond_d
    const/16 v19, 0x1a

    goto/16 :goto_4

    :sswitch_9
    const-string v13, "3208"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v19, 0x19

    goto/16 :goto_4

    :sswitch_a
    const-string v13, "3207"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v19, 0x18

    goto/16 :goto_4

    :sswitch_b
    const-string v13, "3206"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v19, 0x17

    goto/16 :goto_4

    :sswitch_c
    const-string v13, "3205"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v19, 0x16

    goto/16 :goto_4

    :sswitch_d
    const-string v13, "3204"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v19, 0x15

    goto/16 :goto_4

    :sswitch_e
    const-string v13, "3203"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v19, 0x14

    goto/16 :goto_4

    :sswitch_f
    const-string v13, "3202"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v19, 0x13

    goto/16 :goto_4

    :sswitch_10
    const-string v13, "3201"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v19, 0x12

    goto/16 :goto_4

    :sswitch_11
    const-string v13, "3200"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v19, 0x11

    goto/16 :goto_4

    :sswitch_12
    const-string v13, "3109"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v19, 0x10

    goto/16 :goto_4

    :sswitch_13
    const-string v13, "3108"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v19, 0xf

    goto/16 :goto_4

    :sswitch_14
    const-string v13, "3107"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v19, 0xe

    goto/16 :goto_4

    :sswitch_15
    const-string v13, "3106"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v19, 0xd

    goto/16 :goto_4

    :sswitch_16
    const-string v13, "3105"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v19, 0xc

    goto/16 :goto_4

    :sswitch_17
    const-string v13, "3104"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v19, 0xb

    goto/16 :goto_4

    :sswitch_18
    const-string v13, "3103"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v19, 0xa

    goto/16 :goto_4

    :sswitch_19
    const-string v13, "3102"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v19, 0x9

    goto/16 :goto_4

    :sswitch_1a
    const-string v13, "3101"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v19, 0x8

    goto/16 :goto_4

    :sswitch_1b
    const-string v13, "3100"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v19, 0x7

    goto :goto_4

    :sswitch_1c
    const-string v13, "17"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    goto/16 :goto_3

    :cond_21
    const/16 v19, 0x6

    goto :goto_4

    :sswitch_1d
    const-string v13, "15"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    goto/16 :goto_3

    :cond_22
    const/16 v19, 0x5

    goto :goto_4

    :sswitch_1e
    const-string v13, "13"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    goto/16 :goto_3

    :cond_23
    move/from16 v19, v14

    goto :goto_4

    :sswitch_1f
    const-string v13, "11"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    goto/16 :goto_3

    :cond_24
    move/from16 v19, v15

    goto :goto_4

    :sswitch_20
    const-string v13, "10"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    goto/16 :goto_3

    :sswitch_21
    const-string v13, "01"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_25

    goto/16 :goto_3

    :cond_25
    const/16 v19, 0x1

    goto :goto_4

    :sswitch_22
    const-string v13, "00"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_26

    goto/16 :goto_3

    :cond_26
    const/16 v19, 0x0

    :cond_27
    :goto_4
    packed-switch v19, :pswitch_data_0

    .line 18
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v18

    const/4 v13, 0x0

    goto :goto_8

    .line 19
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v14, :cond_28

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 20
    :cond_28
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    .line 21
    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 22
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v3

    goto :goto_8

    :pswitch_1
    const/4 v13, 0x0

    .line 23
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v1

    goto :goto_8

    :pswitch_2
    const/4 v13, 0x0

    .line 24
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LB"

    goto :goto_6

    :pswitch_3
    const/4 v13, 0x0

    .line 25
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KG"

    :goto_6
    move-object v14, v3

    move-object v12, v1

    move-object v13, v4

    move-object/from16 v15, v18

    goto/16 :goto_0

    :pswitch_4
    const/4 v13, 0x0

    move-object v11, v1

    goto :goto_7

    :pswitch_5
    const/4 v13, 0x0

    move-object v10, v1

    goto :goto_7

    :pswitch_6
    const/4 v13, 0x0

    goto :goto_7

    :pswitch_7
    const/4 v13, 0x0

    move-object v9, v1

    goto :goto_7

    :pswitch_8
    const/4 v13, 0x0

    move-object v8, v1

    goto :goto_7

    :pswitch_9
    const/4 v13, 0x0

    move-object v6, v1

    goto :goto_7

    :pswitch_a
    const/4 v13, 0x0

    move-object v7, v1

    :goto_7
    move-object/from16 v15, v18

    :goto_8
    move-object/from16 v14, v20

    move-object/from16 v13, v21

    goto/16 :goto_0

    :cond_29
    move-object/from16 v21, v13

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    .line 26
    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v4, v3

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_9
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
