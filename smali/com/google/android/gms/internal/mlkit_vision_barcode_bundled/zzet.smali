.class public Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# instance fields
.field public volatile zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

.field public volatile zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzX()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)V

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 7
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzX()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;->zza:[B

    array-length p0, p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzE()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzC()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzet;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
