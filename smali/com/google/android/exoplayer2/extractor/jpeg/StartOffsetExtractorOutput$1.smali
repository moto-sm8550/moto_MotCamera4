.class public final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

.field public final synthetic val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->first:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;

    .line 3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    add-long/2addr v4, v6

    .line 4
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->second:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->timeUs:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->position:J

    add-long/2addr v3, v6

    .line 5
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p2, v0, p0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p2
.end method

.method public final isSeekable()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result p0

    return p0
.end method
