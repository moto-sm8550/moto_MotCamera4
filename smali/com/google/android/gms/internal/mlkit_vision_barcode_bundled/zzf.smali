.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzy;

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    move-result-object v0

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    const v3, 0xba4a86

    move-object v1, v2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzg:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzj;

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x0

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-nez p2, :cond_0

    move v1, v2

    :cond_0
    iput-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzn:B

    return-object v0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;-><init>()V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0xb

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v2

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v1

    aput-object v0, p0, v6

    const-string/jumbo p1, "zzj"

    aput-object p1, p0, v5

    aput-object v0, p0, v4

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v3

    const/4 p1, 0x6

    .line 7
    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzm;

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzg"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-string/jumbo p2, "zzm"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u01f4\u0007\u0000\u0003\u0004\u0002\u041b\u0005\u041b\u0006\u001b\u0008\u1409\u0001\n\u1008\u0000\u000b\u1409\u0002\u01f4\u1009\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzf;->zzn:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
