.class public final Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# instance fields
.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field public marker:I

.field public motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field public mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

.field public mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

.field public mp4StartPosition:J

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public segmentLength:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    return-void
.end method


# virtual methods
.method public final endReadingWithImageTrack()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x6

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return-void
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public final varargs outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x400

    const/4 v1, 0x4

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "image/jpeg"

    .line 5
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 7
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 9
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 4
    check-cast p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const-wide/16 v4, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_1d

    if-eq v3, v8, :cond_1c

    const/4 v10, -0x1

    if-eq v3, v7, :cond_b

    const/4 v4, 0x5

    if-eq v3, v6, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v0, 0x6

    if-ne v3, v0, :cond_0

    return v10

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eq v1, v3, :cond_3

    .line 4
    :cond_2
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->lastExtractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 5
    new-instance v3, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 6
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 9
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    :cond_4
    return v1

    .line 10
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v3, v5, v10

    if-eqz v3, :cond_6

    .line 11
    iput-wide v10, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v8

    .line 12
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 13
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 14
    invoke-interface {v1, v2, v9, v8, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_1

    .line 16
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 17
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-nez v2, :cond_8

    .line 18
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 19
    invoke-direct {v2, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    .line 20
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 21
    :cond_8
    new-instance v2, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    invoke-direct {v2, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4ExtractorStartOffsetExtractorInput:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;

    .line 22
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 23
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_9

    move v1, v8

    goto :goto_0

    :cond_9
    move v1, v9

    .line 24
    :goto_0
    invoke-static {v2, v9, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-direct {v2, v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 28
    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-array v1, v8, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 29
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 30
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v1, v9

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->outputImageTrack([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 32
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_1

    .line 33
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    :goto_1
    return v9

    .line 34
    :cond_b
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_1a

    .line 35
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 36
    new-array v3, v2, [B

    .line 37
    invoke-interface {v1, v3, v9, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 38
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v6, :cond_1b

    add-int/lit8 v6, v2, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_c

    move-object v11, v8

    move v6, v9

    goto :goto_3

    :cond_c
    move v6, v9

    :goto_2
    if-ge v6, v2, :cond_d

    .line 39
    aget-byte v11, v3, v6

    if-eqz v11, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_d
    add-int/lit8 v11, v6, 0x0

    .line 40
    invoke-static {v3, v9, v11}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v11

    if-ge v6, v2, :cond_e

    add-int/lit8 v6, v6, 0x1

    :cond_e
    :goto_3
    const-string v12, "http://ns.adobe.com/xap/1.0/"

    .line 41
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    sub-int v11, v2, v6

    if-nez v11, :cond_f

    move-object v2, v8

    goto :goto_5

    :cond_f
    move v11, v6

    :goto_4
    if-ge v11, v2, :cond_10

    .line 42
    aget-byte v12, v3, v11

    if-eqz v12, :cond_10

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_10
    sub-int/2addr v11, v6

    .line 43
    invoke-static {v3, v6, v11}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_1b

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    cmp-long v1, v11, v4

    if-nez v1, :cond_11

    goto/16 :goto_9

    .line 45
    :cond_11
    :try_start_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    :goto_6
    if-nez v1, :cond_12

    goto/16 :goto_9

    .line 47
    :cond_12
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_13

    goto/16 :goto_9

    .line 48
    :cond_13
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v10

    move-wide v14, v4

    move-wide/from16 v16, v14

    move-wide/from16 v20, v16

    move-wide/from16 v22, v20

    move v3, v9

    :goto_7
    if-ltz v2, :cond_17

    .line 49
    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 50
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string/jumbo v10, "video/mp4"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    if-nez v2, :cond_14

    const-wide/16 v18, 0x0

    .line 51
    iget-wide v6, v6, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v11, v6

    move-wide v6, v11

    move-wide/from16 v11, v18

    goto :goto_8

    .line 52
    :cond_14
    iget-wide v6, v6, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v6, v11, v6

    move-wide/from16 v24, v6

    move-wide v6, v11

    move-wide/from16 v11, v24

    :goto_8
    if-eqz v3, :cond_15

    cmp-long v10, v11, v6

    if-eqz v10, :cond_15

    sub-long v22, v6, v11

    move v3, v9

    move-wide/from16 v20, v11

    :cond_15
    if-nez v2, :cond_16

    move-wide/from16 v16, v6

    move-wide v14, v11

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_17
    cmp-long v2, v20, v4

    if-eqz v2, :cond_19

    cmp-long v2, v22, v4

    if-eqz v2, :cond_19

    cmp-long v2, v14, v4

    if-eqz v2, :cond_19

    cmp-long v2, v16, v4

    if-nez v2, :cond_18

    goto :goto_9

    .line 53
    :cond_18
    new-instance v8, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    move-object v13, v8

    move-wide/from16 v18, v1

    invoke-direct/range {v13 .. v23}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    .line 54
    :cond_19
    :goto_9
    iput-object v8, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-eqz v8, :cond_1b

    .line 55
    iget-wide v1, v8, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    goto :goto_a

    .line 56
    :cond_1a
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 57
    :cond_1b
    :goto_a
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return v9

    .line 58
    :cond_1c
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 59
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 60
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 61
    invoke-interface {v1, v2, v9, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 62
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->segmentLength:I

    .line 63
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    return v9

    .line 64
    :cond_1d
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 65
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 67
    invoke-interface {v1, v2, v9, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 68
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1f

    .line 69
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4StartPosition:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1e

    .line 70
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    goto :goto_b

    .line 71
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->endReadingWithImageTrack()V

    goto :goto_b

    :cond_1f
    const v2, 0xffd0

    if-lt v1, v2, :cond_20

    const v2, 0xffd9

    if-le v1, v2, :cond_21

    :cond_20
    const v2, 0xff01

    if-eq v1, v2, :cond_21

    .line 72
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    :cond_21
    :goto_b
    return v9
.end method

.method public final release()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->mp4Extractor:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 6
    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    .line 7
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v3

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->peekMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    .line 11
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->marker:I

    const v2, 0xffe1

    if-eq v0, v2, :cond_2

    return v1

    .line 12
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    .line 13
    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 16
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 17
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
