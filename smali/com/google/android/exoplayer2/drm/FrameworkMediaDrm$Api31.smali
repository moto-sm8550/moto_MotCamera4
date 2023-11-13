.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api31"
.end annotation


# direct methods
.method public static requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/exoplayer2/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p2, Lcom/google/android/exoplayer2/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 4
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p2, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p2}, Landroid/media/MediaDrm$PlaybackComponent;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
