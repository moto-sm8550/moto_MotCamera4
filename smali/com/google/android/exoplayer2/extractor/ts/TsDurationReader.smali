.class public final Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field public durationUs:J

.field public firstPcrValue:J

.field public isDurationRead:Z

.field public isFirstPcrValueRead:Z

.field public isLastPcrValueRead:Z

.field public lastPcrValue:J

.field public final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field public final timestampSearchBytes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b8a0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->firstPcrValue:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->durationUs:J

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final finishReadDuration(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method
