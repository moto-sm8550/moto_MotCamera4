.class public final Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static createPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId;

    sget-object v1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    .line 2
    new-instance v2, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>(Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;)V

    return-object v0
.end method
