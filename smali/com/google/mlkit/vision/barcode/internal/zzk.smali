.class public final Lcom/google/mlkit/vision/barcode/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    return-void
.end method


# virtual methods
.method public final getBoundingBox()Landroid/graphics/Rect;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zze:[Landroid/graphics/Point;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v6, p0, v1

    .line 5
    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6
    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7
    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 8
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 9
    invoke-direct {p0, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getCornerPoints()[Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zze:[Landroid/graphics/Point;

    return-object p0
.end method

.method public final getDisplayValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormat()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zza:I

    return p0
.end method

.method public final getRawBytes()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzd:[B

    return-object p0
.end method

.method public final getRawValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzf:I

    return p0
.end method
