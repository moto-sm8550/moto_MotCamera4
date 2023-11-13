.class public final Lcom/google/android/gms/common/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/common/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zzo;

    if-eqz p0, :cond_3

    .line 8
    iget v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v1, "GmsClientSupervisor"

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzn;->zzc:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "unknown"

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 15
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 20
    iget-object v3, v3, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v3, :cond_6

    .line 22
    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz v4, :cond_5

    .line 24
    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 25
    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    .line 26
    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 27
    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 28
    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    .line 29
    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v1, v3, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    const/4 v1, 0x2

    iput v1, v3, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 30
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Lcom/google/android/gms/common/internal/zzr;

    .line 31
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_6
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
