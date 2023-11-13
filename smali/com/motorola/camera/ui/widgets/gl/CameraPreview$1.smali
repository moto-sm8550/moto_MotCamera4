.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->loadTextures()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 6

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public final processPreview(Landroid/media/Image;Z[JZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_10

    .line 2
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 3
    sget-boolean v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v7, :cond_0

    .line 4
    sget v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 5
    sget v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v7, v8, :cond_0

    .line 6
    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const-string v7, "CameraPreview"

    const-string v8, "processPreviewImage start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Input%03d_ts-%d.yuv"

    new-array v9, v5, [Ljava/lang/Object;

    .line 8
    sget v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    .line 10
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 11
    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    .line 12
    invoke-static {v1, v8, v7}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    if-nez p4, :cond_b

    .line 13
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 14
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v7, Landroid/graphics/Rect;

    .line 16
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 17
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 19
    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v9

    .line 20
    iget-object v9, v9, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz v9, :cond_5

    .line 21
    monitor-enter v9

    .line 22
    :try_start_0
    iget-object v10, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    if-eqz v10, :cond_4

    iget-object v10, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_2

    .line 23
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 24
    iget-wide v10, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    .line 25
    iget-wide v12, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    iget v5, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v5, v4

    int-to-long v4, v5

    mul-long/2addr v12, v4

    add-long/2addr v12, v10

    cmp-long v4, v14, v12

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 26
    :goto_0
    iget-boolean v5, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 27
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 28
    invoke-static {v6}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v5

    const/4 v10, 0x1

    .line 29
    iput-boolean v10, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    .line 30
    sget-object v11, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    aget-object v11, v11, v6

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v12

    aget-object v12, v12, v10

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    const/4 v13, 0x2

    aget-object v10, v10, v13

    .line 34
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v16

    mul-int v13, v13, v16

    .line 35
    invoke-static {v11, v12, v10, v13}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v12

    .line 38
    invoke-static {v10, v11, v12, v5}, Lcom/google/mlkit/vision/common/InputImage;->fromByteArray([BIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v5

    .line 39
    iget-object v10, v9, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    invoke-virtual {v10, v5}, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;

    move-object v10, v13

    move-object v11, v9

    move/from16 v17, v3

    move-object v6, v12

    move-object v3, v13

    move-wide v12, v14

    move-object/from16 p4, v7

    move/from16 v18, v8

    move-wide v7, v14

    move v14, v4

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;JILcom/google/mlkit/vision/common/InputImage;)V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/zzw;

    sget-object v3, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    .line 40
    invoke-virtual {v6, v3}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/zzw;

    new-instance v3, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;

    invoke-direct {v3, v9, v7, v8}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V

    .line 41
    invoke-virtual {v6, v3}, Lcom/google/android/gms/tasks/zzw;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/zzw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    move/from16 v17, v3

    move-object/from16 p4, v7

    move/from16 v18, v8

    .line 42
    :goto_1
    monitor-exit v9

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v17, v3

    move-object/from16 p4, v7

    move/from16 v18, v8

    .line 43
    monitor-exit v9

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_5
    move/from16 v17, v3

    move-object/from16 p4, v7

    move/from16 v18, v8

    .line 44
    :goto_3
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFilterSupport:Z

    if-eqz v3, :cond_9

    .line 45
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 46
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    .line 47
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-boolean v4, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-eqz v4, :cond_9

    .line 49
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 50
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    .line 51
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 52
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 54
    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 55
    invoke-static {v0, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [Ljava/lang/String;

    .line 56
    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 57
    invoke-static {v0, v5}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 58
    sget-object v7, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 59
    invoke-static {v0, v7}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 60
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 61
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v9, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->displayRotation:I

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 63
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 64
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 65
    aget v12, v5, v11

    .line 66
    aget v0, v0, v11

    move v5, v7

    move-object v7, v4

    move v11, v12

    move v12, v0

    .line 67
    invoke-static/range {v5 .. v12}, Lcom/motorola/camera/meishe/MeisheEffects;->configureThumbnails(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)Ljava/util/List;

    .line 68
    :cond_6
    iget-boolean v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    if-eqz v0, :cond_7

    .line 69
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 70
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    invoke-static {v1, v5, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)Z

    .line 74
    :cond_8
    :goto_4
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_9
    if-eqz p2, :cond_a

    .line 75
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_5
    move-object/from16 v7, p4

    move/from16 v3, v18

    .line 76
    invoke-static {v1, v0, v3, v7, v2}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v0

    move v10, v0

    goto :goto_6

    :cond_b
    move/from16 v17, v3

    const/4 v10, 0x1

    .line 77
    :goto_6
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v0, :cond_d

    .line 78
    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_c

    .line 79
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const-string v0, "CameraPreview"

    const-string v3, "frame coming"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_c
    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    :cond_d
    if-eqz v17, :cond_f

    .line 81
    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v0, :cond_f

    .line 82
    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 83
    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v0, v3, :cond_f

    .line 84
    array-length v0, v2

    if-nez v0, :cond_e

    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Output%03d.yuv"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 86
    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Output%03d_ts-%d.yuv"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    sget v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aget-wide v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 91
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_7
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    .line 93
    invoke-static {v1, v2, v0}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    .line 94
    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    add-int/2addr v0, v5

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    .line 95
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const-string v0, "CameraPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPreviewImage end with displayFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v4, v10

    goto :goto_9

    :cond_10
    move v5, v4

    .line 96
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 98
    const-class v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v2

    .line 99
    :try_start_1
    sget-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    if-eqz v0, :cond_11

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzeImage(Landroid/media/Image;)F

    move-result v0

    .line 102
    new-instance v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    invoke-direct {v1, v3, v4, v0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;-><init>(JF)V

    .line 103
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :cond_11
    monitor-exit v2

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_12
    :goto_8
    move v4, v5

    :goto_9
    return v4
.end method
