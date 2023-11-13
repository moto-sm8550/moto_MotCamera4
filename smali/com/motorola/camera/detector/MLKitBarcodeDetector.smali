.class public final Lcom/motorola/camera/detector/MLKitBarcodeDetector;
.super Ljava/lang/Object;
.source "MLKitBarcodeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;
    }
.end annotation


# static fields
.field public static sInitialized:Z = false

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mBackoffFrameCounter:I

.field public mBackoffTimeBetweenScansFactor:I

.field public final mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

.field public mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mLastCaptureTimeStamp:J

.field public mScanAllowed:Z

.field public mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

.field public mScanning:Z

.field public final mShouldBackoff:Z

.field public final mTimeBetweenScans:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    .line 4
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    .line 5
    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 6
    sget-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda4;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBarcodeListener:Lcom/motorola/camera/detector/MLKitBarcodeDetector$IMLKitBarcodeListener;

    int-to-long p1, p2

    .line 8
    iput-wide p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    .line 9
    iput-boolean p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    .line 10
    new-instance p1, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static findBarcodeWithSameRawValue(Ljava/util/List;Lcom/google/mlkit/vision/barcode/common/Barcode;)Lcom/google/mlkit/vision/barcode/common/Barcode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ")",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 2
    invoke-static {v1, p1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->hasSameRawValue(Lcom/google/mlkit/vision/barcode/common/Barcode;Lcom/google/mlkit/vision/barcode/common/Barcode;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static hasSameRawValue(Lcom/google/mlkit/vision/barcode/common/Barcode;Lcom/google/mlkit/vision/barcode/common/Barcode;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final processBarcodes(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/common/Barcode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    .line 1
    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    .line 2
    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 3
    iget-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 4
    invoke-static {p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->findBarcodeWithSameRawValue(Ljava/util/List;Lcom/google/mlkit/vision/barcode/common/Barcode;)Lcom/google/mlkit/vision/barcode/common/Barcode;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v4, :cond_0

    .line 5
    iget-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    invoke-static {p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->findBarcodeWithSameRawValue(Ljava/util/List;Lcom/google/mlkit/vision/barcode/common/Barcode;)Lcom/google/mlkit/vision/barcode/common/Barcode;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez v3, :cond_1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    const/16 v3, 0x10

    if-eq p1, v3, :cond_3

    const/16 v3, 0x100

    if-eq p1, v3, :cond_3

    const/16 v3, 0x800

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    .line 10
    invoke-static {p1, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->hasSameRawValue(Lcom/google/mlkit/vision/barcode/common/Barcode;Lcom/google/mlkit/vision/barcode/common/Barcode;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_4

    .line 12
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_4

    .line 13
    :cond_6
    iget-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mShouldBackoff:Z

    if-nez p1, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    iget p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_9

    .line 15
    :cond_8
    iget v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    :cond_9
    if-gt p1, v3, :cond_a

    add-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffFrameCounter:I

    .line 17
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    if-nez p1, :cond_b

    .line 18
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCurrentBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    goto :goto_4

    .line 19
    :cond_b
    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mCandidateBarcode:Lcom/google/mlkit/vision/barcode/common/Barcode;

    :goto_4
    return-void
.end method

.method public final setScanAllowed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    return-void
.end method
