.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zznk;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

.field public final synthetic zzf:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iput-wide p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzb:J

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 10

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zza:Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-wide v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzb:J

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iget-object v5, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzh;->zzf:Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zza:Ljava/lang/Long;

    .line 3
    iput-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    .line 4
    sget-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    iput-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zzc:Ljava/lang/Boolean;

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    iput-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zzd:Ljava/lang/Boolean;

    .line 9
    iput-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;->zze:Ljava/lang/Boolean;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkc;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzka;)V

    .line 11
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkc;

    .line 12
    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 13
    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    move-result-object v1

    .line 14
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v1

    .line 16
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v1

    .line 18
    iput-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 19
    iget v1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    .line 20
    sget-object v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v2, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v3, 0x0

    const-string v4, "null reference"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    const/16 v7, 0x23

    const v8, 0x32315659

    const/16 v9, 0x11

    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_0

    goto :goto_0

    :cond_0
    if-eq v2, v7, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 22
    :cond_1
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v3

    .line 23
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    .line 26
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;-><init>()V

    if-eq v1, v5, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v8, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    if-eq v1, v9, :cond_3

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    goto :goto_2

    .line 28
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    goto :goto_2

    .line 29
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    goto :goto_2

    .line 30
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    goto :goto_2

    .line 31
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    goto :goto_2

    .line 32
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    .line 33
    :goto_2
    iput-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;->zza:Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;->zzb:Ljava/lang/Object;

    .line 36
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjv;)V

    .line 37
    iput-object p0, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;

    .line 38
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;-><init>()V

    iget-boolean v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v0, :cond_8

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 40
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkx;)V

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkz;

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-result-object p0

    return-object p0

    .line 44
    :cond_9
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v3
.end method
