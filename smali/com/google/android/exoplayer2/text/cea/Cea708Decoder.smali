.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# instance fields
.field public final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

.field public currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field public currentWindow:I

.field public lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public previousSequenceNumber:I

.field public final selectedServiceNumber:I

.field public final serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    .line 5
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    aget-byte p2, p2, p1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    const/16 p2, 0x8

    new-array v0, p2, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method


# virtual methods
.method public final createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 9

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 6
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    .line 8
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 9
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v0, v1, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 11
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/16 v2, 0x47

    const-string v3, "Sequence number discontinuity. previous="

    const-string v8, " current="

    .line 14
    invoke-static {v2, v3, v1, v8, v0}, Lay$$ExternalSyntheticOutline1;->m(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_4
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 17
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 18
    iget-object p1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v0, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v0, v7, :cond_7

    move v3, v4

    .line 19
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 22
    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 23
    iput v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v2

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr p1, v7

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final finalizeCurrentPacket()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget v3, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    const-string v5, "Cea708Decoder"

    if-eq v2, v3, :cond_1

    .line 3
    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    const/16 v6, 0x73

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but current index is "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (sequence number "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v6, 0x2c

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-ne v1, v7, :cond_2

    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ge v1, v7, :cond_2

    const-string v8, "Invalid extended service number: "

    .line 10
    invoke-static {v6, v8, v1, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_39

    const/16 v2, 0x3b

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "serviceNumber is non-zero ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 13
    :cond_3
    iget v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v6, :cond_4

    goto/16 :goto_13

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v6, 0x8

    mul-int/2addr v3, v6

    add-int/2addr v3, v1

    const/4 v1, 0x0

    .line 15
    :cond_5
    :goto_0
    :pswitch_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v8

    if-lez v8, :cond_38

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 16
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v8

    if-ge v8, v3, :cond_38

    .line 17
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    const/16 v9, 0x17

    const/16 v10, 0x9f

    const/16 v11, 0x18

    const/16 v12, 0x7f

    const/16 v13, 0x10

    const/16 v14, 0x1f

    if-eq v8, v13, :cond_21

    const/16 v15, 0xa

    if-gt v8, v14, :cond_a

    if-eqz v8, :cond_5

    if-eq v8, v2, :cond_9

    if-eq v8, v6, :cond_8

    packed-switch v8, :pswitch_data_0

    const/16 v10, 0x11

    if-lt v8, v10, :cond_6

    if-gt v8, v9, :cond_6

    const/16 v9, 0x37

    const-string v10, "Currently unsupported COMMAND_EXT1 Command: "

    .line 18
    invoke-static {v9, v10, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 20
    :pswitch_1
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v8, v15}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 21
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_0

    :cond_6
    if-lt v8, v11, :cond_7

    if-gt v8, v14, :cond_7

    const/16 v9, 0x36

    const-string v10, "Currently unsupported COMMAND_P16 Command: "

    .line 22
    invoke-static {v9, v10, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 23
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_7
    const-string v9, "Invalid C0 command: "

    .line 24
    invoke-static {v14, v9, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_8
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 26
    iget-object v9, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 27
    iget-object v8, v8, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 28
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto :goto_0

    :cond_a
    if-gt v8, v12, :cond_c

    if-ne v8, v12, :cond_b

    .line 29
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v8, 0x266b

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_1

    .line 30
    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    if-gt v8, v10, :cond_1e

    const/4 v1, 0x4

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    const/4 v1, 0x1

    const-string v4, "Invalid C1 command: "

    goto/16 :goto_a

    :pswitch_4
    add-int/lit16 v8, v8, -0x98

    .line 31
    iget-object v9, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v9, v9, v8

    .line 32
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 33
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 34
    iget-object v11, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 35
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 36
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 37
    iget-object v12, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 38
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 39
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 40
    iget-object v13, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 41
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 42
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 43
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 44
    iget-object v14, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 45
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 46
    iget-object v15, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v15, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    const/4 v15, 0x1

    .line 47
    iput-boolean v15, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 48
    iput-boolean v10, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 49
    iput-boolean v11, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    .line 50
    iput v2, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 51
    iput-boolean v12, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 52
    iput v7, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 53
    iput v6, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 54
    iput v13, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 55
    iget v2, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/2addr v1, v15

    if-eq v2, v1, :cond_f

    .line 56
    iput v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    :goto_2
    if-eqz v11, :cond_d

    .line 57
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v1, v2, :cond_e

    :cond_d
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_f

    .line 59
    :cond_e
    iget-object v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_f
    if-eqz v4, :cond_10

    .line 60
    iget v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v1, v4, :cond_10

    .line 61
    iput v4, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    add-int/lit8 v4, v4, -0x1

    .line 62
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v1, v4

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v2, v2, v4

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v2, v2, v4

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v2, v2, v4

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v2, v2, v4

    .line 63
    iput v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 64
    iput v2, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    :cond_10
    if-eqz v14, :cond_11

    .line 65
    iget v1, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v1, v14, :cond_11

    .line 66
    iput v14, v9, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    add-int/lit8 v14, v14, -0x1

    .line 67
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v1, v1, v14

    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v1, v1, v14

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    .line 68
    sget v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v2, v2, v14

    sget v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {v9, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    .line 69
    :cond_11
    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v8, :cond_16

    .line 70
    iput v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 71
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v8

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_3

    .line 72
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 73
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_12

    .line 74
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 75
    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 76
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 77
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 78
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 79
    invoke-static {v4, v6, v7, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v1

    .line 80
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 81
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 82
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 83
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    .line 84
    invoke-static {v4, v6, v7, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 85
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 86
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    .line 87
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 88
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 89
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 90
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 91
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 92
    iput v1, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 93
    iput v2, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    goto/16 :goto_3

    .line 94
    :pswitch_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 95
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_13

    .line 96
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    .line 97
    :cond_13
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 98
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 99
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 100
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 101
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 102
    iget v4, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq v4, v1, :cond_14

    .line 103
    invoke-virtual {v2, v15}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 104
    :cond_14
    iput v1, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    goto :goto_3

    .line 105
    :pswitch_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 106
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_15

    .line 107
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    .line 108
    :cond_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 109
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 110
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 111
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 112
    invoke-static {v4, v6, v7, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v1

    .line 113
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 114
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 115
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 116
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 117
    invoke-static {v6, v7, v8, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v4

    .line 118
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 119
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 120
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 121
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v8, 0x0

    .line 122
    invoke-static {v6, v7, v2, v8}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    .line 123
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    goto :goto_3

    .line 124
    :pswitch_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 125
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_17

    .line 126
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_16
    :goto_3
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 127
    :cond_17
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 129
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 130
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    .line 131
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 132
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 133
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    .line 134
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    move v2, v6

    goto/16 :goto_8

    .line 135
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_8

    .line 136
    :pswitch_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    :pswitch_b
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_1c

    .line 137
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 138
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x8

    goto :goto_4

    :pswitch_c
    const/4 v1, 0x1

    :goto_5
    if-gt v1, v6, :cond_1c

    .line 139
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 140
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v4, v4, v6

    .line 141
    iget-boolean v6, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    xor-int/lit8 v6, v6, 0x1

    .line 142
    iput-boolean v6, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x8

    goto :goto_5

    :pswitch_d
    const/4 v1, 0x1

    :goto_6
    if-gt v1, v6, :cond_1c

    .line 143
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 144
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v4, v4, v6

    const/4 v6, 0x0

    .line 145
    iput-boolean v6, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x8

    goto :goto_6

    :pswitch_e
    const/4 v1, 0x1

    :goto_7
    if-gt v1, v6, :cond_1c

    .line 146
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 147
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v6, v1, 0x8

    aget-object v4, v4, v6

    const/4 v6, 0x1

    .line 148
    iput-boolean v6, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x8

    goto :goto_7

    :cond_1c
    :goto_8
    :pswitch_f
    const/4 v1, 0x1

    goto :goto_b

    :pswitch_10
    const/4 v1, 0x1

    move v4, v1

    :goto_9
    if-gt v4, v6, :cond_20

    .line 149
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 150
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v7, v4, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x8

    goto :goto_9

    :pswitch_11
    const/4 v1, 0x1

    add-int/lit8 v8, v8, -0x80

    .line 151
    iget v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v4, v8, :cond_20

    .line 152
    iput v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 153
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v4, v4, v8

    iput-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    goto :goto_b

    .line 154
    :goto_a
    invoke-static {v14, v4, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_b

    :cond_1e
    const/16 v4, 0xff

    const/4 v6, 0x1

    if-gt v8, v4, :cond_1f

    .line 155
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v4, v8, 0xff

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    move v1, v6

    goto :goto_b

    :cond_1f
    const/16 v4, 0x21

    const-string v6, "Invalid base command: "

    .line 156
    invoke-static {v4, v6, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_20
    :goto_b
    const/4 v4, 0x2

    const/4 v6, 0x7

    goto/16 :goto_10

    :cond_21
    const/4 v4, 0x1

    .line 157
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    if-gt v6, v14, :cond_26

    const/4 v4, 0x7

    if-gt v6, v4, :cond_22

    goto :goto_c

    :cond_22
    const/16 v8, 0xf

    if-gt v6, v8, :cond_23

    .line 158
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    :cond_23
    if-gt v6, v9, :cond_24

    .line 159
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_c

    :cond_24
    if-gt v6, v14, :cond_25

    .line 160
    iget-object v6, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_25
    :goto_c
    move v6, v4

    goto/16 :goto_f

    :cond_26
    const/4 v7, 0x7

    const/16 v8, 0x25

    const/16 v9, 0xa0

    if-gt v6, v12, :cond_31

    const/16 v1, 0x20

    if-eq v6, v1, :cond_30

    const/16 v1, 0x21

    if-eq v6, v1, :cond_2f

    if-eq v6, v8, :cond_2e

    const/16 v1, 0x2a

    if-eq v6, v1, :cond_2d

    const/16 v1, 0x2c

    if-eq v6, v1, :cond_2c

    const/16 v1, 0x3f

    if-eq v6, v1, :cond_2b

    const/16 v1, 0x39

    if-eq v6, v1, :cond_2a

    const/16 v1, 0x3a

    if-eq v6, v1, :cond_29

    const/16 v1, 0x3c

    if-eq v6, v1, :cond_28

    const/16 v1, 0x3d

    if-eq v6, v1, :cond_27

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    const/16 v1, 0x21

    const-string v8, "Invalid G2 character: "

    .line 161
    invoke-static {v1, v8, v6, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    .line 162
    :pswitch_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2022

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 163
    :pswitch_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201d

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 164
    :pswitch_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 165
    :pswitch_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2019

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 166
    :pswitch_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2018

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 167
    :pswitch_17
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2588

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 168
    :pswitch_18
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x250c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 169
    :pswitch_19
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2518

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 170
    :pswitch_1a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2500

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 171
    :pswitch_1b
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2514

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 172
    :pswitch_1c
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2510

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 173
    :pswitch_1d
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2502

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 174
    :pswitch_1e
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215e

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_d

    .line 175
    :pswitch_1f
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215d

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 176
    :pswitch_20
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215c

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 177
    :pswitch_21
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215b

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 178
    :cond_27
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2120

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 179
    :cond_28
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x153

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 180
    :cond_29
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x161

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 181
    :cond_2a
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2122

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 182
    :cond_2b
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x178

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 183
    :cond_2c
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x152

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 184
    :cond_2d
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x160

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 185
    :cond_2e
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2026

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 186
    :cond_2f
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_d

    .line 187
    :cond_30
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_d
    move v1, v4

    goto :goto_e

    :cond_31
    const/16 v11, 0x20

    if-gt v6, v10, :cond_35

    const/16 v4, 0x87

    if-gt v6, v4, :cond_32

    .line 188
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_e

    :cond_32
    const/16 v4, 0x8f

    if-gt v6, v4, :cond_33

    .line 189
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_e

    :cond_33
    if-gt v6, v10, :cond_34

    .line 190
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 191
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x6

    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 192
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->serviceBlockPacket:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    mul-int/2addr v4, v9

    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    move v4, v6

    move v6, v9

    goto/16 :goto_0

    :cond_34
    :goto_e
    move v6, v7

    :goto_f
    const/4 v4, 0x2

    :goto_10
    const/16 v7, 0x8

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_35
    const/4 v10, 0x2

    const/16 v11, 0x8

    const/16 v12, 0xff

    if-gt v6, v12, :cond_37

    if-ne v6, v9, :cond_36

    .line 193
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x33c4

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_11

    :cond_36
    const/16 v1, 0x21

    const-string v8, "Invalid G3 character: "

    .line 194
    invoke-static {v1, v8, v6, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_11
    move v1, v4

    goto :goto_12

    :cond_37
    const-string v4, "Invalid extended command: "

    .line 196
    invoke-static {v8, v4, v6, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :goto_12
    move v4, v10

    move v6, v11

    goto/16 :goto_0

    :cond_38
    if-eqz v1, :cond_39

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_39
    :goto_13
    const/4 v1, 0x0

    .line 198
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentWindow:I

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public final getDisplayCues()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_d

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v5, v4, v3

    .line 3
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    if-eqz v5, :cond_c

    .line 4
    aget-object v4, v4, v3

    .line 5
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 6
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v5, v2

    .line 7
    :goto_1
    iget-object v7, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 8
    iget-object v7, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v7, 0xa

    .line 9
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/16 v2, 0x2b

    const-string v3, "Unexpected justification value: "

    .line 13
    invoke-static {v2, v3, v1}, Lbd$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 16
    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 17
    :cond_5
    :goto_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_3
    move-object v9, v5

    .line 18
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v5, :cond_6

    .line 19
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x42c60000    # 99.0f

    div-float/2addr v5, v10

    .line 20
    iget v11, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    goto :goto_4

    .line 21
    :cond_6
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x43510000    # 209.0f

    div-float/2addr v5, v10

    .line 22
    iget v10, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v10, v10

    const/high16 v11, 0x42940000    # 74.0f

    div-float v11, v10, v11

    :goto_4
    const v10, 0x3f666666

    mul-float/2addr v5, v10

    const v12, 0x3d4ccccd

    add-float v13, v5, v12

    mul-float/2addr v11, v10

    add-float v10, v11, v12

    .line 23
    iget v5, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v11, v5, 0x3

    if-nez v11, :cond_7

    move v11, v2

    goto :goto_5

    :cond_7
    if-ne v11, v8, :cond_8

    move v11, v8

    goto :goto_5

    :cond_8
    move v11, v7

    .line 24
    :goto_5
    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_9

    move v12, v2

    goto :goto_6

    :cond_9
    if-ne v5, v8, :cond_a

    move v12, v8

    goto :goto_6

    :cond_a
    move v12, v7

    .line 25
    :goto_6
    iget v14, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v5, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v14, v5, :cond_b

    move v15, v8

    goto :goto_7

    :cond_b
    move v15, v2

    .line 26
    :goto_7
    new-instance v16, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move-object/from16 v5, v16

    move-object v7, v9

    move v8, v10

    move v9, v11

    move v10, v13

    move v11, v12

    move v12, v15

    move v13, v14

    move v14, v4

    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIFIZII)V

    move-object/from16 v4, v16

    :goto_8
    if-eqz v4, :cond_c

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 28
    :cond_d
    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 32
    :cond_e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
