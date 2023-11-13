.class public final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 5
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 8
    iput-boolean v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 10
    iput-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzt()V

    return-void
.end method
