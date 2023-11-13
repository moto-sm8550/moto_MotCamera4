.class public final Lcom/google/android/exoplayer2/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final detectAccessUnits:Z

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public randomAccessIndicator:Z

.field public sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

.field public final sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public final seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

.field public final seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 4
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 5
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 6
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 7
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v1, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 8
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 9
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 10
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    .line 11
    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v1, v3, v1

    .line 12
    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 13
    :goto_1
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 14
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 15
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_3

    .line 16
    :cond_4
    :goto_2
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 17
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 18
    iget-boolean v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    const/4 v14, 0x3

    if-nez v12, :cond_5

    .line 19
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 20
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v12, :cond_3

    .line 21
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 22
    iget-boolean v12, v12, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v12, :cond_3

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v15, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v15, v15, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v15, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v15, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v15, v14, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 27
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v15, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v14, v14, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v15, v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BI)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v14

    .line 28
    iget v15, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iget v13, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    move/from16 v16, v3

    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 29
    invoke-static {v15, v13, v3}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-instance v15, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v15}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 31
    iput-object v4, v15, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    .line 32
    iput-object v4, v15, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 33
    iput-object v3, v15, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 34
    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    .line 35
    iput v3, v15, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 36
    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    .line 37
    iput v3, v15, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 38
    iget v3, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 39
    iput v3, v15, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 40
    iput-object v12, v15, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 41
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v15}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 42
    invoke-interface {v13, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 44
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 45
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v4, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 47
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v3, v14, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v2, v3, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 49
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 50
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 51
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v3, :cond_6

    .line 52
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v14, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 54
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v4, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_3

    .line 56
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 57
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v3, :cond_7

    .line 58
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BI)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 60
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v4, v2, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 62
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v2

    .line 64
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 65
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 66
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v10, v11, v3}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 67
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 68
    iget v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v10, 0x9

    if-eq v7, v10, :cond_11

    iget-boolean v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v7, :cond_14

    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 69
    iget-boolean v11, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v11, :cond_9

    goto/16 :goto_4

    .line 70
    :cond_9
    iget-boolean v11, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 71
    :cond_a
    iget-object v11, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v12, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v13, v14, :cond_10

    :cond_b
    iget v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v13, v14, :cond_c

    if-eqz v13, :cond_10

    if-eqz v14, :cond_10

    :cond_c
    iget v11, v11, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v11, :cond_d

    iget v13, v12, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v13, :cond_d

    iget v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v14, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v13, v14, :cond_10

    :cond_d
    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    iget v11, v12, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v11, v13, :cond_e

    iget v11, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v11, v12, :cond_10

    iget v11, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v12, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v11, v12, :cond_10

    :cond_e
    iget-boolean v11, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v12, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v11, v12, :cond_10

    if-eqz v11, :cond_f

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget v10, v10, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v7, v10, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_14

    :cond_11
    if-eqz v3, :cond_13

    .line 74
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v3, :cond_13

    .line 75
    iget-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v12, v8, v10

    long-to-int v3, v12

    add-int v23, v1, v3

    .line 76
    iget-wide v12, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v14

    if-nez v1, :cond_12

    goto :goto_7

    .line 77
    :cond_12
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 78
    iget-wide v14, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v10, v14

    long-to-int v3, v10

    .line 79
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/16 v24, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v12

    move/from16 v21, v1

    move/from16 v22, v3

    invoke-interface/range {v18 .. v24}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 80
    :cond_13
    :goto_7
    iget-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 81
    iget-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 84
    :cond_14
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_17

    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 85
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v4, :cond_16

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_15

    if-ne v1, v3, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    .line 86
    :cond_17
    :goto_8
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_19

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    if-ne v7, v4, :cond_18

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x1

    :goto_a
    or-int/2addr v1, v4

    iput-boolean v1, v2, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    .line 88
    :cond_1a
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 89
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 90
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v4, :cond_1c

    .line 91
    :cond_1b
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 92
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 93
    :cond_1c
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 94
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 95
    iput v6, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 96
    iput-wide v1, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 97
    iput-wide v8, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 98
    iget-boolean v1, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    if-eq v6, v1, :cond_1e

    goto :goto_b

    :cond_1d
    const/4 v1, 0x1

    :goto_b
    iget-boolean v2, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v2, :cond_1f

    if-eq v6, v10, :cond_1e

    if-eq v6, v1, :cond_1e

    if-ne v6, v3, :cond_1f

    .line 99
    :cond_1e
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 100
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v2, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 101
    iput-object v1, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 v2, 0x0

    .line 102
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 103
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 104
    iput v2, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_1f
    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0
