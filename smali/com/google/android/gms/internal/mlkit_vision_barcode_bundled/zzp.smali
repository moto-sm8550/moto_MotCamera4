.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

.field private zzl:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzl:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzh:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    return-object v0
.end method


# virtual methods
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
    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzl:B

    return-object v4

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzu;

    .line 4
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzu;-><init>()V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x7

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

    const-string/jumbo p1, "zzj"

    aput-object p1, p0, v2

    const/4 p1, 0x6

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u000f\u0006\u0000\u0002\u0001\u0001\u0016\u0002\u0013\u0003\u1007\u0000\u0004\u1008\u0001\u0005\u1008\u0002\u000f\u1409\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzp;->zzl:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
