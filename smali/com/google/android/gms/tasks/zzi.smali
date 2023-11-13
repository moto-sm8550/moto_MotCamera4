.class public final Lcom/google/android/gms/tasks/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/tasks/zzw;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzj;Lcom/google/android/gms/tasks/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/zzj;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/zzj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzj;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Lcom/google/android/gms/tasks/zzj;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    if-eqz v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
