.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static zza:Z = true

.field public static final zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field public final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

.field public final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field public zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 2
    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>()V

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "MlKitContext can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    return-void
.end method


# virtual methods
.method public final run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object v8

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 7
    :try_start_2
    iget v0, v8, Lcom/google/mlkit/common/MlKitException;->zza:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzV:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    :goto_0
    move-object v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    .line 11
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 2
    invoke-direct {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    if-eqz p5, :cond_2

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 4
    invoke-virtual {v2}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result v3

    .line 5
    sget-object v4, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    if-nez v3, :cond_0

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    .line 7
    :cond_0
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    .line 8
    iget-object v2, v2, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v2}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getValueType()I

    move-result v2

    .line 9
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    if-nez v2, :cond_1

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    .line 11
    :cond_1
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v12, v1, p2

    new-instance v14, Lcom/google/mlkit/vision/barcode/internal/zzh;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide v3, v12

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/barcode/internal/zzh;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;-><init>()V

    .line 14
    iput-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    .line 15
    sget-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 17
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zzb:Ljava/lang/Boolean;

    .line 18
    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 19
    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    move-result-object v2

    .line 20
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    .line 21
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v2

    .line 22
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 23
    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 25
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdw;)V

    .line 26
    new-instance v8, Lcom/google/mlkit/vision/barcode/internal/zzg;

    invoke-direct {v8, v0}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 27
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;

    move-object v3, v2

    move-wide v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Ljava/lang/Object;JLcom/google/mlkit/vision/barcode/internal/zzg;)V

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    iget-boolean v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    sub-long v18, v20, v12

    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    const/4 v0, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5eed

    goto :goto_1

    :cond_3
    const/16 v1, 0x5eee

    :goto_1
    move v15, v1

    .line 30
    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzX:I

    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    monitor-exit v2

    goto :goto_3

    .line 36
    :cond_5
    :goto_2
    :try_start_1
    iget-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->zza:Lcom/google/android/gms/common/internal/service/zao;

    .line 37
    new-instance v6, Lcom/google/android/gms/common/internal/TelemetryData;

    new-array v0, v0, [Lcom/google/android/gms/common/internal/MethodInvocation;

    new-instance v7, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object v14, v7

    move/from16 v16, v1

    .line 38
    invoke-direct/range {v14 .. v25}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 40
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
