.class public final Landroidx/transition/R$id;
.super Ljava/lang/Object;


# direct methods
.method public static final computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 4

    sget-object v0, Lkotlin/collections/SetsKt__SetsKt;->INSTANCE:Lkotlin/collections/SetsKt__SetsKt;

    .line 1
    invoke-virtual {v0, p0}, Lkotlin/collections/SetsKt__SetsKt;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->getTypeParameterClassifier(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->getRepresentativeUpperBound(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Landroidx/transition/R$id;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lkotlin/collections/SetsKt__SetsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_3
    move-object p0, v3

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->getSubstitutedUnderlyingType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v3

    .line 11
    :cond_5
    invoke-static {v1, p1}, Landroidx/transition/R$id;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v3

    .line 12
    :cond_6
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 14
    :cond_8
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 15
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 16
    :cond_9
    invoke-virtual {v0, p1}, Lkotlin/collections/SetsKt__SetsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object p0

    :cond_a
    :goto_1
    return-object p0
.end method

.method public static readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v0

    const/4 v0, 0x5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p1, v0, :cond_0

    return-wide v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    const v0, 0x1fff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, p2, :cond_2

    return-wide v1

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-wide v1

    .line 4
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v4

    if-lt p1, v3, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 v4, 0x10

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x6

    new-array v1, p1, [B

    .line 7
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    aget-byte p0, v1, v0

    int-to-long p0, p0

    const-wide/16 v4, 0xff

    and-long/2addr p0, v4

    const/16 v0, 0x19

    shl-long/2addr p0, v0

    aget-byte v0, v1, p2

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x11

    shl-long/2addr v6, v0

    or-long/2addr p0, v6

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    const/16 v0, 0x9

    shl-long/2addr v6, v0

    or-long/2addr p0, v6

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    shl-long/2addr v6, p2

    or-long/2addr p0, v6

    const/4 p2, 0x4

    aget-byte p2, v1, p2

    int-to-long v0, p2

    and-long/2addr v0, v4

    shr-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_6
    return-wide v1
.end method
