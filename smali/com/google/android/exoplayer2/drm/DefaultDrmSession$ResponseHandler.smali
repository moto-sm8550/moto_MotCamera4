.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    if-ne v1, p1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 8
    instance-of p1, v0, Ljava/lang/Exception;

    if-eqz p1, :cond_2

    .line 9
    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    goto/16 :goto_3

    .line 10
    :cond_2
    :try_start_0
    check-cast v0, [B

    .line 11
    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 20
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_5
    const/4 p1, 0x4

    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventDispatchers:Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;

    .line 24
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 25
    :try_start_5
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 26
    :try_start_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 28
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    goto :goto_3

    .line 30
    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ResponseHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    if-ne v1, p1, :cond_a

    iget p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    if-eq p1, v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    .line 33
    instance-of p1, v0, Ljava/lang/Exception;

    if-eqz p1, :cond_8

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast v0, Ljava/lang/Exception;

    check-cast p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onProvisionError(Ljava/lang/Exception;Z)V

    goto :goto_3

    .line 35
    :cond_8
    :try_start_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast v0, [B

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 36
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 37
    iput-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 38
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/HashSet;

    .line 39
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 41
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/AbstractIndexedListIterator;

    move-result-object p0

    .line 42
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 45
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-virtual {p0, p1, v5}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onProvisionError(Ljava/lang/Exception;Z)V

    :cond_a
    :goto_3
    return-void
.end method
