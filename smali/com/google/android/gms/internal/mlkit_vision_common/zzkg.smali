.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"


# static fields
.field public static zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
