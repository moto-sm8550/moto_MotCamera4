.class public final Lcom/google/android/gms/common/internal/zzr;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field public final zzb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/zzn;",
            "Lcom/google/android/gms/common/internal/zzo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "connectionStatus"
    .end annotation
.end field

.field public final zzc:Landroid/content/Context;

.field public volatile zzd:Lcom/google/android/gms/internal/common/zzi;

.field public final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field public final zzg:J

.field public final zzh:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzq;-><init>(Lcom/google/android/gms/common/internal/zzr;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/common/zzi;

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    .line 5
    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/common/stats/ConnectionTracker;

    invoke-direct {p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object p2, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:J

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/zzo;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/zzn;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:Lcom/google/android/gms/internal/common/zzi;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9
    iget-object p0, v0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 10
    iget-object p0, v0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget p0, v0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/internal/zzo;->zze(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 14
    iget-object p1, v0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    .line 15
    invoke-interface {p2, p0, p1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 16
    :goto_0
    iget-boolean p0, v0, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    .line 17
    monitor-exit p3

    return p0

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x51

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
