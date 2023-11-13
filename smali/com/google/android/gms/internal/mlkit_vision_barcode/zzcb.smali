.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final transient zza:I

.field public final transient zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzb:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaq;->zza(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zza:I

    add-int/2addr p1, p0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzb:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zza:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzb:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;->zzc()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zza:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbx;->zze()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaq;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;->zza:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object p0

    return-object p0
.end method
