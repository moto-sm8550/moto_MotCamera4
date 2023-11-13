.class public final Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public final synthetic this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 3
    invoke-direct {p1, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    .line 5
    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 6
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 7
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 12
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 14
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 15
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 16
    new-instance v7, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    invoke-direct {v8, v5, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 18
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->remainingPmts:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    .line 20
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->mode:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 21
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
