.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zziy;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzih;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzio;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzib;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzje;

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzim;

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzim;

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzim;

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzie;

.field private zzs:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;->zzs:I

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjb;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjb;-><init>()V

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "zze"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zzf"

    aput-object v3, p1, p0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhr;

    aput-object p0, p1, v2

    const-string/jumbo p0, "zzg"

    aput-object p0, p1, v1

    const-string/jumbo p0, "zzh"

    aput-object p0, p1, v0

    const-string/jumbo p0, "zzi"

    aput-object p0, p1, p2

    const/4 p0, 0x6

    const-string/jumbo p2, "zzj"

    aput-object p2, p1, p0

    const/4 p0, 0x7

    const-string/jumbo p2, "zzn"

    aput-object p2, p1, p0

    const/16 p0, 0x8

    const-string/jumbo p2, "zzo"

    aput-object p2, p1, p0

    const/16 p0, 0x9

    const-string/jumbo p2, "zzp"

    aput-object p2, p1, p0

    const/16 p0, 0xa

    const-string/jumbo p2, "zzq"

    aput-object p2, p1, p0

    const/16 p0, 0xb

    const-string/jumbo p2, "zzk"

    aput-object p2, p1, p0

    const/16 p0, 0xc

    const-string/jumbo p2, "zzr"

    aput-object p2, p1, p0

    const/16 p0, 0xd

    const-string/jumbo p2, "zzl"

    aput-object p2, p1, p0

    const/16 p0, 0xe

    const-string/jumbo p2, "zzm"

    aput-object p2, p1, p0

    const/16 p0, 0xf

    const-string/jumbo p2, "zzs"

    aput-object p2, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjc;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\u0008\u0007\u1009\t\u0008\u1009\n\t\u1007\u000b\n\u1009\u0005\u000b\u1009\u000c\u000c\u1009\u0006\r\u1009\u0007\u000e\u1004\r"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 6
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
