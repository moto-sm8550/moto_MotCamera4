.class public Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversions.kt"


# direct methods
.method public static final toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 4
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    const/4 v6, 0x1

    if-gez v4, :cond_3

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    const/high16 v5, -0x80000000

    move v3, v6

    goto :goto_0

    :cond_2
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_6

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v2

    move v6, v3

    :goto_0
    const v4, -0x38e38e3

    move v7, v4

    :goto_1
    if-ge v6, v1, :cond_8

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 6
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(II)I

    move-result v8

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    if-ge v2, v7, :cond_5

    if-ne v7, v4, :cond_6

    .line 7
    div-int/lit8 v7, v5, 0xa

    if-ge v2, v7, :cond_5

    goto :goto_2

    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int v9, v5, v8

    if-ge v2, v9, :cond_7

    :cond_6
    :goto_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_7
    sub-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_9
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xa

    .line 1
    invoke-static {v1}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)I

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-gez v5, :cond_3

    if-ne v2, v8, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const-wide/high16 v6, -0x8000000000000000L

    move v3, v8

    goto :goto_0

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6

    move/from16 v17, v8

    move v8, v3

    move/from16 v3, v17

    goto :goto_0

    :cond_3
    move v8, v3

    :goto_0
    const-wide/16 v4, 0x0

    const-wide v9, -0x38e38e38e38e38eL

    move-wide v11, v9

    :goto_1
    if-ge v3, v2, :cond_8

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 6
    invoke-static {v13, v1}, Ljava/lang/Character;->digit(II)I

    move-result v13

    if-gez v13, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v14, v4, v11

    if-gez v14, :cond_5

    cmp-long v11, v11, v9

    if-nez v11, :cond_6

    int-to-long v11, v1

    .line 7
    div-long v11, v6, v11

    cmp-long v14, v4, v11

    if-gez v14, :cond_5

    goto :goto_2

    :cond_5
    int-to-long v14, v1

    mul-long/2addr v4, v14

    int-to-long v13, v13

    add-long v15, v6, v13

    cmp-long v15, v4, v15

    if-gez v15, :cond_7

    :cond_6
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    sub-long/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    if-eqz v8, :cond_9

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_9
    neg-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_3
    return-object v0
.end method
