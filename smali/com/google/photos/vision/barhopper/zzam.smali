.class public final Lcom/google/photos/vision/barhopper/zzam;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;


# static fields
.field public static final zza:Lcom/google/photos/vision/barhopper/zzam;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/photos/vision/barhopper/zzam;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzam;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzam;->zza:Lcom/google/photos/vision/barhopper/zzam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    move v1, p0

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
    if-eqz v1, :cond_4

    return v0

    :cond_4
    return p0
.end method
