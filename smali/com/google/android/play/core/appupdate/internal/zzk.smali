.class public final Lcom/google/android/play/core/appupdate/internal/zzk;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzk;->zza:Lcom/google/android/play/core/appupdate/internal/zzl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzk;->zza:Lcom/google/android/play/core/appupdate/internal/zzl;

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/appupdate/zzc;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "package.name"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "package.name"

    .line 4
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "ListenerRegistryBroadcastReceiver received broadcast for third party app: %s"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_0
    iget-object v0, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    const-string v5, "List of extras in received intent:"

    new-array v6, v4, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v5, v6}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v4

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "Key: %s; value: %s"

    invoke-virtual {v7, v5, v6}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "List of extras in received intent needed by fromUpdateIntent:"

    .line 9
    invoke-virtual {v0, v7, v5}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "install.status"

    aput-object v7, v5, v4

    .line 10
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const-string v8, "Key: %s; value: %s"

    .line 11
    invoke-virtual {v0, v8, v5}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "error.code"

    aput-object v6, v5, v4

    .line 12
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    .line 13
    invoke-virtual {v0, v8, v5}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 14
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "bytes.downloaded"

    const-wide/16 v7, 0x0

    .line 15
    invoke-virtual {v1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v0, "total.bytes.to.download"

    .line 16
    invoke-virtual {v1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 17
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v0, "package.name"

    .line 18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v0, Lcom/google/android/play/core/install/zza;

    move-object v10, v0

    .line 19
    invoke-direct/range {v10 .. v17}, Lcom/google/android/play/core/install/zza;-><init>(IJJILjava/lang/String;)V

    .line 20
    iget-object v1, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v4, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 21
    invoke-virtual {v1, v4, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, v2, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/listener/StateUpdatedListener;

    .line 24
    invoke-interface {v3, v0}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v2

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
