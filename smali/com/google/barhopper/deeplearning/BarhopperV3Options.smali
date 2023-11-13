.class public final Lcom/google/barhopper/deeplearning/BarhopperV3Options;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec<",
        "Lcom/google/barhopper/deeplearning/BarhopperV3Options;",
        "Lcom/google/barhopper/deeplearning/zzk;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/barhopper/deeplearning/zzi;

.field private zzg:Lcom/google/barhopper/deeplearning/zzn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    const-class v1, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zzk;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzk;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/BarhopperV3Options;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzi;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzf:Lcom/google/barhopper/deeplearning/zzi;

    iget p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zze:I

    return-void
.end method

.method public static synthetic zzd(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzn;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzg:Lcom/google/barhopper/deeplearning/zzn;

    iget p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zze:I

    return-void
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p2, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/barhopper/deeplearning/zzk;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/barhopper/deeplearning/zzk;-><init>(Lcom/google/barhopper/deeplearning/zzj;)V

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;-><init>()V

    return-object p0

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zze"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, p0

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, v0

    .line 4
    sget-object p0, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza:Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 6
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
