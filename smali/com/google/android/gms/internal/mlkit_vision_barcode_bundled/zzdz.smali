.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;


# instance fields
.field public final zza:I

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:I

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:I

    return p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcj;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfq;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    return-object p0
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 0

    return-void
.end method
