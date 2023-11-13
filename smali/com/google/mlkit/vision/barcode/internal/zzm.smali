.class public final Lcom/google/mlkit/vision/barcode/internal/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    return-void
.end method


# virtual methods
.method public final getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    move v3, v2

    move v4, v3

    move v2, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    .line 2
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 3
    aget-object v5, v5, v0

    .line 4
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5
    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6
    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCornerPoints()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zze:[Landroid/graphics/Point;

    return-object p0
.end method

.method public final getDisplayValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormat()I
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    return p0
.end method

.method public final getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzo:[B

    return-object p0
.end method

.method public final getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueType()I
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    return p0
.end method
