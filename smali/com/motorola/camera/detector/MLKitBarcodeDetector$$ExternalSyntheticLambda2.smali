.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;JILcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iput-wide p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$1:J

    iput p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$2:I

    iput-object p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-wide v2, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$1:J

    iget v4, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->f$3:Lcom/google/mlkit/vision/common/InputImage;

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_33

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 3
    invoke-virtual {v1, v5}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->processBarcodes(Ljava/util/List;)V

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz v2, :cond_33

    .line 5
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 6
    iget-object v3, v3, Lcom/google/mlkit/vision/barcode/common/Barcode;->zzb:Landroid/graphics/Rect;

    .line 7
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 8
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    neg-int v5, v4

    int-to-float v5, v5

    .line 9
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/16 v5, 0x5a

    const/4 v8, 0x0

    if-eq v4, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x10e

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v0, v0

    .line 11
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 12
    :cond_1
    iget v4, v0, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    int-to-float v4, v4

    .line 13
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    .line 14
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 15
    :cond_2
    iget v0, v0, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    int-to-float v0, v0

    .line 16
    invoke-virtual {v3, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 18
    iget-object v0, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

    iget-object v1, v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    check-cast v0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda1;

    iget-object v3, v0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/detector/ScanningEngine;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/motorola/camera/detector/results/ZxingResultParser;->sMlKitToZxingFormats:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    .line 20
    invoke-virtual {v1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v0, :cond_31

    if-nez v4, :cond_3

    goto/16 :goto_1a

    :cond_3
    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    .line 21
    new-instance v10, Lcom/google/zxing/ResultPoint;

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget v12, v2, Landroid/graphics/RectF;->top:F

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v5

    new-instance v10, Lcom/google/zxing/ResultPoint;

    iget v13, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v10, v13, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v12, 0x1

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v10, v13, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v12, 0x2

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-direct {v10, v11, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v10, v9, v2

    .line 22
    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v2}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 23
    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v2}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getDisplayValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 25
    :cond_4
    new-instance v4, Lcom/google/zxing/Result;

    invoke-direct {v4, v2, v9, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 26
    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 27
    :try_start_0
    iget-object v0, v4, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v9, v0

    .line 29
    iget-object v0, v4, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v9, v13

    goto :goto_1

    .line 31
    :catch_0
    iget-object v0, v4, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 33
    iget-object v9, v4, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 34
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    int-to-long v9, v9

    .line 35
    :goto_1
    invoke-direct {v2, v9, v10}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;-><init>(J)V

    .line 36
    sget-object v0, Lcom/motorola/camera/detector/results/ZxingResultParser;->FORMATS_2D:Ljava/util/EnumSet;

    .line 37
    iget-object v9, v4, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 38
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    iput v12, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    goto :goto_2

    .line 40
    :cond_5
    iput v5, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    .line 41
    :goto_2
    iget-object v0, v4, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 42
    array-length v9, v0

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_3
    if-ge v5, v9, :cond_e

    aget-object v14, v0, v5

    .line 43
    iget v15, v14, Lcom/google/zxing/ResultPoint;->x:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v17, v15, v16

    if-eqz v17, :cond_d

    .line 44
    iget v14, v14, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_d

    cmpl-float v16, v10, v8

    if-eqz v16, :cond_6

    cmpl-float v16, v10, v15

    if-lez v16, :cond_7

    :cond_6
    move v10, v15

    :cond_7
    cmpl-float v16, v12, v8

    if-eqz v16, :cond_8

    cmpg-float v16, v12, v15

    if-gez v16, :cond_9

    :cond_8
    move v12, v15

    :cond_9
    cmpl-float v15, v11, v8

    if-eqz v15, :cond_a

    cmpl-float v15, v11, v14

    if-lez v15, :cond_b

    :cond_a
    move v11, v14

    :cond_b
    cmpl-float v15, v13, v8

    if-eqz v15, :cond_c

    cmpg-float v15, v13, v14

    if-gez v15, :cond_d

    :cond_c
    move v13, v14

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 45
    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v5, v10

    float-to-int v8, v11

    float-to-int v9, v12

    float-to-int v10, v13

    invoke-direct {v0, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    .line 47
    iget-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    iput-wide v6, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    .line 48
    iget-object v0, v4, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 49
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    .line 50
    sget-object v5, Lcom/motorola/camera/detector/results/ZxingResultParser;->sSourceAnalytics:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;

    const/16 v0, 0x9

    .line 51
    sget-object v6, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_10

    aget-object v9, v6, v8

    .line 52
    invoke-virtual {v9, v4}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v9

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 53
    :cond_10
    new-instance v9, Lcom/google/zxing/client/result/TextParsedResult;

    .line 54
    iget-object v6, v4, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 55
    invoke-direct {v9, v6}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;)V

    .line 56
    :goto_5
    iget v6, v9, Lcom/google/zxing/client/result/ParsedResult;->type:I

    .line 57
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    const-string v7, ""

    const/16 v8, 0xd

    const/16 v10, 0xb

    const/4 v11, 0x5

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_19

    .line 58
    :pswitch_0
    check-cast v9, Lcom/google/zxing/client/result/VINParsedResult;

    .line 59
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 60
    iget-object v4, v9, Lcom/google/zxing/client/result/VINParsedResult;->vin:Ljava/lang/String;

    .line 61
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 62
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    move v0, v10

    goto/16 :goto_19

    .line 63
    :pswitch_1
    check-cast v9, Lcom/google/zxing/client/result/ISBNParsedResult;

    .line 64
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 65
    iget-object v4, v9, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    .line 66
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 67
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v0, 0x3

    goto/16 :goto_19

    .line 68
    :pswitch_2
    check-cast v9, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 69
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;-><init>()V

    .line 70
    iget-object v4, v9, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    .line 71
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    .line 72
    iget-object v4, v9, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    .line 73
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    .line 74
    iget-object v4, v9, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    .line 75
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    .line 76
    iget-boolean v4, v9, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    .line 77
    iput-boolean v4, v0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    .line 78
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/16 v0, 0xc

    goto/16 :goto_19

    .line 79
    :pswitch_3
    check-cast v9, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 80
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Event;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Event;-><init>()V

    .line 81
    iget-object v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->summary:Ljava/lang/String;

    .line 82
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->summary:Ljava/lang/String;

    .line 83
    new-instance v4, Ljava/util/Date;

    iget-wide v6, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->start:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 84
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->start:Ljava/util/Date;

    .line 85
    iget-boolean v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->startAllDay:Z

    .line 86
    iput-boolean v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->startAllDay:Z

    .line 87
    iget-wide v6, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-gez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_6

    :cond_11
    new-instance v4, Ljava/util/Date;

    iget-wide v6, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->end:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 88
    :goto_6
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->end:Ljava/util/Date;

    .line 89
    iget-boolean v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->endAllDay:Z

    .line 90
    iput-boolean v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->endAllDay:Z

    .line 91
    iget-object v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->location:Ljava/lang/String;

    .line 92
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->location:Ljava/lang/String;

    .line 93
    iget-object v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->organizer:Ljava/lang/String;

    .line 94
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->organizer:Ljava/lang/String;

    .line 95
    iget-object v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->attendees:[Ljava/lang/String;

    .line 96
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->attendees:[Ljava/lang/String;

    .line 97
    iget-object v4, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->description:Ljava/lang/String;

    .line 98
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->description:Ljava/lang/String;

    .line 99
    iget-wide v6, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->latitude:D

    .line 100
    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    .line 101
    iget-wide v8, v9, Lcom/google/zxing/client/result/CalendarParsedResult;->longitude:D

    .line 102
    iput-wide v8, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-wide v6, -0x3f70bf3333333333L    # -1000.1

    if-eqz v4, :cond_12

    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->latitude:D

    .line 104
    :cond_12
    iget-wide v8, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_13

    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Event;->longitude:D

    .line 105
    :cond_13
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v0, 0x1

    goto/16 :goto_19

    .line 106
    :pswitch_4
    check-cast v9, Lcom/google/zxing/client/result/SMSParsedResult;

    .line 107
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    .line 108
    iget-object v4, v9, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 109
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->numbers:[Ljava/lang/String;

    .line 110
    iget-object v4, v9, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 111
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->vias:[Ljava/lang/String;

    .line 112
    iget-object v4, v9, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 113
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    .line 114
    iget-object v4, v9, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 115
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    .line 116
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto/16 :goto_18

    .line 117
    :pswitch_5
    check-cast v9, Lcom/google/zxing/client/result/TelParsedResult;

    .line 118
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    .line 119
    iget-object v4, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 120
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "\u200e"

    .line 121
    invoke-static {v4}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 122
    iget-object v7, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 123
    invoke-static {v6, v7, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 124
    iput-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    goto :goto_7

    :cond_14
    const/4 v4, 0x1

    const/4 v6, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 125
    iget-object v7, v9, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 126
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 127
    :goto_7
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v0, 0x6

    goto/16 :goto_19

    .line 128
    :pswitch_6
    check-cast v9, Lcom/google/zxing/client/result/GeoParsedResult;

    .line 129
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Geo;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Geo;-><init>()V

    .line 130
    iget-wide v6, v9, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 131
    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Geo;->latitude:D

    .line 132
    iget-wide v6, v9, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 133
    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Geo;->longitude:D

    .line 134
    iget-wide v6, v9, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 135
    iput-wide v6, v0, Lcom/motorola/camera/detector/results/tidbit/Geo;->altitude:D

    .line 136
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    const/4 v0, 0x4

    goto/16 :goto_19

    .line 137
    :pswitch_7
    iget-object v4, v4, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 138
    check-cast v9, Lcom/google/zxing/client/result/TextParsedResult;

    .line 139
    iget-object v6, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 140
    sget-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    if-eqz v0, :cond_1a

    .line 141
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "content://com.motorola.ccc.notification.CameraContentProvider/dimopackage"

    .line 143
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->DIMO_PROVIDER_COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v13, v14, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v12, :cond_18

    const/4 v0, 0x0

    .line 144
    :try_start_2
    aget-object v0, v13, v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x1

    .line 145
    aget-object v13, v13, v14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 146
    :cond_15
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 147
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_scan_code"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 148
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\[|]"

    .line 149
    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\s"

    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ","

    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    goto :goto_8

    .line 151
    :cond_16
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_app_name"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 152
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoTitle:Ljava/lang/String;

    goto :goto_8

    .line 153
    :cond_17
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "dimo_package_name"

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 154
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoPackage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v13, v0

    .line 155
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_4
    invoke-virtual {v13, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v13

    :cond_18
    if-eqz v12, :cond_19

    .line 156
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_19
    const/4 v0, 0x0

    .line 157
    sput-boolean v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->sShouldCheckDimoSupport:Z

    .line 158
    :cond_1a
    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->mDimoCodeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    array-length v12, v0

    if-eqz v12, :cond_1c

    .line 159
    array-length v12, v0

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_1c

    aget-object v14, v0, v13

    .line 160
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const/4 v0, 0x1

    goto :goto_b

    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_1c
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    const/4 v6, 0x1

    goto/16 :goto_12

    .line 161
    :cond_1d
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    :try_start_5
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.motorola.ccc.notification"

    const-string v14, "com.motorola.ccc.notification.ExternalMonopolyLauncher"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1e

    move v0, v12

    goto :goto_c

    :catch_2
    move-exception v0

    const/4 v12, 0x1

    .line 164
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MotoMonopoly: Illegal Argument Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MotoMonopoly"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    move/from16 v18, v12

    move v12, v0

    move/from16 v0, v18

    :goto_c
    if-eqz v12, :cond_25

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 166
    sget-object v13, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;->QR_PATTERNS:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 167
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    or-int/2addr v14, v15

    goto :goto_d

    :cond_1f
    const-string v12, "Banco24Horas"

    .line 168
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "SaqueDigital"

    .line 169
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v8, :cond_20

    move v8, v0

    goto :goto_e

    :cond_20
    const/4 v8, 0x0

    :goto_e
    if-eqz v8, :cond_21

    const/4 v6, 0x2

    goto/16 :goto_11

    :cond_21
    if-nez v14, :cond_24

    const-string v8, "[^0-9]"

    .line 170
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_22

    const/4 v6, 0x0

    goto :goto_10

    :cond_22
    const-string v7, "8"

    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 174
    invoke-static {v6, v8, v10}, Landroidx/room/util/StringUtil;->barcodeVDCalculation(Ljava/lang/String;II)I

    move-result v11

    .line 175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_23
    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 176
    invoke-static {v6, v7, v10}, Landroidx/room/util/StringUtil;->barcodeVDCalculation(Ljava/lang/String;II)I

    move-result v10

    .line 177
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    :goto_f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_10
    if-eqz v6, :cond_25

    :cond_24
    move v6, v0

    goto :goto_12

    :cond_25
    const/4 v6, 0x0

    :goto_11
    move/from16 v18, v6

    move v6, v0

    move/from16 v0, v18

    .line 179
    :goto_12
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne v7, v4, :cond_27

    .line 180
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_26

    sget-object v7, Lcom/motorola/camera/detector/results/ZxingResultParser;->CODE_128_PREFIXES:Ljava/util/List;

    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 182
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v4, v6

    goto :goto_13

    :cond_26
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_27

    .line 183
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 184
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 185
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 186
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto/16 :goto_17

    .line 187
    :cond_27
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    const-string v7, "motorolardpconnection"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    const-string v7, "motorolareadyformiracast"

    .line 189
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    move v4, v6

    goto :goto_14

    :cond_29
    const/4 v4, 0x0

    .line 190
    :goto_14
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v8, "com.motorola.permission.mobiledesktop.rdp"

    .line 191
    invoke-virtual {v7, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v6, 0x0

    :goto_15
    and-int/2addr v4, v6

    const-string v6, "com.motorola.mobiledesktop"

    .line 192
    invoke-static {v6}, Lcom/motorola/camera/shared/PackageUtility;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    if-eqz v4, :cond_2b

    .line 193
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/MotoRdpConnection;

    .line 194
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 195
    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/MotoRdpConnection;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_16

    :cond_2b
    if-eqz v0, :cond_2c

    .line 196
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;

    .line 197
    iget-object v6, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 198
    invoke-direct {v4, v6, v0}, Lcom/motorola/camera/detector/results/tidbit/MotoMonopoly;-><init>(Ljava/lang/String;I)V

    iput-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_16

    .line 199
    :cond_2c
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Text;

    iget-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mBarcodeFormat:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/Text;-><init>(Lcom/google/zxing/BarcodeFormat;)V

    .line 200
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 201
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    .line 202
    iget-object v4, v9, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;

    if-eqz v4, :cond_2d

    .line 203
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Text;->locale:Ljava/util/Locale;

    .line 204
    :cond_2d
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_16
    const/16 v0, 0x8

    goto/16 :goto_19

    :pswitch_8
    const/16 v0, 0xa

    .line 205
    check-cast v9, Lcom/google/zxing/client/result/URIParsedResult;

    .line 206
    iget-object v4, v9, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    const-string v6, "MT:[A-Z0-9.-]{19,}"

    .line 207
    invoke-static {v6, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 208
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/GoogleMatter;

    invoke-direct {v0, v4}, Lcom/motorola/camera/detector/results/tidbit/GoogleMatter;-><init>(Ljava/lang/String;)V

    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    move v0, v8

    goto/16 :goto_19

    .line 209
    :cond_2e
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/Url;

    invoke-direct {v4}, Lcom/motorola/camera/detector/results/tidbit/Url;-><init>()V

    .line 210
    iget-object v6, v9, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 211
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Url;->url:Ljava/lang/String;

    .line 212
    iput-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto/16 :goto_19

    .line 213
    :pswitch_9
    instance-of v0, v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    if-eqz v0, :cond_2f

    .line 214
    check-cast v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    .line 215
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 216
    iget-object v4, v9, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    .line 217
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 218
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    goto :goto_17

    .line 219
    :cond_2f
    check-cast v9, Lcom/google/zxing/client/result/ProductParsedResult;

    .line 220
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Product;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Product;-><init>()V

    .line 221
    iget-object v4, v9, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    .line 222
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Product;->productId:Ljava/lang/String;

    .line 223
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_17
    const/4 v0, 0x7

    goto :goto_19

    .line 224
    :pswitch_a
    check-cast v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    .line 225
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/Message;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/Message;-><init>()V

    .line 226
    iget-object v4, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->tos:[Ljava/lang/String;

    if-eqz v4, :cond_30

    .line 227
    array-length v6, v4

    if-lez v6, :cond_30

    const/4 v6, 0x0

    aget-object v7, v4, v6

    :cond_30
    iput-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->email:Ljava/lang/String;

    .line 228
    iget-object v4, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    .line 229
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->subject:Ljava/lang/String;

    .line 230
    iget-object v4, v9, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    .line 231
    iput-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Message;->body:Ljava/lang/String;

    .line 232
    iput-object v0, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    :goto_18
    move v0, v11

    goto :goto_19

    :pswitch_b
    const/4 v0, 0x2

    .line 233
    check-cast v9, Lcom/google/zxing/client/result/AddressBookParsedResult;

    .line 234
    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/Contact;

    invoke-direct {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;-><init>()V

    .line 235
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 236
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    .line 237
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    .line 238
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    .line 239
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 240
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    .line 241
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 242
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    .line 243
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 244
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    .line 245
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 246
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    .line 247
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    .line 248
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    .line 249
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    .line 250
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    .line 251
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 252
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    .line 253
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 254
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    .line 255
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    .line 256
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    .line 257
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 258
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    .line 259
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 260
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    .line 261
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    .line 262
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    .line 263
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 264
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    .line 265
    iget-object v6, v9, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    .line 266
    iput-object v6, v4, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    .line 267
    iput-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    .line 268
    :goto_19
    iget-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget v5, v5, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_SOURCE;->mCheckInData:I

    shl-int/lit8 v5, v5, 0x8

    invoke-static {v0}, Lcom/motorola/camera/analytics/AlwaysAwareData$OBJECT_CONTENT$EnumUnboxingLocalUtility;->getMCheckInData(I)I

    move-result v0

    add-int/2addr v0, v5

    iput v0, v4, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    goto :goto_1b

    :cond_31
    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_32

    .line 270
    iget-object v0, v3, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    :cond_32
    const-string v0, "Unrecognized barcode: "

    .line 271
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getRawValue()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanningEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
