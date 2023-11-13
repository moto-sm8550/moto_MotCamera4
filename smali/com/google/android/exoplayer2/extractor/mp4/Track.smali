.class public final Lcom/google/android/exoplayer2/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 5
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 6
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    .line 7
    iput-object p9, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 8
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    .line 9
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 10
    iput p12, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 11
    iput-object p13, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    .line 12
    iput-object p14, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    return-void
.end method


# virtual methods
.method public final getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method
