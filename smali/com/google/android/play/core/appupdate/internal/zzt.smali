.class public final Lcom/google/android/play/core/appupdate/internal/zzt;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Landroid/os/IBinder;

.field public final synthetic zzb:Lcom/google/android/play/core/appupdate/internal/zzw;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzw;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zza:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zza:Landroid/os/IBinder;

    sget v2, Lcom/google/android/play/core/appupdate/internal/zze;->$r8$clinit:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    .line 2
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/play/core/appupdate/internal/zzf;

    if-eqz v3, :cond_1

    .line 4
    move-object v1, v2

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzf;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/play/core/appupdate/internal/zzd;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/appupdate/internal/zzd;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 5
    :goto_0
    iput-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 6
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 7
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Landroid/os/IInterface;

    .line 8
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath failed"

    .line 9
    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 11
    iput-boolean v2, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    .line 12
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzt;->zzb:Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 15
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
