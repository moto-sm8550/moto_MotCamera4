.class public final Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public alternatingKeysAndValues:[Ljava/lang/Object;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method


# virtual methods
.method public final buildOrThrow()Lcom/google/common/collect/ImmutableMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 3
    aget-object v0, p0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, v1, p0, v3}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    move-object p0, v0

    goto/16 :goto_7

    .line 6
    :cond_1
    array-length v4, p0

    shr-int/2addr v4, v3

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v4

    if-ne v0, v3, :cond_2

    .line 8
    aget-object v2, p0, v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, p0, v3

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v1, v4, -0x1

    const/16 v3, 0x80

    const/4 v5, -0x1

    if-gt v4, v3, :cond_6

    .line 11
    new-array v3, v4, [B

    .line 12
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_5

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v2

    .line 13
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v7, v5, 0x1

    .line 14
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    :goto_1
    and-int/2addr v8, v1

    .line 16
    aget-byte v9, v3, v8

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_3

    int-to-byte v5, v5

    .line 17
    aput-byte v5, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    aget-object v10, p0, v9

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v6, v7, p0, v9}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    move-object v1, v3

    goto/16 :goto_6

    :cond_6
    const v3, 0x8000

    if-gt v4, v3, :cond_9

    .line 20
    new-array v3, v4, [S

    .line 21
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([SS)V

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_5

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v2

    .line 22
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v7, v5, 0x1

    .line 23
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    :goto_3
    and-int/2addr v8, v1

    .line 25
    aget-short v9, v3, v8

    const v10, 0xffff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_7

    int-to-short v5, v5

    .line 26
    aput-short v5, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 27
    :cond_7
    aget-object v10, p0, v9

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 28
    :cond_8
    invoke-static {v6, v7, p0, v9}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 29
    :cond_9
    new-array v3, v4, [I

    .line 30
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_5

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v2

    .line 31
    aget-object v7, p0, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v8, v6, 0x1

    .line 32
    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v9

    :goto_5
    and-int/2addr v9, v1

    .line 34
    aget v10, v3, v9

    if-ne v10, v5, :cond_a

    .line 35
    aput v6, v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 36
    :cond_a
    aget-object v11, p0, v10

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 37
    :cond_b
    invoke-static {v7, v8, p0, v10}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 38
    :goto_6
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    move-object p0, v2

    :goto_7
    return-object p0
.end method

.method public final ensureCapacity(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 4
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-object p0
.end method
