.class public final Lcom/google/android/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public dataAlignmentIndicator:Z

.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public payloadSize:I

.field public final pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public ptsFlag:Z

.field public final reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field public seenFirstDts:Z

.field public state:I

.field public timeUs:J

.field public timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 4
    invoke-direct {p1, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const-string v1, "PesReader"

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v2, :cond_0

    const/16 v6, 0x3b

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 10
    :cond_4
    :goto_1
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v6, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v7, v0, v6

    if-lez v7, :cond_13

    .line 11
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    if-eqz v7, :cond_12

    const/4 v8, 0x0

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_8

    if-ne v7, v3, :cond_7

    sub-int/2addr v0, v6

    .line 12
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v7, v2, :cond_5

    goto :goto_2

    :cond_5
    sub-int v8, v0, v7

    :goto_2
    if-lez v8, :cond_6

    sub-int/2addr v0, v8

    add-int/2addr v6, v0

    .line 13
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 14
    :cond_6
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 15
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v6, v2, :cond_4

    sub-int/2addr v6, v0

    .line 16
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v6, :cond_4

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 18
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 19
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    const/16 v0, 0xa

    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 22
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 25
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    .line 28
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 29
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0xf

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    shl-int/2addr v3, v9

    int-to-long v10, v3

    or-long/2addr v6, v10

    .line 30
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 31
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    int-to-long v10, v3

    or-long/2addr v6, v10

    .line 32
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 33
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v3, :cond_9

    .line 34
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v0

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    shl-int/2addr v0, v9

    int-to-long v10, v0

    or-long/2addr v2, v10

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v9, v0

    or-long/2addr v2, v9

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 42
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 44
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_b

    const/4 v8, 0x4

    :cond_b
    or-int/2addr p2, v8

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v2, v3, p2}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    const/4 v3, 0x3

    .line 46
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    const/4 v2, -0x1

    goto/16 :goto_1

    .line 47
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v2, 0x9

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-eq v0, v5, :cond_d

    const/16 v2, 0x29

    const-string v6, "Unexpected start code prefix: "

    .line 50
    invoke-static {v2, v6, v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    move v2, v8

    goto :goto_4

    .line 52
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 54
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 55
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 56
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 57
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 58
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 59
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 60
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->pesScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_e

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_3

    :cond_e
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v2

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_f

    const/16 v2, 0x2f

    const-string v6, "Found negative packet payload size: "

    .line 63
    invoke-static {v2, v6, v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_3

    :cond_f
    const/4 v0, -0x1

    :goto_3
    move v2, v5

    :goto_4
    if-eqz v2, :cond_10

    move v8, v4

    .line 65
    :cond_10
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    :goto_5
    move v2, v0

    goto/16 :goto_1

    :cond_12
    sub-int/2addr v0, v6

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_13
    return-void
.end method

.method public final continueRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 5
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method
