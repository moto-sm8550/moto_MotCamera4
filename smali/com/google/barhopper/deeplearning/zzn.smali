.class public final Lcom/google/barhopper/deeplearning/zzn;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzn;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzj:F

.field private zzk:F

.field private zzl:F

.field private zzm:F

.field private zzn:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/barhopper/deeplearning/zzn;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzn;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    const-class v1, Lcom/google/barhopper/deeplearning/zzn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzf:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzh:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzj:F

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzk:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzl:F

    const v0, 0x3f59999a

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzm:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zzn:I

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zzm;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzm;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzn;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zze:I

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zzd(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzn;->zze:I

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p0, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Lcom/google/barhopper/deeplearning/zzm;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/barhopper/deeplearning/zzm;-><init>(Landroidx/core/R$id;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzn;

    .line 5
    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzn;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "zze"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zzf"

    aput-object v3, p1, p0

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, v2

    const-string/jumbo p0, "zzh"

    aput-object p0, p1, v1

    const-string/jumbo p0, "zzi"

    aput-object p0, p1, v0

    const-string/jumbo p0, "zzj"

    aput-object p0, p1, p2

    const/4 p0, 0x6

    const-string/jumbo p2, "zzk"

    aput-object p2, p1, p0

    const/4 p0, 0x7

    const-string/jumbo p2, "zzl"

    aput-object p2, p1, p0

    const/16 p0, 0x8

    const-string/jumbo p2, "zzm"

    aput-object p2, p1, p0

    const/16 p0, 0x9

    const-string/jumbo p2, "zzn"

    aput-object p2, p1, p0

    .line 6
    sget-object p0, Lcom/google/barhopper/deeplearning/zzn;->zza:Lcom/google/barhopper/deeplearning/zzn;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u100a\u0001\u0003\u1008\u0002\u0004\u100a\u0003\u0005\u1001\u0004\u0006\u1001\u0005\u0007\u1001\u0006\u0008\u1001\u0007\t\u1004\u0008"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 8
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
