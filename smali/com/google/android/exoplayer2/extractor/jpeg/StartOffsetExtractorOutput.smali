.class public final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# instance fields
.field public final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field public final startOffset:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public final endTracks()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public final track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
