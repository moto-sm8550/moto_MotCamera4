.class public final Lcom/google/mlkit/vision/barcode/common/Barcode;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# instance fields
.field public final zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

.field public final zzb:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    .line 2
    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    .line 4
    invoke-interface {p1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getCornerPoints()[Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final getFormat()I
    .locals 2

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {p0}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getFormat()I

    move-result p0

    const/4 v0, -0x1

    const/16 v1, 0x1000

    if-gt p0, v1, :cond_0

    if-nez p0, :cond_1

    return v0

    :cond_0
    move p0, v0

    :cond_1
    return p0
.end method

.method public final getRawBytes()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {p0}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawBytes()[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    .line 2
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
