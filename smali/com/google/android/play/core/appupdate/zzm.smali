.class public final Lcom/google/android/play/core/appupdate/zzm;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 3
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    .line 5
    invoke-static {v0, v3}, Lcom/google/android/play/core/appupdate/zzr;->zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lcom/google/android/play/core/appupdate/zzq;

    iget-object v4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v6, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
