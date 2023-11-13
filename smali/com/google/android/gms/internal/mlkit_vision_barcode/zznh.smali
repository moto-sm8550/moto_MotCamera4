.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;->zzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    .line 2
    iput-object v2, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    .line 3
    iget-object v2, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4
    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->zzd:Ljava/lang/String;

    .line 5
    sget v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzap;->$r8$clinit:I

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->zzd:Ljava/lang/String;

    const-string v4, "null reference"

    .line 8
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v2, "NA"

    .line 9
    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;-><init>()V

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzd:Ljava/lang/String;

    .line 10
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zza:Ljava/lang/String;

    .line 11
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zze:Ljava/lang/String;

    .line 12
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzb:Ljava/lang/String;

    .line 13
    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    monitor-enter v5

    .line 14
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    monitor-exit v5

    goto :goto_4

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;-><init>()V

    .line 15
    :goto_3
    iget-object v8, v6, Landroidx/core/os/LocaleListCompat;->mImpl:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v8}, Landroidx/core/os/LocaleListInterface;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 16
    invoke-virtual {v6, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 17
    sget-object v9, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 18
    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 21
    :goto_4
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 22
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    iput-object v3, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzh:Ljava/lang/Boolean;

    .line 24
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzd:Ljava/lang/String;

    .line 25
    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzc:Ljava/lang/String;

    .line 26
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzi:Lcom/google/android/gms/tasks/zzw;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzi:Lcom/google/android/gms/tasks/zzw;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_5

    .line 29
    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzg:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 30
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 31
    :goto_5
    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzf:Ljava/lang/String;

    const/16 p0, 0xa

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v2, 0x7fffffff

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzj:Ljava/lang/Integer;

    .line 34
    iget p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzk:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 36
    iput-object p0, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;->zzk:Ljava/lang/Integer;

    .line 37
    iput-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmc;

    .line 38
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;

    .line 39
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznl;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;)V

    return-void

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v5

    throw p0
.end method
