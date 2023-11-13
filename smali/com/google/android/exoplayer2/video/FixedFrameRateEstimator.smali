.class public final Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation


# instance fields
.field public candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field public candidateMatcherActive:Z

.field public currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

.field public framesWithoutSyncCount:I

.field public lastFramePresentationTimeNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->candidateMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    return-void
.end method


# virtual methods
.method public final isSynced()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator;->currentMatcher:Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result p0

    return p0
.end method
