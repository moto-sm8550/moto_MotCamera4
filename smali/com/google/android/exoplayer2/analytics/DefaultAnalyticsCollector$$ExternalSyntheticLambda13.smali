.class public final synthetic Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;

.field public final synthetic f$3:Lcom/google/android/exoplayer2/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;

    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$3:Lcom/google/android/exoplayer2/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$3:Lcom/google/android/exoplayer2/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity()V

    .line 2
    invoke-interface {p1, v0, v2, p0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method
