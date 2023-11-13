.class public final Lcom/google/photos/vision/barhopper/zzao;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzao;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/photos/vision/barhopper/zzao;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzao;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzao;->zza:Lcom/google/photos/vision/barhopper/zzao;

    const-class v1, Lcom/google/photos/vision/barhopper/zzao;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzj:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzao;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzao;->zza:Lcom/google/photos/vision/barhopper/zzao;

    return-object v0
.end method

.method public static zzb()Lcom/google/photos/vision/barhopper/zzao;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzao;->zza:Lcom/google/photos/vision/barhopper/zzao;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()I
    .locals 3

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzg:I

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v2, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v0

    :cond_4
    return v1
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
    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzj:B

    return-object v4

    .line 2
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzao;->zza:Lcom/google/photos/vision/barhopper/zzao;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzak;

    .line 3
    invoke-direct {p0, v4}, Lcom/google/photos/vision/barhopper/zzak;-><init>(Landroidx/appcompat/R$drawable;)V

    return-object p0

    .line 4
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzao;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzao;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v1

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v0

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v5

    .line 5
    sget-object p1, Lcom/google/photos/vision/barhopper/zzam;->zza:Lcom/google/photos/vision/barhopper/zzam;

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v3

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v2

    sget-object p1, Lcom/google/photos/vision/barhopper/zzao;->zza:Lcom/google/photos/vision/barhopper/zzao;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0001\u0001\u1508\u0000\u0002\u100c\u0001\u0003\u1008\u0002\u0004\u1007\u0003"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 7
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzao;->zzj:B

    .line 8
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
