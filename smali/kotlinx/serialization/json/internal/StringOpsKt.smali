.class public final Lkotlinx/serialization/json/internal/StringOpsKt;
.super Ljava/lang/Object;
.source "StringOps.kt"


# static fields
.field public static final ESCAPE_MARKERS:[B

.field public static final ESCAPE_STRINGS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x5d

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v3, 0xc

    .line 1
    invoke-static {v5}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v5

    shr-int/lit8 v6, v3, 0x8

    .line 2
    invoke-static {v6}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v6

    shr-int/lit8 v7, v3, 0x4

    .line 3
    invoke-static {v7}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v7

    .line 4
    invoke-static {v3}, Lkotlinx/serialization/json/internal/StringOpsKt;->toHexChar(I)C

    move-result v8

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\u"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    const-string v3, "\\\""

    const/16 v5, 0x22

    aput-object v3, v1, v5

    const-string v3, "\\\\"

    const/16 v6, 0x5c

    aput-object v3, v1, v6

    const-string v3, "\\t"

    const/16 v7, 0x9

    aput-object v3, v1, v7

    const-string v3, "\\b"

    const/16 v8, 0x8

    aput-object v3, v1, v8

    const-string v3, "\\n"

    const/16 v9, 0xa

    aput-object v3, v1, v9

    const-string v3, "\\r"

    const/16 v10, 0xd

    aput-object v3, v1, v10

    const-string v3, "\\f"

    const/16 v11, 0xc

    aput-object v3, v1, v11

    .line 6
    sput-object v1, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    new-array v0, v0, [B

    :goto_1
    if-ge v2, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    .line 7
    aput-byte v3, v0, v2

    move v2, v1

    goto :goto_1

    :cond_1
    int-to-byte v1, v5

    aput-byte v1, v0, v5

    int-to-byte v1, v6

    aput-byte v1, v0, v6

    const/16 v1, 0x74

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    const/16 v1, 0x62

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    const/16 v1, 0x6e

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    const/16 v1, 0x72

    int-to-byte v1, v1

    aput-byte v1, v0, v10

    const/16 v1, 0x66

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    .line 8
    sput-object v0, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_MARKERS:[B

    return-void
.end method

.method public static final printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4
    sget-object v6, Lkotlinx/serialization/json/internal/StringOpsKt;->ESCAPE_STRINGS:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v7, v6, v5

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6
    aget-object v2, v6, v5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final toHexChar(I)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    :goto_0
    int-to-char p0, p0

    return p0
.end method
