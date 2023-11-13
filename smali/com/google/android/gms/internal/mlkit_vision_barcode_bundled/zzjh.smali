.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# static fields
.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;


# instance fields
.field private zzf:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zzf:B

    return-void
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zzf:B

    return-object v1

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjg;-><init>()V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;-><init>()V

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string p2, "\u0003\u0000"

    invoke-direct {p1, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzjh;->zzf:B

    .line 9
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
