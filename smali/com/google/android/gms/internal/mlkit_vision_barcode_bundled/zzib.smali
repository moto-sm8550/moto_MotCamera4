.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhu;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zzh:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    return-object v0
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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhy;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhy;-><init>()V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "zze"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zzf"

    aput-object v3, p1, p0

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhx;

    aput-object p0, p1, v2

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, v1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhw;

    aput-object p0, p1, v0

    const-string/jumbo p0, "zzh"

    aput-object p0, p1, p2

    const/4 p0, 0x6

    const-string/jumbo p2, "zzi"

    aput-object p2, p1, p0

    const/4 p0, 0x7

    const-string/jumbo p2, "zzj"

    aput-object p2, p1, p0

    const/16 p0, 0x8

    const-string/jumbo p2, "zzk"

    aput-object p2, p1, p0

    const/16 p0, 0x9

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhz;

    aput-object p2, p1, p0

    const/16 p0, 0xa

    const-string/jumbo p2, "zzl"

    aput-object p2, p1, p0

    const/16 p0, 0xb

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzia;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzia;

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1004\u0001\u0004\u1009\u0002\u0005\u1008\u0003\u0006\u100c\u0004\u0007\u100c\u0005"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 8
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
