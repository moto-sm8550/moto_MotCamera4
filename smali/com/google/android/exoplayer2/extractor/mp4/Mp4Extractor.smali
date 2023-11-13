.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public accumulatedSampleSizes:[[J

.field public atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field public durationUs:J

.field public extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public fileType:I

.field public firstVideoTrackIndex:I

.field public final flags:I

.field public motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field public final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public parserState:I

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleTrackIndex:I

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field public final slowMotionMetadataEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    return-void
.end method

.method public static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p0, p0, v0

    .line 4
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, v0

    if-nez v0, :cond_0

    .line 4
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    .line 5
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 7
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 9
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v6

    :cond_1
    if-ne v6, v5, :cond_2

    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    .line 11
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0

    .line 12
    :cond_2
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v7, v6

    .line 13
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v9, v9, v6

    cmp-long v11, v7, p1

    if-gez v11, :cond_3

    .line 14
    iget v11, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_3

    .line 15
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p1

    if-eq p1, v5, :cond_3

    if-eq p1, v6, :cond_3

    .line 16
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v0, p2, p1

    .line 17
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_3
    move-wide p1, v0

    move-wide v0, v3

    :goto_0
    move-wide v5, p1

    move-wide p1, v7

    goto :goto_1

    :cond_4
    const-wide v9, 0x7fffffffffffffffL

    move-wide v5, v0

    move-wide v0, v3

    :goto_1
    const/4 v2, 0x0

    .line 18
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v7

    if-ge v2, v8, :cond_7

    .line 19
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v2, v8, :cond_6

    .line 20
    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 21
    invoke-static {v7, p1, p2, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    cmp-long v10, v0, v3

    if-eqz v10, :cond_5

    .line 22
    invoke-static {v7, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v5

    :cond_5
    move-wide v9, v8

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_7
    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p0, p1, p2, v9, v10}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v0, v3

    if-nez p1, :cond_8

    .line 24
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    .line 25
    invoke-direct {p1, p0, p0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 26
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 27
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p2
.end method

.method public final init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final processAtomEnded(J)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_59

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 3
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v4, 0x6d6f6f76

    if-ne v2, v4, :cond_57

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v9, v5

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    move v9, v4

    .line 6
    :goto_1
    new-instance v11, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v4, 0x75647461

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const v5, 0x696c7374

    const v6, 0x6d657461

    const/16 v7, 0x8

    if-eqz v4, :cond_36

    .line 8
    sget-object v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 9
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 10
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_2
    iget v12, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v13, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v12, v13

    if-lt v12, v7, :cond_34

    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 13
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    if-ne v14, v6, :cond_2d

    .line 14
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v6, v13, v12

    .line 15
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 17
    :goto_3
    iget v8, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v8, v6, :cond_2c

    .line 18
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 19
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    if-ne v15, v5, :cond_2b

    .line 20
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v8, v14

    .line 21
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_4
    iget v6, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v6, v8, :cond_29

    .line 24
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/2addr v7, v6

    .line 25
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    shr-int/lit8 v14, v6, 0x18

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xa9

    move/from16 v16, v8

    const-string v8, "TCON"

    move-object/from16 v17, v2

    const-string v2, "MetadataUtil"

    if-eq v14, v15, :cond_19

    const/16 v15, 0xfd

    if-ne v14, v15, :cond_1

    goto/16 :goto_8

    :cond_1
    const v14, 0x676e7265

    if-ne v6, v14, :cond_4

    .line 26
    :try_start_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v6

    if-lez v6, :cond_2

    .line 27
    sget-object v14, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    const/16 v15, 0xc0

    if-gt v6, v15, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 28
    aget-object v6, v14, v6

    goto :goto_5

    :cond_2
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_3

    .line 29
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const/4 v14, 0x0

    invoke-direct {v2, v8, v14, v6}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_3
    const-string v6, "Failed to parse standard genre code"

    .line 30
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    const/4 v8, 0x0

    const v14, 0x6469736b

    if-ne v6, v14, :cond_5

    const-string v2, "TPOS"

    .line 31
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_5
    const v14, 0x74726b6e

    if-ne v6, v14, :cond_6

    const-string v2, "TRCK"

    .line 32
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_6
    const v14, 0x746d706f

    if-ne v6, v14, :cond_7

    const-string v2, "TBPM"

    const/4 v8, 0x0

    const/4 v14, 0x1

    .line 33
    invoke-static {v6, v2, v4, v14, v8}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    goto/16 :goto_d

    :cond_7
    const v14, 0x6370696c

    if-ne v6, v14, :cond_8

    const-string v2, "TCMP"

    const/4 v8, 0x1

    .line 34
    invoke-static {v6, v2, v4, v8, v8}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    goto/16 :goto_d

    :cond_8
    const v14, 0x636f7672

    if-ne v6, v14, :cond_9

    .line 35
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_9
    const v14, 0x61415254

    if-ne v6, v14, :cond_a

    const-string v2, "TPE2"

    .line 36
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_a
    const v14, 0x736f6e6d

    if-ne v6, v14, :cond_b

    const-string v2, "TSOT"

    .line 37
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_b
    const v14, 0x736f616c

    if-ne v6, v14, :cond_c

    const-string v2, "TSO2"

    .line 38
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_c
    const v14, 0x736f6172

    if-ne v6, v14, :cond_d

    const-string v2, "TSOA"

    .line 39
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_d
    const v14, 0x736f6161

    if-ne v6, v14, :cond_e

    const-string v2, "TSOP"

    .line 40
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_e
    const v14, 0x736f636f

    if-ne v6, v14, :cond_f

    const-string v2, "TSOC"

    .line 41
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_f
    const v14, 0x72746e67

    if-ne v6, v14, :cond_10

    const-string v2, "ITUNESADVISORY"

    const/4 v8, 0x0

    .line 42
    invoke-static {v6, v2, v4, v8, v8}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    goto/16 :goto_d

    :cond_10
    const v14, 0x70676170

    if-ne v6, v14, :cond_11

    const-string v2, "ITUNESGAPLESS"

    const/4 v8, 0x0

    const/4 v14, 0x1

    .line 43
    invoke-static {v6, v2, v4, v8, v14}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    goto/16 :goto_d

    :cond_11
    const v14, 0x736f736e

    if-ne v6, v14, :cond_12

    const-string v2, "TVSHOWSORT"

    .line 44
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_12
    const v14, 0x74767368

    if-ne v6, v14, :cond_13

    const-string v2, "TVSHOW"

    .line 45
    invoke-static {v6, v2, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_13
    const v14, 0x2d2d2d2d

    if-ne v6, v14, :cond_23

    const/4 v2, -0x1

    const/4 v6, -0x1

    move-object v14, v8

    .line 46
    :goto_6
    iget v15, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v15, v7, :cond_17

    .line 47
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 v19, v15

    .line 48
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    const/4 v0, 0x4

    .line 49
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const v0, 0x6d65616e

    if-ne v15, v0, :cond_14

    add-int/lit8 v0, v18, -0xc

    .line 50
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_7

    :cond_14
    const v0, 0x6e616d65

    if-ne v15, v0, :cond_15

    add-int/lit8 v0, v18, -0xc

    .line 51
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_7

    :cond_15
    const v0, 0x64617461

    if-ne v15, v0, :cond_16

    move/from16 v6, v18

    move/from16 v2, v19

    :cond_16
    add-int/lit8 v0, v18, -0xc

    .line 52
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_7
    move-object/from16 v0, p0

    goto :goto_6

    :cond_17
    if-eqz v8, :cond_25

    if-eqz v14, :cond_25

    const/4 v0, -0x1

    if-ne v2, v0, :cond_18

    goto/16 :goto_a

    .line 53
    :cond_18
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v0, 0x10

    .line 54
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v6, v6, -0x10

    .line 55
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {v2, v8, v14, v0}, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_19
    :goto_8
    const v0, 0xffffff

    and-int/2addr v0, v6

    const v14, 0x636d74

    if-ne v0, v14, :cond_1a

    .line 57
    invoke-static {v6, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v2

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_1a
    const v14, 0x6e616d

    if-eq v0, v14, :cond_27

    const v14, 0x74726b

    if-ne v0, v14, :cond_1b

    goto/16 :goto_c

    :cond_1b
    const v14, 0x636f6d

    if-eq v0, v14, :cond_26

    const v14, 0x777274

    if-ne v0, v14, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const v14, 0x646179

    if-ne v0, v14, :cond_1d

    const-string v0, "TDRC"

    .line 58
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_1d
    const v14, 0x415254

    if-ne v0, v14, :cond_1e

    const-string v0, "TPE1"

    .line 59
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto/16 :goto_d

    :cond_1e
    const v14, 0x746f6f

    if-ne v0, v14, :cond_1f

    const-string v0, "TSSE"

    .line 60
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_1f
    const v14, 0x616c62

    if-ne v0, v14, :cond_20

    const-string v0, "TALB"

    .line 61
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_20
    const v14, 0x6c7972

    if-ne v0, v14, :cond_21

    const-string v0, "USLT"

    .line 62
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_21
    const v14, 0x67656e

    if-ne v0, v14, :cond_22

    .line 63
    invoke-static {v6, v8, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_22
    const v8, 0x677270

    if-ne v0, v8, :cond_23

    const-string v0, "TIT1"

    .line 64
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_23
    const-string v0, "Skipped unknown metadata entry: "

    .line 65
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_24

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_24
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 66
    :goto_9
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_26
    :goto_b
    const-string v0, "TCOM"

    .line 67
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2

    goto :goto_d

    :cond_27
    :goto_c
    const-string v0, "TIT2"

    .line 68
    invoke-static {v6, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_d
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    if-eqz v2, :cond_28

    .line 70
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object/from16 v0, p0

    move/from16 v8, v16

    move-object/from16 v2, v17

    goto/16 :goto_4

    .line 71
    :goto_e
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 72
    throw v0

    :cond_29
    move-object/from16 v17, v2

    .line 73
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_f

    :cond_2a
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_10

    :cond_2b
    move-object/from16 v17, v2

    add-int/2addr v8, v14

    .line 74
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v7, 0x8

    const v5, 0x696c7374

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v17, v2

    :goto_f
    const/4 v0, 0x0

    :goto_10
    move-object v8, v0

    goto :goto_14

    :cond_2d
    move-object/from16 v17, v2

    const v0, 0x736d7461

    if-ne v14, v0, :cond_33

    .line 75
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v0, v13, v12

    const/16 v2, 0xc

    .line 76
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 77
    :goto_11
    iget v2, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v2, v0, :cond_32

    .line 78
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 79
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const v7, 0x73617574

    if-ne v6, v7, :cond_31

    const/16 v0, 0xe

    if-ge v5, v0, :cond_2e

    goto :goto_13

    :cond_2e
    const/4 v0, 0x5

    .line 80
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2f

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2f

    goto :goto_13

    :cond_2f
    if-ne v0, v2, :cond_30

    const/high16 v0, 0x43700000    # 240.0f

    goto :goto_12

    :cond_30
    const/high16 v0, 0x42f00000    # 120.0f

    :goto_12
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 83
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 84
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v7, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v7, v0, v5}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v0, 0x0

    aput-object v7, v2, v0

    invoke-direct {v6, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v10, v6

    goto :goto_14

    :cond_31
    add-int/2addr v2, v5

    .line 85
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_11

    :cond_32
    :goto_13
    const/4 v0, 0x0

    move-object v10, v0

    :cond_33
    :goto_14
    add-int/2addr v13, v12

    .line 86
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v7, 0x8

    const v5, 0x696c7374

    const v6, 0x6d657461

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    goto/16 :goto_2

    :cond_34
    move-object/from16 v17, v2

    .line 87
    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 88
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 89
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v2, :cond_35

    .line 90
    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_35
    const v6, 0x6d657461

    goto :goto_15

    :cond_36
    move-object/from16 v17, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 91
    :goto_15
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 92
    sget-object v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    const v5, 0x68646c72

    .line 93
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const v6, 0x6b657973

    .line 94
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const v7, 0x696c7374

    .line 95
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v5, :cond_3f

    if-eqz v6, :cond_3f

    if-eqz v4, :cond_3f

    .line 96
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v7, 0x10

    .line 97
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 98
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const v7, 0x6d647461

    if-eq v5, v7, :cond_37

    goto/16 :goto_1b

    .line 99
    :cond_37
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 100
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 101
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 102
    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v6, :cond_38

    .line 103
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    const/4 v12, 0x4

    .line 104
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v10, v10, -0x8

    .line 105
    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_38
    const/16 v5, 0x8

    .line 106
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 107
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 108
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :goto_17
    iget v10, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v12, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v12

    if-le v10, v5, :cond_3d

    .line 110
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_3b

    if-ge v10, v6, :cond_3b

    .line 112
    aget-object v10, v7, v10

    add-int v13, v12, v5

    .line 113
    :goto_18
    iget v14, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    if-ge v14, v13, :cond_3a

    .line 114
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    move/from16 v16, v6

    .line 115
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    move-object/from16 v18, v7

    const v7, 0x64617461

    if-ne v6, v7, :cond_39

    .line 116
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 117
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v15, v15, -0x10

    .line 118
    new-array v13, v15, [B

    const/4 v14, 0x0

    .line 119
    invoke-virtual {v4, v13, v14, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 120
    new-instance v14, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {v14, v10, v13, v7, v6}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_19

    :cond_39
    add-int/2addr v14, v15

    .line 121
    invoke-virtual {v4, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move/from16 v6, v16

    move-object/from16 v7, v18

    goto :goto_18

    :cond_3a
    move/from16 v16, v6

    move-object/from16 v18, v7

    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_3c

    .line 122
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3b
    move/from16 v16, v6

    move-object/from16 v18, v7

    const/16 v6, 0x34

    const-string v7, "Skipped metadata with unknown key index: "

    const-string v13, "AtomParsers"

    .line 123
    invoke-static {v6, v7, v10, v13}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :cond_3c
    :goto_1a
    add-int/2addr v12, v5

    .line 124
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x8

    move/from16 v6, v16

    move-object/from16 v7, v18

    goto :goto_17

    .line 125
    :cond_3d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_1b

    :cond_3e
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v4, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1c

    :cond_3f
    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    move-object v12, v4

    .line 126
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_40

    const/4 v4, 0x1

    goto :goto_1d

    :cond_40
    const/4 v4, 0x0

    :goto_1d
    move v8, v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    .line 127
    sget-object v10, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    const/4 v13, -0x1

    move-object v4, v11

    .line 128
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v3

    .line 129
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 130
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move v10, v8

    move-wide v8, v6

    :goto_1e
    if-ge v10, v5, :cond_51

    .line 132
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 133
    iget v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v15, :cond_41

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v20, v3

    move/from16 v21, v5

    move v0, v13

    move-object/from16 v3, v17

    move-object/from16 v13, p0

    goto/16 :goto_28

    .line 134
    :cond_41
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object v15, v12

    move/from16 v16, v13

    .line 135
    iget-wide v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    cmp-long v8, v12, v8

    if-eqz v8, :cond_42

    goto :goto_1f

    :cond_42
    iget-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 136
    :goto_1f
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 137
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 138
    invoke-interface {v4, v10, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v9

    invoke-direct {v8, v1, v14, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 139
    iget-object v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v20, v3

    const-string v3, "audio/true-hd"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 140
    iget v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v3, v3, 0x10

    goto :goto_20

    .line 141
    :cond_43
    iget v3, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v3, v3, 0x1e

    .line 142
    :goto_20
    iget-object v9, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    move/from16 v21, v5

    .line 143
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5, v9}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;)V

    .line 144
    iput v3, v5, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 145
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v9, 0x2

    if-ne v3, v9, :cond_44

    const-wide/16 v18, 0x0

    cmp-long v9, v12, v18

    if-lez v9, :cond_44

    iget v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v14, 0x1

    if-le v9, v14, :cond_44

    int-to-float v9, v9

    long-to-float v12, v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v12, v13

    div-float/2addr v9, v12

    .line 146
    iput v9, v5, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    :cond_44
    const/4 v9, 0x1

    if-ne v3, v9, :cond_46

    .line 147
    iget v9, v11, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_45

    iget v13, v11, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v13, v12, :cond_45

    const/4 v12, 0x1

    goto :goto_21

    :cond_45
    const/4 v12, 0x0

    :goto_21
    if-eqz v12, :cond_46

    .line 148
    iput v9, v5, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 149
    iget v9, v11, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 150
    iput v9, v5, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    :cond_46
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    move-object/from16 v13, p0

    .line 151
    iget-object v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_47

    const/4 v14, 0x0

    goto :goto_22

    :cond_47
    new-instance v14, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v12, v13, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_22
    const/4 v12, 0x1

    aput-object v14, v9, v12

    .line 152
    new-instance v14, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v14, v12}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v12, 0x1

    if-ne v3, v12, :cond_48

    if-eqz v2, :cond_4c

    move-object/from16 v22, v0

    move-object v14, v2

    move-object/from16 v23, v14

    :goto_23
    move-object v12, v15

    goto :goto_25

    :cond_48
    const/4 v12, 0x2

    if-ne v3, v12, :cond_4c

    if-eqz v15, :cond_4c

    const/4 v3, 0x0

    move-object v12, v15

    .line 153
    :goto_24
    iget-object v15, v12, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-object/from16 v22, v0

    array-length v0, v15

    if-ge v3, v0, :cond_4b

    .line 154
    aget-object v0, v15, v3

    .line 155
    instance-of v15, v0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    if-eqz v15, :cond_49

    .line 156
    check-cast v0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 157
    iget-object v15, v0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    move-object/from16 v23, v2

    const-string v2, "com.android.capture.fps"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 158
    new-instance v14, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v14, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_25

    :cond_49
    move-object/from16 v23, v2

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_24

    :cond_4b
    move-object/from16 v23, v2

    goto :goto_25

    :cond_4c
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    goto :goto_23

    :goto_25
    const/4 v0, 0x0

    :goto_26
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4d

    .line 159
    aget-object v2, v9, v0

    .line 160
    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 161
    :cond_4d
    iget-object v0, v14, Lcom/google/android/exoplayer2/metadata/Metadata;->entries:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    if-lez v0, :cond_4e

    .line 162
    iput-object v14, v5, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 163
    :cond_4e
    iget-object v0, v8, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 164
    new-instance v2, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 165
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 166
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    const/4 v0, -0x1

    move/from16 v2, v16

    if-ne v2, v0, :cond_50

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_27

    :cond_4f
    move/from16 v2, v16

    :cond_50
    move v0, v2

    :goto_27
    move-object/from16 v3, v17

    .line 168
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v13

    :goto_28
    add-int/lit8 v10, v10, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move v13, v0

    move-object/from16 v17, v3

    move-object/from16 v3, v20

    move/from16 v5, v21

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto/16 :goto_1e

    :cond_51
    const-wide/16 v18, 0x0

    move v2, v13

    move-object/from16 v3, v17

    move-object/from16 v13, p0

    .line 169
    iput v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 170
    iput-wide v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 171
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 172
    array-length v3, v2

    new-array v3, v3, [[J

    .line 173
    array-length v5, v2

    new-array v5, v5, [I

    .line 174
    array-length v6, v2

    new-array v6, v6, [J

    .line 175
    array-length v7, v2

    new-array v7, v7, [Z

    const/4 v8, 0x0

    .line 176
    :goto_29
    array-length v9, v2

    if-ge v8, v9, :cond_52

    .line 177
    aget-object v9, v2, v8

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v9, v9, [J

    aput-object v9, v3, v8

    .line 178
    aget-object v9, v2, v8

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_52
    const/4 v8, 0x0

    move v9, v8

    move-wide/from16 v14, v18

    .line 179
    :goto_2a
    array-length v10, v2

    if-ge v9, v10, :cond_56

    const-wide v10, 0x7fffffffffffffffL

    move v12, v8

    const/16 v16, -0x1

    .line 180
    :goto_2b
    array-length v0, v2

    if-ge v12, v0, :cond_54

    .line 181
    aget-boolean v0, v7, v12

    if-nez v0, :cond_53

    aget-wide v18, v6, v12

    cmp-long v0, v18, v10

    if-gtz v0, :cond_53

    .line 182
    aget-wide v10, v6, v12

    move/from16 v16, v12

    :cond_53
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 183
    :cond_54
    aget v0, v5, v16

    .line 184
    aget-object v10, v3, v16

    aput-wide v14, v10, v0

    .line 185
    aget-object v10, v2, v16

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v10, v10, v0

    int-to-long v10, v10

    add-long/2addr v14, v10

    const/4 v10, 0x1

    add-int/2addr v0, v10

    .line 186
    aput v0, v5, v16

    .line 187
    aget-object v11, v3, v16

    array-length v11, v11

    if-ge v0, v11, :cond_55

    .line 188
    aget-object v10, v2, v16

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v10, v10, v0

    aput-wide v10, v6, v16

    goto :goto_2a

    .line 189
    :cond_55
    aput-boolean v10, v7, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 190
    :cond_56
    iput-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 191
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 192
    invoke-interface {v4, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 193
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    .line 194
    iput v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_2c

    :cond_57
    move-object v13, v0

    .line 195
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 196
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 197
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_2c
    move-object v0, v13

    goto/16 :goto_0

    :cond_59
    move-object v13, v0

    .line 198
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_5a
    return-void
.end method

.method public final read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const v4, 0x66747970

    const/4 v7, 0x4

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_44

    const-wide/32 v16, 0x40000

    if-eq v3, v14, :cond_37

    const-wide/16 v18, 0x8

    if-eq v3, v12, :cond_1f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    .line 3
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    if-eqz v5, :cond_1a

    if-eq v5, v14, :cond_18

    const/16 v6, 0xb00

    const/16 v13, 0x890

    if-eq v5, v12, :cond_12

    if-ne v5, v4, :cond_11

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v17

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v21

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v26

    sub-long v21, v21, v26

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v10, v5

    sub-long v10, v21, v10

    long-to-int v5, v10

    .line 6
    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 7
    iget-object v11, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 8
    invoke-interface {v1, v11, v15, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    move v1, v15

    .line 9
    :goto_0
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_10

    .line 10
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    move-object/from16 v27, v9

    .line 11
    iget-wide v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long v8, v8, v17

    long-to-int v8, v8

    .line 12
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 13
    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 14
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    .line 15
    invoke-virtual {v10, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "Super_SlowMotion_BGM"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v7

    goto :goto_2

    :sswitch_1
    const-string v11, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v4

    goto :goto_2

    :sswitch_2
    const-string v11, "Super_SlowMotion_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v12

    goto :goto_2

    :sswitch_3
    const-string v11, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v14

    goto :goto_2

    :sswitch_4
    const-string v11, "SlowMotion_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    move v9, v15

    goto :goto_2

    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_a

    if-eq v9, v14, :cond_9

    if-eq v9, v12, :cond_8

    if-eq v9, v4, :cond_7

    if-ne v9, v7, :cond_6

    const/16 v9, 0xb01

    goto :goto_3

    :cond_6
    const-string v0, "Invalid SEF name"

    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v9, 0xb04

    goto :goto_3

    :cond_8
    move v9, v6

    goto :goto_3

    :cond_9
    const/16 v9, 0xb03

    goto :goto_3

    :cond_a
    move v9, v13

    .line 18
    :goto_3
    iget v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v8, v8, 0x8

    sub-int/2addr v5, v8

    if-eq v9, v13, :cond_d

    if-eq v9, v6, :cond_c

    const/16 v5, 0xb01

    if-eq v9, v5, :cond_c

    const/16 v5, 0xb03

    if-eq v9, v5, :cond_c

    const/16 v5, 0xb04

    if-ne v9, v5, :cond_b

    goto :goto_4

    .line 19
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    move-object/from16 v7, v27

    goto :goto_6

    .line 20
    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    sget-object v9, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v9, v5}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    move v9, v15

    .line 23
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_f

    .line 24
    sget-object v11, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v11, v7}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    .line 25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v4, :cond_e

    .line 26
    :try_start_0
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 27
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 28
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v14

    shl-int v34, v14, v7

    .line 29
    new-instance v7, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object/from16 v29, v7

    invoke-direct/range {v29 .. v34}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x4

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_e
    const/4 v1, 0x0

    .line 31
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 32
    :cond_f
    new-instance v5, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    invoke-direct {v5, v8}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    move-object/from16 v7, v27

    .line 33
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move-object v9, v7

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_10
    const-wide/16 v8, 0x0

    .line 34
    iput-wide v8, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    move v1, v14

    goto/16 :goto_d

    .line 35
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    .line 37
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v5, v5, -0xc

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    .line 38
    new-instance v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v9, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 39
    iget-object v10, v9, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 40
    invoke-interface {v1, v10, v15, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    move v1, v15

    .line 41
    :goto_7
    div-int/lit8 v10, v5, 0xc

    if-ge v1, v10, :cond_16

    .line 42
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v10

    if-eq v10, v13, :cond_14

    if-eq v10, v6, :cond_14

    const/16 v11, 0xb01

    if-eq v10, v11, :cond_13

    const/16 v6, 0xb03

    if-eq v10, v6, :cond_13

    const/16 v6, 0xb04

    if-eq v10, v6, :cond_15

    const/16 v10, 0x8

    .line 44
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move-wide/from16 v20, v7

    goto :goto_9

    :cond_13
    const/16 v6, 0xb04

    goto :goto_8

    :cond_14
    const/16 v6, 0xb04

    const/16 v11, 0xb01

    .line 45
    :cond_15
    :goto_8
    iget v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    int-to-long v13, v10

    sub-long v13, v7, v13

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v10

    move-wide/from16 v20, v7

    int-to-long v6, v10

    sub-long/2addr v13, v6

    .line 46
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    .line 47
    iget-object v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    invoke-direct {v10, v13, v14, v6}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;-><init>(JI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v20

    const/16 v6, 0xb00

    const/16 v13, 0x890

    const/4 v14, 0x1

    goto :goto_7

    .line 48
    :cond_16
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-wide/16 v5, 0x0

    .line 49
    iput-wide v5, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_a

    .line 50
    :cond_17
    iput v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 51
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_a

    .line 52
    :cond_18
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 53
    iget-object v6, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 54
    invoke-interface {v1, v6, v15, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 55
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    .line 56
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_19

    const-wide/16 v4, 0x0

    .line 57
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_a

    .line 58
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 59
    iput v12, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    :goto_a
    const/4 v1, 0x1

    goto :goto_d

    .line 60
    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1c

    cmp-long v1, v4, v18

    if-gez v1, :cond_1b

    goto :goto_b

    :cond_1b
    sub-long v4, v4, v18

    goto :goto_c

    :cond_1c
    :goto_b
    const-wide/16 v4, 0x0

    .line 61
    :goto_c
    iput-wide v4, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v1, 0x1

    .line 62
    iput v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 63
    :goto_d
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_1d
    return v1

    .line 65
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    .line 67
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2a

    move v13, v15

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide v21, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    .line 68
    :goto_e
    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    sget v23, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    array-length v11, v14

    if-ge v13, v11, :cond_27

    .line 69
    aget-object v11, v14, v13

    .line 70
    iget v14, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 71
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v14, v12, :cond_20

    goto :goto_11

    .line 72
    :cond_20
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v11, v11, v14

    .line 73
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    aget-object v15, v15, v13

    aget-wide v14, v15, v14

    sub-long/2addr v11, v3

    const-wide/16 v24, 0x0

    cmp-long v34, v11, v24

    if-ltz v34, :cond_22

    cmp-long v34, v11, v16

    if-ltz v34, :cond_21

    goto :goto_f

    :cond_21
    const/4 v5, 0x0

    goto :goto_10

    :cond_22
    :goto_f
    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_23

    if-nez v10, :cond_24

    :cond_23
    if-ne v5, v10, :cond_25

    cmp-long v6, v11, v31

    if-gez v6, :cond_25

    :cond_24
    move v10, v5

    move-wide/from16 v31, v11

    move v8, v13

    move-wide/from16 v29, v14

    :cond_25
    cmp-long v6, v14, v21

    if-gez v6, :cond_26

    move v9, v5

    move v7, v13

    move-wide/from16 v21, v14

    :cond_26
    :goto_11
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x2

    const/4 v15, 0x0

    goto :goto_e

    :cond_27
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v21, v5

    if-eqz v5, :cond_28

    if-eqz v9, :cond_28

    const-wide/32 v5, 0xa00000

    add-long v21, v21, v5

    cmp-long v5, v29, v21

    if-gez v5, :cond_29

    :cond_28
    move v7, v8

    .line 74
    :cond_29
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v7, v5, :cond_2a

    const/4 v9, -0x1

    goto/16 :goto_17

    .line 75
    :cond_2a
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v5, v5, v6

    .line 76
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 77
    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 78
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v9, v9, v7

    .line 79
    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v8, v8, v7

    .line 80
    iget-object v12, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    sub-long v3, v9, v3

    .line 81
    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v13, v11

    add-long/2addr v3, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v3, v13

    if-ltz v11, :cond_36

    cmp-long v11, v3, v16

    if-ltz v11, :cond_2b

    goto/16 :goto_16

    .line 82
    :cond_2b
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2c

    add-long v3, v3, v18

    add-int/lit8 v8, v8, -0x8

    :cond_2c
    long-to-int v2, v3

    .line 83
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 84
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v3, :cond_30

    .line 85
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 86
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    .line 87
    aput-byte v4, v2, v4

    const/4 v9, 0x1

    .line 88
    aput-byte v4, v2, v9

    const/4 v9, 0x2

    .line 89
    aput-byte v4, v2, v9

    rsub-int/lit8 v4, v3, 0x4

    .line 90
    :goto_12
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v9, v8, :cond_2f

    .line 91
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v9, :cond_2e

    .line 92
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 93
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v3

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 94
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 95
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ltz v9, :cond_2d

    .line 96
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 97
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 98
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v11, 0x4

    invoke-interface {v6, v9, v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 99
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v11

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v4

    goto :goto_12

    :cond_2d
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v10, 0x0

    .line 101
    invoke-interface {v6, v1, v9, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v9

    .line 102
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 103
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 104
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v10, v9

    iput v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_12

    :cond_2f
    move v10, v8

    goto :goto_14

    .line 105
    :cond_30
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 106
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_31

    .line 107
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v8, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 108
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x7

    invoke-interface {v6, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 109
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_31
    add-int/lit8 v8, v8, 0x7

    goto :goto_13

    :cond_32
    if-eqz v12, :cond_33

    .line 110
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 111
    :cond_33
    :goto_13
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v8, :cond_2f

    sub-int v2, v8, v2

    const/4 v3, 0x0

    .line 112
    invoke-interface {v6, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData$1(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    .line 113
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 114
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 115
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_13

    .line 116
    :goto_14
    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v2, v7

    .line 117
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v9, v1, v7

    if-eqz v12, :cond_34

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v34, v12

    move-object/from16 v35, v6

    move-wide/from16 v36, v2

    move/from16 v38, v9

    move/from16 v39, v10

    .line 118
    invoke-virtual/range {v34 .. v41}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 v1, 0x1

    add-int/2addr v7, v1

    .line 119
    iget-object v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v7, v1, :cond_35

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v12, v6, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_15

    :cond_34
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v2

    .line 121
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 122
    :cond_35
    :goto_15
    iget v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v1, -0x1

    .line 123
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v1, 0x0

    .line 124
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 125
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 126
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v9, 0x0

    goto :goto_17

    .line 127
    :cond_36
    :goto_16
    iput-wide v9, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v9, 0x1

    :goto_17
    return v9

    .line 128
    :cond_37
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 129
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 130
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v3, :cond_40

    .line 131
    iget-object v9, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 132
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v5, v5

    invoke-interface {v1, v9, v10, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 133
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v5, v4, :cond_3f

    const/16 v4, 0x8

    .line 134
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_39

    if-eq v4, v5, :cond_38

    const/4 v4, 0x0

    goto :goto_18

    :cond_38
    const/4 v4, 0x1

    goto :goto_18

    :cond_39
    const/4 v4, 0x2

    :goto_18
    if-eqz v4, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v4, 0x4

    .line 136
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 137
    :cond_3b
    iget v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v9, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v4, v9

    if-lez v4, :cond_3e

    .line 138
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-eq v4, v6, :cond_3d

    if-eq v4, v5, :cond_3c

    const/4 v4, 0x0

    goto :goto_19

    :cond_3c
    const/4 v4, 0x1

    goto :goto_19

    :cond_3d
    const/4 v4, 0x2

    :goto_19
    if-eqz v4, :cond_3b

    goto :goto_1a

    :cond_3e
    const/4 v4, 0x0

    .line 139
    :goto_1a
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_1b

    .line 140
    :cond_3f
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 141
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 142
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_40
    cmp-long v3, v5, v16

    if-gez v3, :cond_42

    long-to-int v3, v5

    .line 143
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_41
    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 144
    :cond_42
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v3, 0x1

    .line 145
    :goto_1c
    invoke-virtual {v0, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz v3, :cond_43

    .line 146
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_43

    const/4 v15, 0x1

    goto :goto_1d

    :cond_43
    const/4 v15, 0x0

    :goto_1d
    if-eqz v15, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_44
    move v3, v14

    .line 147
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v5, :cond_48

    .line 148
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 149
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 150
    invoke-interface {v1, v5, v7, v6, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_47

    .line 151
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_46

    .line 152
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 153
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 154
    invoke-interface {v3, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 155
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v5, :cond_45

    const/4 v8, 0x0

    goto :goto_1e

    :cond_45
    new-instance v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v5, v6, v7

    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 156
    :goto_1e
    new-instance v5, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 157
    iput-object v8, v5, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 158
    new-instance v6, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 159
    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 160
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 161
    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_46
    const/4 v14, 0x0

    goto/16 :goto_28

    :cond_47
    const/16 v3, 0x8

    .line 162
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 163
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 164
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 165
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 166
    :cond_48
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_49

    .line 167
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    .line 169
    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 170
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 171
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_1f

    :cond_49
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4b

    .line 172
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_4a

    .line 173
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    if-eqz v3, :cond_4a

    .line 174
    iget-wide v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_4a
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4b

    .line 175
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 176
    :cond_4b
    :goto_1f
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_57

    .line 177
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_4d

    const v6, 0x7472616b

    if-eq v5, v6, :cond_4d

    const v6, 0x6d646961

    if-eq v5, v6, :cond_4d

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_4d

    const v6, 0x7374626c

    if-eq v5, v6, :cond_4d

    const v6, 0x65647473

    if-eq v5, v6, :cond_4d

    if-ne v5, v7, :cond_4c

    goto :goto_20

    :cond_4c
    const/4 v6, 0x0

    goto :goto_21

    :cond_4d
    :goto_20
    const/4 v6, 0x1

    :goto_21
    if-eqz v6, :cond_50

    .line 178
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v8

    sub-long/2addr v3, v8

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4e

    .line 179
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v5, v7, :cond_4e

    .line 180
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 181
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 182
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    .line 183
    invoke-interface {v1, v5, v7, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 184
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 185
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 186
    iget v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    .line 187
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 188
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 189
    :cond_4e
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 190
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4f

    .line 191
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_22

    .line 192
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :goto_22
    const/4 v3, 0x1

    goto/16 :goto_27

    :cond_50
    const v6, 0x6d646864

    if-eq v5, v6, :cond_52

    const v6, 0x6d766864

    if-eq v5, v6, :cond_52

    const v6, 0x68646c72

    if-eq v5, v6, :cond_52

    const v6, 0x73747364

    if-eq v5, v6, :cond_52

    const v6, 0x73747473

    if-eq v5, v6, :cond_52

    const v6, 0x73747373

    if-eq v5, v6, :cond_52

    const v6, 0x63747473

    if-eq v5, v6, :cond_52

    const v6, 0x656c7374

    if-eq v5, v6, :cond_52

    const v6, 0x73747363

    if-eq v5, v6, :cond_52

    const v6, 0x7374737a

    if-eq v5, v6, :cond_52

    const v6, 0x73747a32

    if-eq v5, v6, :cond_52

    const v6, 0x7374636f

    if-eq v5, v6, :cond_52

    const v6, 0x636f3634

    if-eq v5, v6, :cond_52

    const v6, 0x746b6864

    if-eq v5, v6, :cond_52

    if-eq v5, v4, :cond_52

    const v4, 0x75647461

    if-eq v5, v4, :cond_52

    const v4, 0x6b657973

    if-eq v5, v4, :cond_52

    const v4, 0x696c7374

    if-ne v5, v4, :cond_51

    goto :goto_23

    :cond_51
    const/4 v4, 0x0

    goto :goto_24

    :cond_52
    :goto_23
    const/4 v4, 0x1

    :goto_24
    if-eqz v4, :cond_55

    const/16 v4, 0x8

    if-ne v3, v4, :cond_53

    const/4 v3, 0x1

    goto :goto_25

    :cond_53
    const/4 v3, 0x0

    .line 193
    :goto_25
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 194
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_54

    const/4 v3, 0x1

    goto :goto_26

    :cond_54
    const/4 v3, 0x0

    :goto_26
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 195
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 196
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 197
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v5, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 198
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x1

    .line 200
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_27

    .line 201
    :cond_55
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v5

    sub-long v30, v3, v5

    .line 202
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_56

    .line 203
    new-instance v3, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v28, 0x0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    add-long v34, v30, v5

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    sub-long v36, v7, v5

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v37}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_56
    const/4 v3, 0x0

    .line 204
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x1

    .line 205
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_27
    move v14, v3

    :goto_28
    if-nez v14, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_57
    const-string v0, "Atom size less than header length (unsupported)."

    .line 206
    invoke-static {v0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 7
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 10
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->readerState:I

    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz p0, :cond_4

    .line 14
    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_4

    aget-object v2, p0, p2

    .line 15
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 16
    invoke-virtual {v3, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 17
    invoke-virtual {v3, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    .line 18
    :cond_2
    iput v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 19
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_3

    .line 20
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    .line 21
    iput v0, v2, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
