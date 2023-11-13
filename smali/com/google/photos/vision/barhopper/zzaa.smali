.class public final Lcom/google/photos/vision/barhopper/zzaa;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzaa;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzaa;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    const-class v1, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzaa;->zzn:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzaa;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

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
    sget-object p0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/photos/vision/barhopper/zzz;

    .line 2
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzz;-><init>()V

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzaa;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzaa;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0xa

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

    .line 4
    sget-object p0, Lcom/google/photos/vision/barhopper/zzaa;->zza:Lcom/google/photos/vision/barhopper/zzaa;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1008\u0007\t\u1008\u0008"

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 6
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
