.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# static fields
.field public static final AMPERSAND:Ljava/util/regex/Pattern;

.field public static final DIGITS:Ljava/util/regex/Pattern;

.field public static final EMPTY_STR_ARRAY:[Ljava/lang/String;

.field public static final EQUALS:Ljava/util/regex/Pattern;

.field public static final PARSERS:[Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;

    .line 1
    new-instance v1, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/BizcardResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/VEventResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/EmailAddressResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/SMTPResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/TelResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/SMSMMSResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/GeoResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/WifiResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/URLTOResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/URIResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/ISBNResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/ProductResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/VINResultParser;

    invoke-direct {v1}, Lcom/google/zxing/client/result/VINResultParser;-><init>()V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    const-string v0, "\\d+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "&"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    const-string v0, "="

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    new-array v0, v2, [Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    const-string/jumbo v0, "\ufeff"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isStringOfDigits(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_b

    move-object/from16 v6, p0

    .line 2
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_b

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    const/4 v4, 0x1

    move v9, v4

    move-object v8, v5

    move v5, v7

    :goto_1
    if-eqz v9, :cond_a

    move/from16 v10, p2

    .line 4
    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_0

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move v9, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v5, -0x1

    move v12, v3

    :goto_2
    const/16 v13, 0x5c

    if-ltz v11, :cond_1

    .line 6
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 7
    :cond_1
    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :cond_3
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_4

    goto :goto_6

    .line 11
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    .line 12
    new-instance v14, Ljava/lang/StringBuilder;

    add-int/lit8 v15, v12, -0x1

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual {v14, v15, v3, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v15, v3

    :goto_3
    if-ge v11, v12, :cond_7

    .line 14
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v15, :cond_6

    if-eq v3, v13, :cond_5

    goto :goto_4

    :cond_5
    move v15, v4

    goto :goto_5

    .line 15
    :cond_6
    :goto_4
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    if-eqz p3, :cond_8

    .line 17
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 18
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 19
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_a
    move/from16 v10, p2

    move v4, v5

    move-object v5, v8

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_d

    .line 20
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 21
    :cond_c
    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_d
    :goto_7
    return-object v2
.end method

.method public static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static parseHexDigit(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p0, v4

    .line 4
    sget-object v6, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 5
    array-length v6, v5

    if-ne v6, v7, :cond_1

    .line 6
    aget-object v6, v5, v2

    .line 7
    aget-object v5, v5, v3

    :try_start_0
    const-string v7, "UTF-8"

    .line 8
    invoke-static {v5, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v5

    .line 10
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public abstract parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.end method
