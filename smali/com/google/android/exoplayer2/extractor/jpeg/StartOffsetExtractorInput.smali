.class public final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# instance fields
.field public final input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field public final startOffset:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 4
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    return-void
.end method


# virtual methods
.method public final advancePeekPosition(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public final advancePeekPosition(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result p0

    return p0
.end method

.method public final getLength()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getPeekPosition()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getPosition()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final peek([BII)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peek([BII)I

    move-result p0

    return p0
.end method

.method public final peekFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public final peekFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p0

    return p0
.end method

.method public final readFully([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public final readFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p0

    return p0
.end method

.method public final resetPeekPosition()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public final skip(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p0

    return p0
.end method

.method public final skipFully(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method
