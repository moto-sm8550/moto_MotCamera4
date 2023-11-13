.class public final Lcom/google/android/exoplayer2/source/MediaLoadData;
.super Ljava/lang/Object;
.source "MediaLoadData.java"


# instance fields
.field public final dataType:I

.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Lcom/google/android/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final trackType:I


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    .line 7
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    .line 8
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    return-void
.end method
