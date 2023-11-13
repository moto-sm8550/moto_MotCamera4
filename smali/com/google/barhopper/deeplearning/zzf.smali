.class public final Lcom/google/barhopper/deeplearning/zzf;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzf;


# instance fields
.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/barhopper/deeplearning/zzf;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzf;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzf;->zza:Lcom/google/barhopper/deeplearning/zzf;

    const-class v1, Lcom/google/barhopper/deeplearning/zzf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 3
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zze;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzf;->zza:Lcom/google/barhopper/deeplearning/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zze;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzf;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzf;->zza:Lcom/google/barhopper/deeplearning/zzf;

    return-object v0
.end method

.method public static zzc(Lcom/google/barhopper/deeplearning/zzf;Lcom/google/barhopper/deeplearning/zzc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    :cond_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p0, Lcom/google/barhopper/deeplearning/zzf;->zza:Lcom/google/barhopper/deeplearning/zzf;

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zze;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/barhopper/deeplearning/zze;-><init>(Lcom/google/barhopper/deeplearning/zzd;)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzf;

    .line 5
    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzf;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zze"

    aput-object v0, p1, p2

    .line 6
    const-class p2, Lcom/google/barhopper/deeplearning/zzc;

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/barhopper/deeplearning/zzf;->zza:Lcom/google/barhopper/deeplearning/zzf;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 8
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
