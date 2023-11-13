.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/vision/barcode/common/Barcode;",
        ">;>;",
        "Lcom/google/mlkit/vision/barcode/BarcodeScanner;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;)V

    .line 5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 9
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;I)V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    .line 13
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/zzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/zzw;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "This detector is already closed!"

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 6
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    if-lt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Lcom/google/mlkit/common/sdkinternal/MLTask;

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/mlkit/vision/common/internal/zzd;

    invoke-direct {v2, p0, p1}, Lcom/google/mlkit/vision/common/internal/zzd;-><init>(Lcom/google/mlkit/vision/common/internal/MobileVisionBase;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzb;

    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    .line 10
    :cond_1
    :try_start_2
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "InputImage width and height should be at least 32!"

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
