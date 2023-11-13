.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/work/InputMergerFactory;
.source "SpliceInfoDecoder.java"


# instance fields
.field public final sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field public timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/work/InputMergerFactory;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 4
    iget-wide v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 5
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 8
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    .line 11
    iget-object v5, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v5, v5

    or-long v11, v3, v5

    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 14
    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 15
    iget-object v5, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    const/16 v7, 0xff

    if-eq v4, v7, :cond_1c

    const/4 v3, 0x4

    const-wide/16 v7, 0x80

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x1

    if-eq v4, v3, :cond_10

    const/4 v3, 0x5

    if-eq v4, v3, :cond_3

    const/4 v1, 0x6

    if-eq v4, v1, :cond_2

    goto/16 :goto_16

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 17
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v3

    .line 18
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    .line 19
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-direct {v5, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    goto/16 :goto_16

    .line 20
    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    move/from16 v24, v2

    goto :goto_0

    :cond_4
    const/16 v24, 0x0

    .line 23
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    if-nez v24, :cond_f

    .line 24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_5

    move v9, v2

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v10, v5, 0x40

    if-eqz v10, :cond_6

    move v10, v2

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    and-int/lit8 v21, v5, 0x20

    if-eqz v21, :cond_7

    move/from16 v21, v2

    goto :goto_3

    :cond_7
    const/16 v21, 0x0

    :goto_3
    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eqz v10, :cond_9

    if-nez v5, :cond_9

    .line 25
    invoke-static {v3, v11, v12}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v25

    goto :goto_5

    :cond_9
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v10, :cond_c

    .line 26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_b

    .line 28
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v28

    if-nez v5, :cond_a

    .line 29
    invoke-static {v3, v11, v12}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v29

    move-wide/from16 v13, v29

    goto :goto_7

    :cond_a
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    :goto_7
    new-instance v15, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 31
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v31

    const/16 v33, 0x0

    move-object/from16 v27, v15

    move-wide/from16 v29, v13

    invoke-direct/range {v27 .. v33}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    .line 32
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    move-object v4, v2

    :cond_c
    if-eqz v21, :cond_e

    .line 33
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v11, v2

    and-long v6, v11, v7

    cmp-long v2, v6, v17

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    and-long v6, v11, v19

    shl-long/2addr v6, v1

    .line 34
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    or-long/2addr v6, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    const-wide/16 v11, 0x5a

    .line 35
    div-long/2addr v6, v11

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 37
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 38
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move/from16 v36, v1

    move/from16 v33, v2

    move/from16 v38, v3

    move-object/from16 v32, v4

    move/from16 v27, v5

    move-wide/from16 v34, v6

    move/from16 v37, v8

    move-wide/from16 v1, v25

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_a

    :cond_f
    move-object/from16 v32, v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 39
    :goto_a
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-object/from16 v21, v5

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v30

    move-wide/from16 v28, v1

    invoke-direct/range {v21 .. v38}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    goto/16 :goto_16

    .line 41
    :cond_10
    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_1b

    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v40

    .line 45
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_11

    const/16 v42, 0x1

    goto :goto_c

    :cond_11
    const/16 v42, 0x0

    .line 46
    :goto_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v42, :cond_1a

    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_d

    :cond_12
    const/4 v10, 0x0

    :goto_d
    and-int/lit8 v11, v9, 0x40

    if-eqz v11, :cond_13

    const/4 v11, 0x1

    goto :goto_e

    :cond_13
    const/4 v11, 0x0

    :goto_e
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    :goto_f
    if-eqz v11, :cond_15

    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    goto :goto_10

    :cond_15
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_10
    if-nez v11, :cond_17

    .line 49
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 50
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v6, :cond_16

    .line 51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 52
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    move/from16 p0, v2

    .line 53
    new-instance v2, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-direct {v2, v1, v7, v8, v5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p0

    const/16 v1, 0x20

    const-wide/16 v7, 0x80

    goto :goto_11

    :cond_16
    move/from16 p0, v2

    move-object v6, v14

    goto :goto_12

    :cond_17
    move/from16 p0, v2

    :goto_12
    if-eqz v9, :cond_19

    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v7, 0x80

    and-long v14, v1, v7

    cmp-long v9, v14, v17

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_13

    :cond_18
    const/4 v9, 0x0

    :goto_13
    and-long v1, v1, v19

    const/16 v14, 0x20

    shl-long/2addr v1, v14

    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    or-long/2addr v1, v15

    const-wide/16 v15, 0x3e8

    mul-long/2addr v1, v15

    const-wide/16 v21, 0x5a

    .line 56
    div-long v1, v1, v21

    goto :goto_14

    :cond_19
    const-wide/16 v7, 0x80

    const/16 v14, 0x20

    const-wide/16 v15, 0x3e8

    const-wide/16 v21, 0x5a

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    .line 57
    :goto_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v23

    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    move-wide/from16 v49, v1

    move-object/from16 v45, v6

    move/from16 v48, v9

    move/from16 v43, v10

    move/from16 v44, v11

    move-wide/from16 v46, v12

    move/from16 v51, v23

    move/from16 v52, v24

    move/from16 v53, v25

    goto :goto_15

    :cond_1a
    move v14, v1

    move/from16 p0, v2

    const-wide/16 v15, 0x3e8

    const-wide/16 v21, 0x5a

    move-object/from16 v45, v6

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v48, 0x0

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    .line 60
    :goto_15
    new-instance v1, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v53}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    .line 61
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p0

    move v1, v14

    goto/16 :goto_b

    .line 62
    :cond_1b
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    goto :goto_16

    .line 63
    :cond_1c
    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    add-int/lit8 v3, v3, -0x4

    .line 65
    new-array v10, v3, [B

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v10, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 67
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    goto :goto_16

    .line 68
    :cond_1d
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_16
    if-nez v5, :cond_1e

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v2, v1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    :goto_17
    return-object v0
.end method
