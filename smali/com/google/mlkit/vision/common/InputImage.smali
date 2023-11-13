.class public final Lcom/google/mlkit/vision/common/InputImage;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/MLTaskInput;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public volatile zzb:Ljava/nio/ByteBuffer;

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    const-string v1, "null reference"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    mul-int v2, p2, p3

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput p2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iput p3, p0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iput p4, p0, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    iput v0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image dimension, ByteBuffer size and format don\'t match. Please check if the ByteBuffer is in the decalred format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromByteArray([BIII)Lcom/google/mlkit/vision/common/InputImage;
    .locals 15

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;III)V

    move-object v3, p0

    .line 3
    array-length v3, v3

    .line 4
    const-class v7, Landroidx/core/util/Preconditions;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v8, "vision-common"

    const/4 v9, 0x1

    int-to-byte v10, v9

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 5
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzjl;

    invoke-direct {v10, v8, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjl;-><init>(Ljava/lang/String;ZI)V

    .line 6
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget-object v8, Landroidx/core/util/Preconditions;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    if-nez v8, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;-><init>()V

    sput-object v8, Landroidx/core/util/Preconditions;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    :cond_0
    sget-object v8, Landroidx/core/util/Preconditions;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    .line 8
    invoke-virtual {v8, v10}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v7

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;->zzbu:Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzl:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzl:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v11, v13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v1, v13, v4

    if-gtz v1, :cond_2

    goto/16 :goto_2

    .line 16
    :cond_2
    :goto_0
    iget-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzl:Ljava/util/HashMap;

    .line 17
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;-><init>()V

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzd:Ljava/lang/Integer;

    .line 24
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzf:Ljava/lang/Integer;

    .line 26
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zze:Ljava/lang/Integer;

    .line 28
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v9, 0x7fffffffffffffffL

    and-long/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zza:Ljava/lang/Long;

    .line 30
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;->zzg:Ljava/lang/Integer;

    .line 32
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;)V

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;-><init>()V

    .line 34
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzha;)V

    .line 36
    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzh:Lcom/google/android/gms/tasks/zzw;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzh:Lcom/google/android/gms/tasks/zzw;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 39
    :cond_3
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 40
    iget-object v3, v8, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;->zzj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_1
    sget-object v3, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;

    invoke-direct {v4, v8, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzjp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;Lcom/google/android/gms/internal/mlkit_vision_common/zzju;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 43
    :try_start_3
    monitor-exit v7

    throw v0

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_5

    const-string v1, " enableFirelog"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, v10, 0x2

    if-nez v1, :cond_6

    const-string v1, " firelogEventType"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method
