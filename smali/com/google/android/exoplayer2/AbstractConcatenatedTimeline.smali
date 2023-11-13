.class public abstract Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field public final childCount:I

.field public final isAtomic:Z

.field public final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    return-void
.end method


# virtual methods
.method public abstract getChildIndexByWindowIndex(I)I
.end method

.method public final getFirstWindowIndex(Z)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getFirstIndex()I

    move-result v2

    .line 4
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 8
    :cond_3
    iget-object p0, v0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, v2

    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, v2

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v2, v2, v0

    .line 8
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget p0, p0, v0

    add-int v1, p0, p1

    :goto_1
    return v1
.end method

.method public final getLastWindowIndex(Z)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_3
    :goto_0
    move-object v2, p0

    check-cast v2, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 5
    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v0

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 8
    :cond_4
    iget-object p0, v2, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, v0

    .line 9
    iget-object v1, v2, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v1, v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final getNextChildIndex(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getNextIndex(I)I

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_1

    add-int/lit8 p0, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getNextWindowIndex(IIZ)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p2, v2

    :cond_0
    move p3, v1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 3
    move-object v3, p0

    check-cast v3, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 4
    iget-object v4, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v4, v4, v0

    .line 5
    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v5, v5, v0

    sub-int/2addr p1, v4

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 6
    :goto_0
    invoke-virtual {v5, p1, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v4, p1

    return v4

    .line 7
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 8
    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, p1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 11
    iget-object p0, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, p1

    .line 12
    iget-object p2, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, p2, p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_5
    if-ne p2, v2, :cond_6

    .line 14
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 4

    .line 1
    check-cast p0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v1, v1, v0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget v2, v2, v0

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v0

    sub-int/2addr p1, v2

    .line 6
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 7
    iget p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_0

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 9
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 12
    iput-object p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v2, v2, v1

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p0, p0, v1

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 9
    iget p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 10
    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public final getPreviousChildIndex(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getPreviousWindowIndex(IIZ)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p2, v2

    :cond_0
    move p3, v1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 3
    move-object v3, p0

    check-cast v3, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 4
    iget-object v4, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v4, v4, v0

    .line 5
    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v5, v5, v0

    sub-int/2addr p1, v4

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 6
    :goto_0
    invoke-virtual {v5, p1, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v4, p1

    return v4

    .line 7
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 8
    iget-object v0, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v0, v0, p1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 11
    iget-object p0, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, p1

    .line 12
    iget-object p2, v3, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object p1, p2, p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_5
    if-ne p2, v2, :cond_6

    .line 14
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result p0

    return p0

    :cond_6
    return v1
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget v1, v1, v0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v2, v2, v0

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 7
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 2
    check-cast p0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v1, v1, v0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget v2, v2, v0

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aget-object v3, v3, v0

    sub-int/2addr p1, v1

    .line 6
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 7
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    .line 8
    sget-object p1, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 10
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 11
    :goto_0
    iput-object p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 12
    iget p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 13
    iget p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method
