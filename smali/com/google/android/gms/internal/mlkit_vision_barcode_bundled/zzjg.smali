.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzg()V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    move-result-object p0

    return-object p0
.end method

.method public final zzo()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    return-void
.end method
