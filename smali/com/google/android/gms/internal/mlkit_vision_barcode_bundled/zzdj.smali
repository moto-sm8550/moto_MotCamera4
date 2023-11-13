.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    const-string v0, "output"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;

    return-void
.end method


# virtual methods
.method public final zzB(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzp(II)V

    return-void
.end method

.method public final zzD(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzr(IJ)V

    return-void
.end method

.method public final zzI(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzp(II)V

    return-void
.end method

.method public final zzK(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzr(IJ)V

    return-void
.end method

.method public final zzb(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzd(IZ)V

    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void
.end method

.method public final zzf(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzh(IJ)V

    return-void
.end method

.method public final zzi(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzj(II)V

    return-void
.end method

.method public final zzk(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzf(II)V

    return-void
.end method

.method public final zzm(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzh(IJ)V

    return-void
.end method

.method public final zzo(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzf(II)V

    return-void
.end method

.method public final zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzo(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;

    .line 2
    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzo(II)V

    return-void
.end method

.method public final zzr(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzj(II)V

    return-void
.end method

.method public final zzt(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzr(IJ)V

    return-void
.end method

.method public final zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzB()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zza(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzD(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;

    .line 6
    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    return-void
.end method

.method public final zzw(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0xb

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    .line 4
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzp(II)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    .line 9
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzp(II)V

    const/16 p1, 0x1a

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzE()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    .line 12
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzW(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    return-void
.end method

.method public final zzx(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzf(II)V

    return-void
.end method

.method public final zzz(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzh(IJ)V

    return-void
.end method
