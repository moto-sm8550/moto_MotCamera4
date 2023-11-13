.class public final Lcom/google/android/play/core/appupdate/internal/zzq;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzn;

.field public final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/appupdate/internal/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/play/core/appupdate/internal/zzn;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zzb:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzq;->zza:Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Initiate binding to the service."

    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-direct {p0, v0}, Lcom/google/android/play/core/appupdate/internal/zzw;-><init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V

    iput-object p0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi:Landroid/content/Intent;

    .line 4
    invoke-virtual {v3, v4, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Failed to bind to the service."

    .line 5
    invoke-virtual {p0, v3, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v2, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    iget-object p0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzn;

    new-instance v2, Lcom/google/android/play/core/appupdate/internal/zzy;

    .line 7
    invoke-direct {v2}, Lcom/google/android/play/core/appupdate/internal/zzy;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzn;->zzc(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Waiting to bind to the service."

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;->run()V

    :cond_3
    :goto_1
    return-void
.end method
