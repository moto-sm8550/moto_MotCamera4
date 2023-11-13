.class public final Lcom/google/android/play/core/appupdate/internal/zzu;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzu;->zza:Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzu;->zza:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 3
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzu;->zza:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    return-void
.end method
