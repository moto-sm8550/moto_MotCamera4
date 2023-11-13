.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbf;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

.field public final zzb:Ljava/lang/Object;

.field public zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbf;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzb:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    aget-object p1, p1, p2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzl()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzc:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    aput-object p1, v1, p0

    return-object v0
.end method

.method public final zza()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzb:Ljava/lang/Object;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzv(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;->zzc:I

    return-void
.end method
