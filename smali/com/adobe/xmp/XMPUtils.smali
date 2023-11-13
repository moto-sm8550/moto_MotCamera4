.class public final Lcom/adobe/xmp/XMPUtils;
.super Ljava/lang/Object;


# direct methods
.method public static convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x5

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    .line 1
    new-instance v1, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v2, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v3

    const/16 v4, 0x54

    const/16 v5, 0x3a

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 3
    iget-object v3, v2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x2

    if-lt v3, v7, :cond_0

    .line 4
    invoke-virtual {v2, v6}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v3

    if-eq v3, v5, :cond_2

    .line 5
    :cond_0
    iget-object v3, v2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x3

    if-lt v3, v8, :cond_1

    .line 6
    invoke-virtual {v2, v7}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    const/16 v7, 0x2d

    if-nez v3, :cond_d

    invoke-virtual {v2, p0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    if-ne v8, v7, :cond_3

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    :cond_3
    const/16 v8, 0x270f

    const-string v9, "Invalid year in date string"

    invoke-virtual {v2, v9, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after year"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v2, p0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v9

    if-ne v9, v7, :cond_6

    neg-int v8, v8

    :cond_6
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setYear(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_e

    :cond_7
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const/16 v8, 0xc

    const-string v9, "Invalid month in date string"

    invoke-virtual {v2, v9, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v7, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after month"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9
    :goto_3
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setMonth(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const/16 v8, 0x1f

    const-string v9, "Invalid day in date string"

    invoke-virtual {v2, v9, v8}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after day"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_c
    :goto_4
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setDay(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_e

    :cond_d
    invoke-virtual {v1, v6}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setMonth(I)V

    invoke-virtual {v1, v6}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setDay(I)V

    :cond_e
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    if-ne v8, v4, :cond_f

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    goto :goto_5

    :cond_f
    if-eqz v3, :cond_20

    :goto_5
    const/16 v3, 0x17

    const-string v4, "Invalid hour in date string"

    invoke-virtual {v2, v4, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    if-ne v8, v5, :cond_1f

    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setHour(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const/16 v4, 0x3b

    const-string v8, "Invalid minute in date string"

    invoke-virtual {v2, v8, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    const/16 v10, 0x2b

    const/16 v11, 0x5a

    if-eqz v9, :cond_11

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v5, :cond_11

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v11, :cond_11

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v10, :cond_11

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v7, :cond_10

    goto :goto_6

    :cond_10
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after minute"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_11
    :goto_6
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setMinute(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    if-ne v8, v5, :cond_18

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v8, "Invalid whole seconds in date string"

    invoke-virtual {v2, v8, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    const/16 v12, 0x2e

    if-eqz v9, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v12, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v11, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v10, :cond_13

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v7, :cond_12

    goto :goto_7

    :cond_12
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after whole seconds"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_13
    :goto_7
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setSecond(I)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    if-ne v8, v12, :cond_18

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 7
    iget v8, v2, Lcom/adobe/xmp/impl/ParseState;->pos:I

    const v9, 0x3b9ac9ff

    const-string v12, "Invalid fractional seconds in date string"

    .line 8
    invoke-virtual {v2, v12, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v12

    if-eq v12, v11, :cond_15

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v12

    if-eq v12, v10, :cond_15

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v12

    if-ne v12, v7, :cond_14

    goto :goto_8

    :cond_14
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after fractional second"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 9
    :cond_15
    :goto_8
    iget v12, v2, Lcom/adobe/xmp/impl/ParseState;->pos:I

    sub-int/2addr v12, v8

    :goto_9
    const/16 v8, 0x9

    if-le v12, v8, :cond_16

    .line 10
    div-int/lit8 v9, v9, 0xa

    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    :cond_16
    :goto_a
    if-ge v12, v8, :cond_17

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v9}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setNanoSecond(I)V

    :cond_18
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    if-ne v8, v11, :cond_19

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    goto :goto_c

    :cond_19
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result p0

    if-ne p0, v10, :cond_1a

    move p0, v6

    goto :goto_b

    :cond_1a
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result p0

    if-ne p0, v7, :cond_1c

    const/4 p0, -0x1

    :goto_b
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v6, "Invalid time zone hour in date string"

    invoke-virtual {v2, v6, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v6

    if-ne v6, v5, :cond_1b

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v5, "Invalid time zone minute in date string"

    invoke-virtual {v2, v5, v4}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    move v13, v3

    move v3, p0

    move p0, v13

    goto :goto_d

    :cond_1b
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after time zone hour"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1c
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1d
    :goto_c
    move v3, p0

    move v4, v3

    :goto_d
    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit16 p0, p0, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, p0

    mul-int/2addr v4, v3

    new-instance p0, Ljava/util/SimpleTimeZone;

    const-string v3, ""

    invoke-direct {p0, v4, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1e

    :goto_e
    return-object v1

    :cond_1e
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, extra chars at end"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1f
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, after hour"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_20
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid date string, missing \'T\' after date"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 11
    :cond_21
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
