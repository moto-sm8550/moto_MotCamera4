.class public final Lkotlinx/serialization/json/internal/CharMappings;
.super Ljava/lang/Object;
.source "AbstractJsonLexer.kt"


# static fields
.field public static final CHAR_TO_TOKEN:[B

.field public static final ESCAPE_2_CHAR:[C

.field public static final INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lkotlinx/serialization/json/internal/CharMappings;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharMappings;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;

    const/16 v1, 0x75

    new-array v2, v1, [C

    .line 1
    sput-object v2, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    const/16 v2, 0x7e

    new-array v2, v2, [B

    .line 2
    sput-object v2, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x62

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0x74

    const/16 v5, 0x9

    .line 5
    invoke-virtual {v0, v5, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0x6e

    const/16 v6, 0xa

    .line 6
    invoke-virtual {v0, v6, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0xc

    const/16 v7, 0x66

    .line 7
    invoke-virtual {v0, v1, v7}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0x72

    const/16 v7, 0xd

    .line 8
    invoke-virtual {v0, v7, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0x2f

    .line 9
    invoke-virtual {v0, v1, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v1, 0x22

    .line 10
    invoke-virtual {v0, v1, v1}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    const/16 v8, 0x5c

    .line 11
    invoke-virtual {v0, v8, v8}, Lkotlinx/serialization/json/internal/CharMappings;->initC2ESC(IC)V

    .line 12
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/CharMappings;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/16 v0, 0x21

    if-ge v2, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    const/16 v9, 0x7f

    .line 13
    sget-object v10, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    aput-byte v9, v10, v2

    move v2, v0

    goto :goto_1

    .line 14
    :cond_1
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    const/4 v2, 0x3

    aput-byte v2, v0, v5

    .line 15
    aput-byte v2, v0, v6

    .line 16
    aput-byte v2, v0, v7

    .line 17
    aput-byte v2, v0, v4

    const/16 v2, 0x2c

    const/4 v4, 0x4

    .line 18
    aput-byte v4, v0, v2

    const/16 v2, 0x3a

    const/4 v4, 0x5

    .line 19
    aput-byte v4, v0, v2

    const/16 v2, 0x7b

    const/4 v4, 0x6

    .line 20
    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    const/4 v4, 0x7

    .line 21
    aput-byte v4, v0, v2

    const/16 v2, 0x5b

    .line 22
    aput-byte v3, v0, v2

    const/16 v2, 0x5d

    .line 23
    aput-byte v5, v0, v2

    const/4 v2, 0x1

    .line 24
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 25
    aput-byte v1, v0, v8

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initC2ESC(IC)V
    .locals 0

    const/16 p0, 0x75

    if-eq p2, p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    int-to-char p1, p1

    aput-char p1, p0, p2

    :cond_0
    return-void
.end method
