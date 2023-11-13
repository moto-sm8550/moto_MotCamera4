.class public final Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public auxiliaryDataPosition:J

.field public dataPosition:J

.field public definesEncryptionData:Z

.field public header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public nextFragmentDecodeTime:J

.field public nextFragmentDecodeTimeIncludesMoov:Z

.field public sampleCount:I

.field public final sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public sampleEncryptionDataNeedsFill:Z

.field public sampleHasSubsampleEncryptionTable:[Z

.field public sampleIsSyncFrameTable:[Z

.field public samplePresentationTimesUs:[J

.field public sampleSizeTable:[I

.field public trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public trunCount:I

.field public trunDataPosition:[J

.field public trunLength:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    new-array v1, v0, [Z

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    new-array v0, v0, [Z

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method
