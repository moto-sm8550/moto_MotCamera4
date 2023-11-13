.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza()I

    move-result p0

    return p0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    .line 1
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zze:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    if-ge p0, v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:[I

    aget v1, v1, p0

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, p0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const/16 v3, 0x8

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    add-int/2addr v3, v3

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zze:I

    move p0, v0

    :cond_1
    return p0
.end method

.method public final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    return-object p0
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    .line 1
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    .line 2
    iget p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    iget v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    add-int/2addr p0, v0

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 4
    iget-object v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:[I

    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    iget v3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:[Ljava/lang/Object;

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget-object v2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    iget p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    invoke-static {v2, v4, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public final synthetic zze()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzf(Ljava/lang/Object;IJ)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzf:Z

    return-void
.end method

.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    return-void
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    const/4 p0, 0x0

    .line 1
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzb:I

    if-ge p0, v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzc:[I

    aget v0, v0, p0

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v1, v1, p0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzw(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzj(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    return-void
.end method
