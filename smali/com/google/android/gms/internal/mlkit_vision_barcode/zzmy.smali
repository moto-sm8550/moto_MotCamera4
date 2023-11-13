.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
