.class public final Lcom/google/barhopper/deeplearning/zzc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzc;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/barhopper/deeplearning/zzc;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    const-class v1, Lcom/google/barhopper/deeplearning/zzc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 3
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    .line 4
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zzb;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzb;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzc;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzi:I

    return-void
.end method

.method public static zzd(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    .line 2
    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    :cond_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg(F)V

    return-void
.end method

.method public static zze(Lcom/google/barhopper/deeplearning/zzc;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;

    .line 2
    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcm;->zza:Z

    if-nez v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 4
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzc:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    :cond_1
    iget-object p0, p0, Lcom/google/barhopper/deeplearning/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg(F)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/barhopper/deeplearning/zzc;I)V
    .locals 1

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzc;->zze:I

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzc;->zzh:I

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Lcom/google/barhopper/deeplearning/zzb;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/barhopper/deeplearning/zzb;-><init>(Landroidx/lifecycle/DispatchQueue;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzc;

    .line 5
    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzc;-><init>()V

    return-object p0

    :cond_3
    const/4 p1, 0x7

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

    .line 6
    sget-object p0, Lcom/google/barhopper/deeplearning/zzc;->zza:Lcom/google/barhopper/deeplearning/zzc;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003\u100b\u0000\u0004\u100b\u0001\u0005\u100b\u0002\u0006\u100b\u0003"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 8
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
