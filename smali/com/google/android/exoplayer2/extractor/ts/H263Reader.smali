.class public final Lcom/google/android/exoplayer2/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;,
        Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;
    }
.end annotation


# static fields
.field public static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F


# instance fields
.field public final csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

.field public totalBytesWritten:J

.field public final userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 4
    iget v3, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    .line 5
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 6
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 7
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v1, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 8
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 9
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 12
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    return-void

    .line 14
    :cond_2
    iget-object v6, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v5, 0x3

    .line 15
    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 16
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v11, 0x1

    if-nez v9, :cond_19

    if-lez v8, :cond_3

    .line 17
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 18
    :goto_1
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    .line 19
    iget v14, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    const-string v15, "H263Reader"

    const/4 v10, 0x2

    if-eqz v14, :cond_d

    const-string v12, "Unexpected start code value"

    move/from16 v17, v7

    const/16 v7, 0xb5

    if-eq v14, v11, :cond_b

    if-eq v14, v10, :cond_9

    const/4 v11, 0x3

    if-eq v14, v11, :cond_7

    const/4 v11, 0x4

    if-ne v14, v11, :cond_6

    const/16 v11, 0xb3

    if-eq v6, v11, :cond_5

    if-ne v6, v7, :cond_e

    .line 20
    :cond_5
    iget v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr v7, v9

    iput v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    const/4 v7, 0x0

    .line 21
    iput-boolean v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    const/4 v7, 0x1

    goto :goto_3

    .line 22
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    and-int/lit16 v7, v6, 0xf0

    const/16 v9, 0x20

    if-eq v7, v9, :cond_8

    .line 23
    invoke-static {v15, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_2

    .line 25
    :cond_8
    iget v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    const/4 v7, 0x4

    .line 26
    iput v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_2

    :cond_9
    const/16 v7, 0x1f

    if-le v6, v7, :cond_a

    .line 27
    invoke-static {v15, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_2

    :cond_a
    const/4 v7, 0x3

    .line 29
    iput v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_2

    :cond_b
    if-eq v6, v7, :cond_c

    .line 30
    invoke-static {v15, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_2

    .line 32
    :cond_c
    iput v10, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_2

    :cond_d
    move/from16 v17, v7

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_e

    const/4 v7, 0x1

    .line 33
    iput v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 34
    iput-boolean v7, v13, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 35
    :cond_e
    :goto_2
    sget-object v7, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    const/4 v9, 0x3

    const/4 v11, 0x0

    invoke-virtual {v13, v7, v11, v9}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_18

    .line 36
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    iget v11, v9, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 37
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v13, v9, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v13, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 39
    new-instance v13, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    .line 40
    array-length v14, v9

    invoke-direct {v13, v9, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    .line 41
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    const/4 v11, 0x4

    .line 42
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    .line 43
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    const/16 v14, 0x8

    .line 44
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 45
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 46
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v10, 0x3

    .line 47
    invoke-virtual {v13, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 48
    :cond_f
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const-string v11, "Invalid aspect ratio"

    move/from16 v18, v3

    const/16 v3, 0xf

    if-ne v10, v3, :cond_11

    .line 49
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 50
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    if-nez v14, :cond_10

    .line 51
    invoke-static {v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    int-to-float v10, v10

    int-to-float v11, v14

    div-float/2addr v10, v11

    goto :goto_5

    .line 52
    :cond_11
    sget-object v14, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    const/4 v3, 0x7

    if-ge v10, v3, :cond_12

    .line 53
    aget v10, v14, v10

    goto :goto_5

    .line 54
    :cond_12
    invoke-static {v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/high16 v10, 0x3f800000    # 1.0f

    .line 55
    :goto_5
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    .line 56
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 58
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0xf

    .line 59
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 60
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 61
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 62
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 63
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 64
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    const/4 v11, 0x3

    .line 65
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 66
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 67
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 68
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 69
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    :cond_13
    const/4 v3, 0x2

    .line 70
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "Unhandled video object layer shape"

    .line 71
    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_14
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    const/16 v3, 0x10

    .line 73
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 74
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 75
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_17

    if-nez v3, :cond_15

    const-string v3, "Invalid vop_increment_time_resolution"

    .line 76
    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_15
    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x0

    :goto_6
    if-lez v3, :cond_16

    add-int/lit8 v11, v11, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 77
    :cond_16
    invoke-virtual {v13, v11}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 78
    :cond_17
    :goto_7
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    const/16 v3, 0xd

    .line 79
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 80
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 81
    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 82
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 83
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    .line 84
    new-instance v13, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 85
    iput-object v12, v13, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const-string/jumbo v12, "video/mp4v-es"

    .line 86
    iput-object v12, v13, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 87
    iput v11, v13, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 88
    iput v3, v13, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 89
    iput v10, v13, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 90
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 91
    iput-object v3, v13, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 92
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v13}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 93
    invoke-interface {v7, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v3, 0x1

    .line 94
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    goto :goto_8

    :cond_18
    move/from16 v18, v3

    goto :goto_8

    :cond_19
    move/from16 v18, v3

    move/from16 v17, v7

    .line 95
    :goto_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 96
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v3, :cond_1c

    if-lez v8, :cond_1a

    .line 97
    invoke-virtual {v3, v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_1a
    neg-int v2, v8

    .line 98
    :goto_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 99
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v2

    .line 100
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v7, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v3, v7, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 101
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataParsable:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v7, v8, v3}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_1c

    .line 102
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v5, 0x2

    .line 103
    aget-byte v2, v2, v3

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1d

    .line 104
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_a

    :cond_1c
    const/4 v7, 0x1

    :cond_1d
    :goto_a
    sub-int v13, v18, v5

    .line 105
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v8, v13

    sub-long/2addr v2, v8

    .line 106
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->hasOutputFormat:Z

    .line 107
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v15, 0xb6

    if-ne v9, v15, :cond_1e

    if-eqz v8, :cond_1e

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz v8, :cond_1e

    iget-wide v9, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v9, v11

    if-eqz v8, :cond_1e

    .line 108
    iget-wide v11, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v11, v2, v11

    long-to-int v12, v11

    .line 109
    iget-boolean v11, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    .line 110
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 111
    :cond_1e
    iget v8, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v9, 0xb3

    if-eq v8, v9, :cond_1f

    .line 112
    iput-wide v2, v5, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    .line 113
    :cond_1f
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    .line 114
    iput v6, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v3, 0x0

    .line 115
    iput-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    if-eq v6, v15, :cond_21

    if-ne v6, v9, :cond_20

    goto :goto_b

    :cond_20
    const/4 v3, 0x0

    goto :goto_c

    :cond_21
    :goto_b
    move v3, v7

    .line 116
    :goto_c
    iput-boolean v3, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne v6, v15, :cond_22

    goto :goto_d

    :cond_22
    const/4 v7, 0x0

    .line 117
    :goto_d
    iput-boolean v7, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    const/4 v3, 0x0

    .line 118
    iput v3, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    .line 119
    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_0
.end method

.method public final createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userDataReader:Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->csdBuffer:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$CsdBuffer;->reset()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->sampleReader:Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    .line 5
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    .line 6
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->userData:Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method
