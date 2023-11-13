.class public final Lcom/google/android/play/core/appupdate/zzq;
.super Lcom/google/android/play/core/appupdate/zzo;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zzd:Lcom/google/android/play/core/appupdate/zzr;

.field public final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Lcom/google/android/play/core/appupdate/zzr;

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzm;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzo;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/internal/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzq;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/os/Bundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzr(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "onRequestInfo"

    .line 2
    invoke-virtual {v2, v5, v4}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "error.code"

    const/4 v4, -0x2

    .line 3
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v3, Lcom/google/android/play/core/install/InstallException;

    .line 6
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7
    invoke-direct {v3, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzq;->zzd:Lcom/google/android/play/core/appupdate/zzr;

    const/4 v4, -0x1

    const-string/jumbo v5, "version.code"

    .line 8
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v5, "update.availability"

    .line 9
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v5, "install.status"

    .line 10
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "client.version.staleness"

    .line 11
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    :goto_0
    const-string v4, "in.app.update.priority"

    .line 13
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    const-string v3, "bytes.downloaded"

    .line 14
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    const-string/jumbo v3, "total.bytes.to.download"

    .line 15
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    const-string v3, "additional.size.required"

    .line 16
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzr;->zzf:Lcom/google/android/play/core/appupdate/zzt;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzt;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "assetpacks"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-static {v3}, Lcom/google/android/play/core/appupdate/zzt;->zzb(Ljava/io/File;)J

    move-result-wide v12

    const-string v0, "blocking.intent"

    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PendingIntent;

    const-string v0, "nonblocking.intent"

    .line 21
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    const-string v0, "blocking.destructive.intent"

    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/PendingIntent;

    const-string v0, "nonblocking.destructive.intent"

    .line 23
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/PendingIntent;

    .line 24
    new-instance v0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-object v6, v0

    invoke-direct/range {v6 .. v17}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;-><init>(IIIJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
