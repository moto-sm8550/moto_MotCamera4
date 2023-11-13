.class public final Lcom/google/mlkit/common/internal/model/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.0.0"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Landroidx/appcompat/R$layout;

    monitor-enter v0

    :try_start_0
    const-string v1, "common"

    const/4 v2, 0x1

    int-to-byte v3, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzky;

    invoke-direct {v3, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzky;-><init>(Ljava/lang/String;ZI)V

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Landroidx/appcompat/R$layout;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlv;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzlv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzlv;-><init>()V

    sput-object v1, Landroidx/appcompat/R$layout;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlv;

    :cond_0
    sget-object v1, Landroidx/appcompat/R$layout;->zza:Lcom/google/android/gms/internal/mlkit_common/zzlv;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzll;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_3
    monitor-exit v0

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_2

    const-string v1, " enableFirelog"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_3

    const-string v1, " firelogEventType"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
