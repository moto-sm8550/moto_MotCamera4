.class public final Lcom/google/android/exoplayer2/MediaSourceList;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;,
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;,
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;,
        Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
    }
.end annotation


# instance fields
.field public final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field public final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field public final enabledMediaSourceHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public isPrepared:Z

.field public final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field public final mediaSourceHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

.field public mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field public final playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

.field public shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    .line 5
    new-instance p4, Ljava/util/Random;

    invoke-direct {p4}, Ljava/util/Random;-><init>()V

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(Ljava/util/Random;)V

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 7
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 11
    new-instance p4, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p0, p4, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")",
            "Lcom/google/android/exoplayer2/Timeline;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move p3, p1

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    const/4 v1, 0x0

    if-lez p3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 6
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 7
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 8
    iget v2, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindowCount()I

    move-result v3

    add-int/2addr v3, v2

    .line 10
    iput v3, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 11
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 13
    :cond_0
    iput v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 14
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 17
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindowCount()I

    move-result v1

    .line 19
    invoke-virtual {p0, p3, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public final correctOffsets(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 3
    iget v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final createTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline$1;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 5
    iput v1, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 6
    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 7
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v0
.end method

.method public final disableUnusedMediaSources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final prepareChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;)V

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;-><init>(Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceAndListener;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 6
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 9
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->playerId:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-virtual {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method

.method public final releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaSourceList;->disableUnusedMediaSources()V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    return-void
.end method

.method public final removeMediaSourcesInternal(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 4
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 6
    invoke-virtual {p0, p2, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->correctOffsets(II)V

    .line 7
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
