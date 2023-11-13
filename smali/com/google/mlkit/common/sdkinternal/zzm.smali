.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzm;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    iget-object v1, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    if-nez v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/mlkit/vision/barcode/internal/zzi;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v4, v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v4}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    sput-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6
    iget-object v0, v0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v1

    throw p0

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzku;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzly;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
