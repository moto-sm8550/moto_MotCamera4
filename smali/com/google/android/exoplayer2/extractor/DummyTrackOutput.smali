.class public final Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# instance fields
.field public final readBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;->readBuffer:[B

    return-void
.end method


# virtual methods
.method public final format(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;->readBuffer:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;->readBuffer:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-eqz p3, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return p0
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public final sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 0

    return-void
.end method
