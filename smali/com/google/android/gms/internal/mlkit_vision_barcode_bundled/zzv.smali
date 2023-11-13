.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;


# instance fields
.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

.field private zzj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    move-result-object v0

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    const v3, 0xca4e15

    move-object v1, v2

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    move v0, v1

    .line 1
    :cond_0
    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    return-object v3

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzu;-><init>()V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;-><init>()V

    return-object p0

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v3

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1505\u0000\u0002\u1505\u0001\u0003\u1409\u0002"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 7
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzv;->zzj:B

    .line 8
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
