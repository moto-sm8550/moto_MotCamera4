.class public final Lcom/google/photos/vision/barhopper/zzae;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzae;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzae;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    const-class v1, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    return-void
.end method

.method public static zzc()Lcom/google/photos/vision/barhopper/zzad;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzF()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    move-result-object v0

    check-cast v0, Lcom/google/photos/vision/barhopper/zzad;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/photos/vision/barhopper/zzae;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/photos/vision/barhopper/zzae;I)V
    .locals 1

    iget v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    iput p1, p0, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/photos/vision/barhopper/zzae;I)V
    .locals 1

    iget v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zze:I

    iput p1, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzf:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzg:I

    return p0
.end method

.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    move v0, v1

    .line 1
    :cond_0
    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    return-object v3

    .line 2
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzad;

    .line 3
    invoke-direct {p0, v3}, Lcom/google/photos/vision/barhopper/zzad;-><init>(Landroidx/appcompat/R$drawable;)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzae;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzae;-><init>()V

    return-object p0

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v3

    .line 5
    sget-object p1, Lcom/google/photos/vision/barhopper/zzae;->zza:Lcom/google/photos/vision/barhopper/zzae;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1504\u0001"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 7
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzae;->zzh:B

    .line 8
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
