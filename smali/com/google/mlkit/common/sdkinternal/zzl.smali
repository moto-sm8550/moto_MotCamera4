.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzl;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/zzb;

.field public final synthetic zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public final synthetic zzd:Ljava/util/concurrent/Callable;

.field public final synthetic zze:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzb:Lcom/google/android/gms/tasks/zzb;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzd:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzb:Lcom/google/android/gms/tasks/zzb;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zzd:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zze:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v4, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    move-object v4, v0

    check-cast v4, Lcom/google/mlkit/vision/barcode/internal/zzi;

    .line 5
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v5, v4, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v5}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc()Z

    move-result v5

    iput-boolean v5, v4, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 7
    iget-object v0, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v4

    throw v0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Lcom/google/mlkit/common/MlKitException;

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    .line 16
    invoke-direct {v3, v4, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 17
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzb;->isCancellationRequested()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
