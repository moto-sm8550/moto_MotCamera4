.class public final Lcom/google/barhopper/deeplearning/zzi;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/barhopper/deeplearning/zzi;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzh:I

.field private zzi:F

.field private zzj:F

.field private zzk:Lcom/google/barhopper/deeplearning/zzf;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhj;

.field private zzo:I

.field private zzp:I

.field private zzq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/barhopper/deeplearning/zzi;

    invoke-direct {v0}, Lcom/google/barhopper/deeplearning/zzi;-><init>()V

    sput-object v0, Lcom/google/barhopper/deeplearning/zzi;->zza:Lcom/google/barhopper/deeplearning/zzi;

    const-class v1, Lcom/google/barhopper/deeplearning/zzi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzf:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzh:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzi:F

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzj:F

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 4
    iput-object v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzm:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzo:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzp:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zzq:I

    return-void
.end method

.method public static zza()Lcom/google/barhopper/deeplearning/zzh;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzi;->zza:Lcom/google/barhopper/deeplearning/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/barhopper/deeplearning/zzh;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/barhopper/deeplearning/zzi;
    .locals 1

    sget-object v0, Lcom/google/barhopper/deeplearning/zzi;->zza:Lcom/google/barhopper/deeplearning/zzi;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/barhopper/deeplearning/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzi;->zzk:Lcom/google/barhopper/deeplearning/zzf;

    iget p1, p0, Lcom/google/barhopper/deeplearning/zzi;->zze:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/barhopper/deeplearning/zzi;->zze:I

    return-void
.end method

.method public static synthetic zzd(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/barhopper/deeplearning/zzi;->zze:I

    iput-object p1, p0, Lcom/google/barhopper/deeplearning/zzi;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

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
    sget-object p0, Lcom/google/barhopper/deeplearning/zzi;->zza:Lcom/google/barhopper/deeplearning/zzi;

    return-object p0

    .line 2
    :cond_1
    new-instance p1, Lcom/google/barhopper/deeplearning/zzh;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/barhopper/deeplearning/zzh;-><init>(Landroidx/coordinatorlayout/R$style;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p0, Lcom/google/barhopper/deeplearning/zzi;

    .line 5
    invoke-direct {p0}, Lcom/google/barhopper/deeplearning/zzi;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0xd

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

    const/16 p0, 0xa

    const-string/jumbo p2, "zzo"

    aput-object p2, p1, p0

    const/16 p0, 0xb

    const-string/jumbo p2, "zzp"

    aput-object p2, p1, p0

    const/16 p0, 0xc

    const-string/jumbo p2, "zzq"

    aput-object p2, p1, p0

    .line 6
    sget-object p0, Lcom/google/barhopper/deeplearning/zzi;->zza:Lcom/google/barhopper/deeplearning/zzi;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u100a\u0001\u0003\u100b\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1009\u0005\u0007\u0013\u0008\u1004\u0006\t\u1009\u0007\n\u1004\u0008\u000b\u1004\t\u000c\u1004\n"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 8
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
