.class public final Lcom/google/photos/vision/barhopper/zzr;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzr;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzm:Ljava/lang/String;

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/photos/vision/barhopper/zzr;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzr;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    const-class v1, Lcom/google/photos/vision/barhopper/zzr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzh:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 3
    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 4
    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 5
    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 6
    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzm:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzb()Lcom/google/photos/vision/barhopper/zzr;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object v0
.end method

.method public static zzc()Lcom/google/photos/vision/barhopper/zzr;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-object p0
.end method

.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    move v0, v1

    .line 1
    :cond_0
    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzn:B

    return-object v4

    .line 2
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzq;

    .line 4
    invoke-direct {p0, v4}, Lcom/google/photos/vision/barhopper/zzq;-><init>(Landroidx/appcompat/R$drawable;)V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzr;

    .line 6
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzr;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0xc

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v5

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v3

    .line 7
    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    aput-object p1, p0, v2

    const/4 p1, 0x6

    const-string/jumbo p2, "zzj"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-class p2, Lcom/google/photos/vision/barhopper/zzy;

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string/jumbo p2, "zzm"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/photos/vision/barhopper/zzr;->zza:Lcom/google/photos/vision/barhopper/zzr;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0004\u0001\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u001b\u0005\u001b\u0006\u001a\u0007\u041b\u0008\u1008\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzn:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-object p0
.end method

.method public final zzi()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-object p0
.end method

.method public final zzj()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzr;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-object p0
.end method
