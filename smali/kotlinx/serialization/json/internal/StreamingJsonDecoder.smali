.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 4 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,292:1\n458#2,3:293\n458#2,3:296\n74#3,11:299\n285#4,5:310\n285#4,5:315\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n*L\n111#1:293,3\n112#1:296,3\n124#1:299,11\n225#1:310,5\n232#1:315,5\n*E\n"
.end annotation


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public currentIndex:I

.field public final elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

.field public final json:Lkotlinx/serialization/json/Json;

.field public final lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field public final mode:I

.field public final serializersModule:Landroidx/transition/TransitionPropagation;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;ILkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 3
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 5
    iget-object p2, p1, Lkotlinx/serialization/json/Json;->serializersModule:Landroidx/transition/TransitionPropagation;

    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Landroidx/transition/TransitionPropagation;

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 8
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 9
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 10
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v0}, Lkotlinx/serialization/json/internal/WriteMode$EnumUnboxingLocalUtility;->getBegin(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    .line 4
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 5
    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 6
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 7
    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-direct {v1, v2, v0, p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;ILkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 10
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 11
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 12
    invoke-direct {v1, v2, v0, p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;ILkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    move-object p0, v1

    :goto_1
    return-object p0

    .line 13
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 p1, 0x0

    const-string v0, "Unexpected leading comma"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v3, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v1
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    const/16 v3, 0x3a

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "Unexpected trailing comma"

    const/4 v9, -0x1

    if-eqz v2, :cond_e

    if-eq v2, v4, :cond_4

    .line 2
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeComma()Z

    move-result v1

    .line 3
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v2, v9, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v1, "Expected end of the array or comma"

    invoke-static {v0, v1, v6, v4, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v7

    :cond_1
    :goto_0
    add-int/lit8 v9, v2, 0x1

    .line 5
    iput v9, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_15

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_15

    .line 6
    :cond_3
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v0, v8, v6, v4, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v7

    .line 7
    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    move v2, v6

    :goto_1
    if-eqz v2, :cond_6

    if-eq v1, v9, :cond_7

    .line 8
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeComma()Z

    move-result v1

    goto :goto_2

    .line 9
    :cond_6
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    :cond_7
    move v1, v6

    .line 10
    :goto_2
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    .line 11
    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-ne v2, v9, :cond_9

    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    xor-int/2addr v1, v5

    .line 12
    iget v3, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {v2, v8, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v7

    .line 14
    :cond_9
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 15
    iget v3, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 16
    invoke-virtual {v2, v0, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v7

    .line 17
    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_15

    :cond_c
    if-nez v1, :cond_d

    goto/16 :goto_15

    .line 18
    :cond_d
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const-string v1, "Expected \'}\', but had \',\' instead"

    invoke-static {v0, v1, v6, v4, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v7

    .line 19
    :cond_e
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeComma()Z

    move-result v2

    .line 20
    :goto_4
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->canConsumeValue()Z

    move-result v10

    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-eqz v10, :cond_27

    .line 21
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 22
    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v2, :cond_f

    .line 23
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 24
    :cond_f
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :goto_5
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v10, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    .line 26
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-static {v1, v10, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v10

    const/4 v14, -0x3

    if-eq v10, v14, :cond_19

    .line 27
    iget-object v15, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 28
    iget-boolean v15, v15, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    if-eqz v15, :cond_16

    .line 29
    iget-object v15, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 30
    invoke-interface {v1, v10}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    .line 31
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v16

    if-nez v16, :cond_10

    .line 32
    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeNotNull()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_10

    goto :goto_9

    .line 33
    :cond_10
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    sget-object v6, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 34
    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v6, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 35
    iget-boolean v6, v6, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 36
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v7

    if-eqz v6, :cond_12

    if-eq v7, v5, :cond_11

    if-eqz v7, :cond_11

    goto :goto_6

    .line 37
    :cond_11
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_12
    if-eq v7, v5, :cond_13

    :goto_6
    const/4 v6, 0x0

    goto :goto_8

    .line 38
    :cond_13
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v6

    .line 39
    :goto_7
    iput-object v6, v4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    :goto_8
    if-nez v6, :cond_14

    goto :goto_a

    .line 40
    :cond_14
    invoke-static {v3, v15, v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v14, :cond_15

    .line 41
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    :goto_9
    move v3, v5

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_16

    .line 42
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeComma()Z

    move-result v3

    const/4 v4, 0x0

    goto :goto_d

    .line 43
    :cond_16
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-nez v0, :cond_17

    goto :goto_c

    .line 44
    :cond_17
    iget-object v0, v0, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    if-ge v10, v13, :cond_18

    .line 45
    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    shl-long v3, v11, v10

    or-long/2addr v1, v3

    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    goto :goto_c

    :cond_18
    ushr-int/lit8 v1, v10, 0x6

    add-int/2addr v1, v9

    and-int/lit8 v2, v10, 0x3f

    .line 46
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aget-wide v3, v0, v1

    shl-long v5, v11, v2

    or-long v2, v5, v3

    aput-wide v2, v0, v1

    :goto_c
    move v9, v10

    goto/16 :goto_15

    :cond_19
    move v4, v5

    const/4 v3, 0x0

    :goto_d
    if-eqz v4, :cond_26

    .line 47
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 48
    iget-boolean v4, v3, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    const/4 v6, 0x6

    if-eqz v4, :cond_25

    .line 49
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 50
    iget-boolean v3, v3, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_1a

    if-eq v7, v6, :cond_1a

    .line 54
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto/16 :goto_12

    .line 55
    :cond_1a
    :goto_e
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v7

    if-ne v7, v5, :cond_1c

    if-eqz v3, :cond_1b

    .line 56
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_e

    :cond_1b
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_e

    :cond_1c
    if-ne v7, v10, :cond_1d

    goto :goto_f

    :cond_1d
    if-ne v7, v6, :cond_1e

    :goto_f
    move v11, v5

    goto :goto_10

    :cond_1e
    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_1f

    .line 57
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    const/16 v11, 0x9

    if-ne v7, v11, :cond_21

    .line 58
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v7

    if-ne v7, v10, :cond_20

    .line 59
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_11

    .line 60
    :cond_20
    iget v0, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 61
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "found ] instead of }"

    .line 62
    invoke-static {v0, v2, v1}, Landroidx/preference/R$id;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v11, 0x7

    if-ne v7, v11, :cond_23

    .line 63
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v7

    if-ne v7, v6, :cond_22

    .line 64
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_11

    .line 65
    :cond_22
    iget v0, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 66
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "found } instead of ]"

    .line 67
    invoke-static {v0, v2, v1}, Landroidx/preference/R$id;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_23
    const/16 v11, 0xa

    if-eq v7, v11, :cond_24

    .line 68
    :goto_11
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    .line 69
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1a

    .line 70
    :goto_12
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeComma()Z

    move-result v2

    goto :goto_13

    .line 71
    :cond_24
    iget v0, v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const-string v1, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    .line 72
    :cond_25
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v1, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an unknown key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0

    :cond_26
    move v2, v3

    :goto_13
    const/16 v3, 0x3a

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_27
    if-nez v2, :cond_2e

    .line 76
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-nez v0, :cond_28

    goto/16 :goto_15

    .line 77
    :cond_28
    iget-object v0, v0, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 78
    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    .line 79
    :cond_29
    iget-wide v2, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2a

    not-long v2, v2

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    .line 81
    iget-wide v3, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    shl-long v5, v11, v2

    or-long/2addr v3, v5

    iput-wide v3, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 82
    iget-object v3, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_29

    move v9, v2

    goto :goto_15

    :cond_2a
    if-le v1, v13, :cond_2d

    .line 83
    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    array-length v1, v1

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v1, :cond_2d

    add-int/lit8 v2, v6, 0x1

    mul-int/lit8 v3, v2, 0x40

    .line 84
    iget-object v7, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aget-wide v7, v7, v6

    :cond_2b
    cmp-long v10, v7, v4

    if-eqz v10, :cond_2c

    not-long v13, v7

    .line 85
    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shl-long v13, v11, v10

    or-long/2addr v7, v13

    add-int/2addr v10, v3

    .line 86
    iget-object v13, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Lkotlin/jvm/functions/Function2;

    iget-object v14, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 87
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aput-wide v7, v0, v6

    goto/16 :goto_c

    .line 88
    :cond_2c
    iget-object v3, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aput-wide v7, v3, v6

    move v6, v2

    goto :goto_14

    :cond_2d
    :goto_15
    return v9

    .line 89
    :cond_2e
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v8, v2, v1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v3
.end method

.method public final decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final decodeInt()I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .line 2
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v2

    .line 3
    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v2

    .line 4
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "EOF"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ge v2, v3, :cond_12

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 5
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v8, 0x22

    if-ne v3, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v4, v5, v6, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v7

    :cond_1
    move v3, v5

    :goto_0
    move v13, v2

    move v14, v5

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    :goto_1
    const-string v15, "Numeric value overflow"

    if-eqz v12, :cond_9

    .line 7
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    if-ne v13, v2, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "Unexpected symbol \'-\' in numeric literal"

    .line 8
    invoke-static {v1, v0, v5, v6, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v7

    .line 9
    :cond_3
    invoke-static {v10}, Lcom/motorola/tools/myui/R$style;->charToTokenClass(C)B

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 10
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eq v13, v11, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    move v12, v5

    :goto_2
    add-int/lit8 v11, v10, -0x30

    const/16 v5, 0xa

    if-ltz v11, :cond_6

    if-ge v11, v5, :cond_6

    const/16 v16, 0x1

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_8

    int-to-long v6, v5

    mul-long/2addr v8, v6

    int-to-long v5, v11

    sub-long/2addr v8, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v8, v5

    if-gtz v7, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 11
    invoke-static {v1, v15, v7, v8, v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v9

    :cond_8
    move v8, v6

    move-object v9, v7

    const/4 v7, 0x0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected symbol \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in numeric literal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7, v8, v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v9

    :cond_9
    :goto_4
    if-eq v2, v13, :cond_11

    if-eqz v14, :cond_a

    add-int/lit8 v5, v13, -0x1

    if-eq v2, v5, :cond_11

    :cond_a
    if-eqz v3, :cond_d

    if-eqz v12, :cond_c

    .line 13
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_b

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    const-string v0, "Expected closing quotation mark"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v0, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 14
    invoke-static {v1, v4, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5

    .line 15
    :cond_d
    :goto_5
    iput v13, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz v14, :cond_e

    goto :goto_6

    :cond_e
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v8, v2

    if-eqz v2, :cond_10

    neg-long v8, v8

    :goto_6
    long-to-int v1, v8

    int-to-long v2, v1

    cmp-long v2, v8, v2

    if-nez v2, :cond_f

    return v1

    .line 16
    :cond_f
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse int for input \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5

    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 17
    invoke-static {v1, v15, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v0, "Expected numeric literal"

    .line 18
    invoke-static {v1, v0, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5

    :cond_12
    move v2, v5

    move v3, v6

    move-object v5, v7

    .line 19
    invoke-static {v1, v4, v2, v3, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v5
.end method

.method public final decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public final decodeNotNullMark()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeNotNull()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final decodeNull()V
    .locals 0

    return-void
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 2
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 3
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    invoke-static {p0}, Lkotlinx/serialization/json/internal/WriteMode$EnumUnboxingLocalUtility;->getEnd(I)C

    move-result p0

    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    return-void
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public final getSerializersModule()Landroidx/transition/TransitionPropagation;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Landroidx/transition/TransitionPropagation;

    return-object p0
.end method
