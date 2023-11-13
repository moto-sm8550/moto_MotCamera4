.class public final Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# instance fields
.field public final cueTimesUs:[J

.field public final cues:[Lcom/google/android/exoplayer2/text/Cue;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/text/Cue;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer2/text/Cue;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cues:[Lcom/google/android/exoplayer2/text/Cue;

    aget-object p2, p0, p1

    sget-object v0, Lcom/google/android/exoplayer2/text/Cue;->EMPTY:Lcom/google/android/exoplayer2/text/Cue;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEventTime(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length p0, p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZ)I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
