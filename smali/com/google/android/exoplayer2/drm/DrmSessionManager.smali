.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;

    return-void
.end method


# virtual methods
.method public abstract acquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end method

.method public abstract getCryptoType(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .locals 0

    sget-object p0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract setPlayer(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
.end method
