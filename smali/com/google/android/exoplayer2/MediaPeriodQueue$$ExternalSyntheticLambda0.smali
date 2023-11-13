.class public final synthetic Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableList$Builder;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodQueue;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