.end method

.method public final createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->seiReader:Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final nalUnitData([BII)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 2
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 4
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 5
    :cond_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 7
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int/2addr v3, v2

    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v5, v4

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v6, v3

    const/4 v7, 0x2

    if-ge v5, v6, :cond_3

    mul-int/2addr v6, v7

    .line 9
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 10
    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 12
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 13
    iput-object v3, v2, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    const/4 v3, 0x0

    .line 14
    iput v3, v2, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 15
    iput v1, v2, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    .line 16
    iput v3, v2, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 17
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 18
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 21
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 22
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_4

    .line 23
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    .line 25
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_4

    .line 26
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v2

    .line 28
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    const/4 v6, 0x1

    if-nez v5, :cond_7

    .line 29
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 30
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 31
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 32
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    goto/16 :goto_4

    .line 33
    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    .line 34
    :cond_8
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 35
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v5

    .line 36
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_9

    .line 37
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_4

    .line 38
    :cond_9
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 39
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v10, v8, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 40
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v10, :cond_b

    .line 41
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_4

    .line 42
    :cond_a
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 43
    :cond_b
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v10, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_4

    .line 44
    :cond_c
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v10, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 45
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    if-nez v10, :cond_f

    .line 46
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_4

    .line 47
    :cond_d
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 48
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_4

    .line 49
    :cond_e
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    move v12, v6

    goto :goto_0

    :cond_f
    move v10, v3

    :cond_10
    move v11, v3

    move v12, v11

    .line 50
    :goto_0
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v13, v4, :cond_11

    move v4, v6

    goto :goto_1

    :cond_11
    move v4, v3

    :goto_1
    if-eqz v4, :cond_13

    .line 51
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_4

    .line 52
    :cond_12
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 53
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v13

    goto :goto_2

    :cond_13
    move v13, v3

    .line 54
    :goto_2
    iget v14, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v14, :cond_17

    .line 55
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v15, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v14

    if-nez v14, :cond_14

    goto/16 :goto_4

    .line 56
    :cond_14
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v15, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v14, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    .line 57
    iget-boolean v8, v8, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v8, :cond_16

    if-nez v10, :cond_16

    .line 58
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_4

    .line 59
    :cond_15
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v8

    move v15, v14

    move v14, v3

    goto :goto_3

    :cond_16
    move v8, v3

    move v15, v14

    move v14, v8

    goto :goto_3

    :cond_17
    if-ne v14, v6, :cond_1b

    .line 60
    iget-boolean v14, v9, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v14, :cond_1b

    .line 61
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v14

    if-nez v14, :cond_18

    goto :goto_4

    .line 62
    :cond_18
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v14

    .line 63
    iget-boolean v8, v8, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v8, :cond_1a

    if-nez v10, :cond_1a

    .line 64
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_4

    .line 65
    :cond_19
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v8

    move v15, v3

    move v3, v14

    move v14, v8

    move v8, v15

    goto :goto_3

    :cond_1a
    move v8, v3

    move v15, v8

    move v3, v14

    move v14, v15

    goto :goto_3

    :cond_1b
    move v8, v3

    move v14, v8

    move v15, v14

    .line 66
    :goto_3
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 67
    iput-object v9, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 68
    iput v1, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 69
    iput v2, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 70
    iput v7, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 71
    iput v5, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 72
    iput-boolean v10, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 73
    iput-boolean v12, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 74
    iput-boolean v11, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 75
    iput-boolean v4, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 76
    iput v13, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 77
    iput v15, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 78
    iput v8, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 79
    iput v3, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 80
    iput v14, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 82
    iput-boolean v1, v6, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :goto_4
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public final seek()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->pps:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sei:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    :cond_0
    return-void
.end method
