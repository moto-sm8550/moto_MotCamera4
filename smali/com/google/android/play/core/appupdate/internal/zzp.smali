.class public final synthetic Lcom/google/android/play/core/appupdate/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzp;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reportBinderDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzj:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzs;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "calling onBinderDied"

    .line 3
    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzs;->zza()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "%s : Binder has died."

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzn;

    .line 7
    new-instance v2, Landroid/os/RemoteException;

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " : Binder has died."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzn;->zzc(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zze:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzt()V

    return-void
.end method
