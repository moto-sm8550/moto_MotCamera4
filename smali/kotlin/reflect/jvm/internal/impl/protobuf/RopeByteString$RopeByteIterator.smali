.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RopeByteIterator"
.end annotation


# instance fields
.field public bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

.field public bytesRemaining:I

.field public final pieces:Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->pieces:Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;

    .line 3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V

    .line 5
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    .line 6
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->totalLength:I

    .line 7
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final nextByte()B
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->pieces:Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$PieceIterator;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V

    .line 4
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    .line 5
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    .line 6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString$RopeByteIterator;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->nextByte()B

    move-result p0

    return p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
