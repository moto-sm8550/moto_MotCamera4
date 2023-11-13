.class public abstract Lcom/google/android/play/core/appupdate/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/internal/zzm;

.field public final zzb:Ljava/util/HashSet;

.field public final zzc:Landroid/content/IntentFilter;

.field public final zzd:Landroid/content/Context;

.field public zze:Lcom/google/android/play/core/appupdate/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzm;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    .line 2
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    .line 3
    :cond_0
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    const-string v1, "registerListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzl;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    const-string/jumbo v1, "unregisterListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "Unregistered Play Core listener should not be null."

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzl;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zze()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/internal/zzk;-><init>(Lcom/google/android/play/core/appupdate/internal/zzl;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    :cond_2
    return-void
.end method
