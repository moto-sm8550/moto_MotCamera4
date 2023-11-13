.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VINResultParser.java"


# static fields
.field public static final AZ09:Ljava/util/regex/Pattern;

.field public static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[IOQ]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9]{17}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x45

    const/16 v2, 0x33

    const/16 v3, 0x39

    const/16 v4, 0x41

    if-eq v0, v3, :cond_5

    const/16 v5, 0x54

    const-string v6, "DE"

    const/16 v7, 0x53

    if-eq v0, v7, :cond_3

    const/16 v8, 0x5a

    const/16 v9, 0x52

    if-eq v0, v8, :cond_2

    const/16 v8, 0x57

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_0
    const-string p0, "RU"

    return-object p0

    :pswitch_1
    return-object v6

    :pswitch_2
    const/16 v0, 0x46

    if-lt p0, v0, :cond_1

    if-gt p0, v9, :cond_1

    const-string p0, "FR"

    return-object p0

    :cond_1
    if-lt p0, v7, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "ES"

    return-object p0

    :pswitch_3
    if-lt p0, v4, :cond_8

    if-gt p0, v1, :cond_8

    const-string p0, "IN"

    return-object p0

    :pswitch_4
    const-string p0, "CN"

    return-object p0

    :pswitch_5
    const/16 v0, 0x4c

    if-lt p0, v0, :cond_8

    if-gt p0, v9, :cond_8

    const-string p0, "KO"

    return-object p0

    :pswitch_6
    if-lt p0, v4, :cond_8

    if-gt p0, v5, :cond_8

    const-string p0, "JP"

    return-object p0

    :pswitch_7
    if-lt p0, v4, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "MX"

    return-object p0

    :pswitch_8
    const-string p0, "CA"

    return-object p0

    :pswitch_9
    const-string p0, "US"

    return-object p0

    :cond_2
    if-lt p0, v4, :cond_8

    if-gt p0, v9, :cond_8

    const-string p0, "IT"

    return-object p0

    :cond_3
    if-lt p0, v4, :cond_4

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_4

    const-string p0, "UK"

    return-object p0

    :cond_4
    const/16 v0, 0x4e

    if-lt p0, v0, :cond_8

    if-gt p0, v5, :cond_8

    return-object v6

    :cond_5
    if-lt p0, v4, :cond_6

    if-le p0, v1, :cond_7

    :cond_6
    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_7
    const-string p0, "BR"

    return-object p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 14

    .line 1
    iget-object p0, p1, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 2
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p0, v0, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    iget-object p0, p1, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object p0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 p0, 0x0

    move p1, p0

    move v0, p1

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0x39

    const/16 v5, 0x52

    const/16 v6, 0x4a

    const/16 v7, 0x11

    const/16 v8, 0x41

    const/16 v9, 0x8

    const/16 v10, 0xa

    const/4 v11, 0x1

    const/16 v12, 0x9

    if-ge p1, v2, :cond_a

    add-int/lit8 v2, p1, 0x1

    if-lez v2, :cond_2

    const/4 v13, 0x7

    if-gt v2, v13, :cond_2

    rsub-int/lit8 v10, v2, 0x9

    goto :goto_1

    :cond_2
    if-ne v2, v9, :cond_3

    goto :goto_1

    :cond_3
    if-ne v2, v12, :cond_4

    move v10, p0

    goto :goto_1

    :cond_4
    if-lt v2, v10, :cond_9

    if-gt v2, v7, :cond_9

    rsub-int/lit8 v10, v2, 0x13

    .line 7
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lt p1, v8, :cond_5

    const/16 v7, 0x49

    if-gt p1, v7, :cond_5

    add-int/lit8 p1, p1, -0x41

    goto :goto_2

    :cond_5
    if-lt p1, v6, :cond_6

    if-gt p1, v5, :cond_6

    add-int/lit8 p1, p1, -0x4a

    :goto_2
    add-int/2addr p1, v11

    goto :goto_3

    :cond_6
    const/16 v5, 0x53

    if-lt p1, v5, :cond_7

    const/16 v5, 0x5a

    if-gt p1, v5, :cond_7

    add-int/lit8 p1, p1, -0x53

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_7
    if-lt p1, v3, :cond_8

    if-gt p1, v4, :cond_8

    add-int/lit8 p1, p1, -0x30

    :goto_3
    mul-int/2addr v10, p1

    add-int/2addr v0, v10

    move p1, v2

    goto :goto_0

    .line 8
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 9
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 10
    :cond_a
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0xb

    .line 11
    rem-int/2addr v0, v2

    if-ge v0, v10, :cond_b

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_4

    :cond_b
    if-ne v0, v10, :cond_15

    const/16 v0, 0x58

    :goto_4
    if-ne p1, v0, :cond_c

    goto :goto_5

    :cond_c
    move v11, p0

    :goto_5
    if-nez v11, :cond_d

    goto/16 :goto_8

    :cond_d
    const/4 p1, 0x3

    .line 12
    invoke-virtual {v1, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v11, Lcom/google/zxing/client/result/VINParsedResult;

    .line 14
    invoke-virtual {v1, p1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {p0}, Lcom/google/zxing/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual {v1, p1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x45

    if-lt p1, v0, :cond_e

    const/16 v9, 0x48

    if-gt p1, v9, :cond_e

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x7c0

    :goto_6
    move v6, p1

    goto :goto_7

    :cond_e
    if-lt p1, v6, :cond_f

    const/16 v0, 0x4e

    if-gt p1, v0, :cond_f

    sub-int/2addr p1, v6

    add-int/lit16 p1, p1, 0x7c4

    goto :goto_6

    :cond_f
    const/16 v0, 0x50

    if-ne p1, v0, :cond_10

    const/16 p1, 0x7c9

    goto :goto_6

    :cond_10
    if-lt p1, v5, :cond_11

    const/16 v0, 0x54

    if-gt p1, v0, :cond_11

    sub-int/2addr p1, v5

    add-int/lit16 p1, p1, 0x7ca

    goto :goto_6

    :cond_11
    const/16 v0, 0x56

    if-lt p1, v0, :cond_12

    const/16 v5, 0x59

    if-gt p1, v5, :cond_12

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x7cd

    goto :goto_6

    :cond_12
    const/16 v0, 0x31

    if-lt p1, v0, :cond_13

    if-gt p1, v4, :cond_13

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x7d1

    goto :goto_6

    :cond_13
    if-lt p1, v8, :cond_14

    const/16 v0, 0x44

    if-gt p1, v0, :cond_14

    sub-int/2addr p1, v8

    add-int/lit16 p1, p1, 0x7da

    goto :goto_6

    .line 19
    :goto_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v11

    move-object v2, p0

    move-object v4, v7

    move-object v5, v13

    move v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    goto :goto_9

    .line 21
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 22
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_8
    const/4 v11, 0x0

    :goto_9
    return-object v11
.end method
