.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacePolicyLargest"
.end annotation


# instance fields
.field public mDetectedFaces:[Landroid/hardware/camera2/params/Face;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    return-void
.end method


# virtual methods
.method public final handleFaceData([Landroid/hardware/camera2/params/Face;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 2
    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 6
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_1f

    .line 7
    array-length v4, v1

    if-nez v4, :cond_3

    goto/16 :goto_13

    :cond_3
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 9
    invoke-static {}, Lcom/motorola/camera/utility/FaceUtility;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    .line 10
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 11
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomedSuperRemosaicSupported()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 14
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    div-float v9, v7, v5

    .line 17
    aget v10, v6, v4

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_4

    aget v10, v6, v8

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 18
    aget v6, v6, v4

    mul-float/2addr v5, v6

    .line 19
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x44fa0000    # 2000.0f

    div-float v6, v9, v6

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v10

    xor-int/2addr v10, v8

    const/4 v11, 0x0

    cmpl-float v12, v5, v11

    if-lez v12, :cond_5

    if-eqz v10, :cond_5

    div-float/2addr v6, v5

    div-float/2addr v9, v5

    .line 22
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda0;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-array v14, v4, [Landroid/hardware/camera2/params/Face;

    .line 24
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    .line 25
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v15, 0xa

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 26
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/Face;

    .line 27
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 28
    iget-boolean v14, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v14, :cond_12

    .line 29
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    .line 30
    array-length v3, v14

    if-lez v3, :cond_9

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    array-length v7, v13

    move v11, v4

    :goto_0
    if-ge v11, v7, :cond_7

    aget-object v15, v13, v11

    .line 33
    invoke-static {v14}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;

    invoke-direct {v4, v15}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/params/Face;)V

    invoke-interface {v8, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 34
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/16 v15, 0xa

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    new-array v7, v4, [Landroid/hardware/camera2/params/Face;

    .line 36
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x0

    .line 37
    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    if-eqz v4, :cond_b

    if-eqz v13, :cond_b

    array-length v7, v13

    if-eqz v7, :cond_b

    array-length v7, v13

    array-length v4, v4

    if-eq v7, v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v3, :cond_c

    .line 38
    array-length v7, v3

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-eqz v4, :cond_d

    move-object v3, v13

    goto :goto_7

    .line 39
    :cond_d
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 40
    iget-wide v14, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-eqz v8, :cond_10

    if-eqz v7, :cond_e

    goto :goto_6

    .line 41
    :cond_e
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 43
    iget-wide v14, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    sub-long/2addr v7, v14

    .line 44
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v7, 0x5dc

    cmp-long v3, v3, v7

    if-lez v3, :cond_f

    .line 45
    iput-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    const/4 v3, 0x0

    goto :goto_7

    .line 46
    :cond_f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    goto :goto_7

    .line 47
    :cond_10
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 48
    iput-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    :goto_7
    const/16 v4, 0x258

    if-eqz v3, :cond_11

    .line 49
    array-length v7, v3

    if-lez v7, :cond_11

    .line 50
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    .line 51
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v7, 0x1

    .line 52
    invoke-virtual {v3, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    goto :goto_8

    .line 53
    :cond_11
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v7, 0x0

    .line 54
    invoke-virtual {v3, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(ZI)V

    :cond_12
    :goto_8
    if-lez v12, :cond_13

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_9
    const/high16 v3, -0x3b860000    # -1000.0f

    div-float v4, v3, v5

    const/4 v5, 0x0

    const/16 v7, 0xa

    :goto_a
    if-ge v5, v7, :cond_1e

    .line 55
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 56
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 57
    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    .line 59
    array-length v10, v13

    if-ge v5, v10, :cond_14

    const/4 v10, 0x1

    goto :goto_b

    :cond_14
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_18

    .line 60
    aget-object v11, v13, v5

    .line 61
    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 62
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 63
    iget-boolean v15, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    if-nez v15, :cond_15

    .line 64
    array-length v15, v1

    const/4 v3, 0x1

    if-ne v15, v3, :cond_16

    .line 65
    iget-object v3, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 66
    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 68
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 69
    invoke-virtual {v12, v11}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->addFace(Landroid/hardware/camera2/params/Face;)V

    .line 70
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 72
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 73
    invoke-virtual {v3, v11}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_c

    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 75
    :cond_15
    iget-object v3, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 76
    monitor-enter v3

    .line 77
    :try_start_2
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 78
    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 79
    invoke-virtual {v12, v11}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->addFace(Landroid/hardware/camera2/params/Face;)V

    .line 80
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 82
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 83
    invoke-virtual {v3, v11}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v12

    .line 84
    :cond_16
    :goto_c
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isUwZoomBlendingCase()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 85
    :cond_17
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 86
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 87
    invoke-static {}, Lcom/motorola/camera/utility/FaceUtility;->getPreviewRectSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v11

    .line 88
    iget v14, v11, Lcom/motorola/camera/PreviewSize;->width:I

    .line 89
    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    .line 90
    iget v15, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v16, v16, v14

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    mul-float/2addr v15, v9

    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 91
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v16, v16, v11

    div-int/lit8 v16, v16, 0x2

    sub-int v1, v1, v16

    int-to-float v1, v1

    mul-float/2addr v1, v6

    move-object/from16 v16, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    sub-int v17, v17, v14

    div-int/lit8 v17, v17, 0x2

    sub-int v2, v2, v17

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v12, v3

    int-to-float v3, v12

    mul-float/2addr v3, v6

    .line 94
    invoke-virtual {v7, v15, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    invoke-virtual {v7, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 96
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v11, -0x3b860000    # -1000.0f

    invoke-direct {v1, v11, v11, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 97
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v7, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_d

    :catchall_1
    move-exception v0

    .line 98
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_18
    move-object/from16 v16, v2

    move v11, v3

    .line 99
    :goto_d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 100
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    .line 101
    monitor-enter v8

    .line 102
    :try_start_4
    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 103
    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    const/4 v2, 0x3

    iget v3, v7, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 104
    iget v3, v7, Landroid/graphics/RectF;->top:F

    const/16 v12, 0xa

    aput v3, v1, v12

    const/4 v14, 0x1

    aput v3, v1, v14

    const/4 v3, 0x4

    const/4 v15, 0x7

    .line 105
    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    aput v2, v1, v15

    aput v2, v1, v3

    const/4 v2, 0x6

    const/16 v3, 0x9

    .line 106
    iget v7, v7, Landroid/graphics/RectF;->right:F

    aput v7, v1, v3

    aput v7, v1, v2

    if-eqz v10, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_19
    const/high16 v1, 0x42480000    # 50.0f

    :goto_e
    const/4 v2, 0x0

    .line 107
    invoke-virtual {v8, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 108
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->updateTouchRect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 109
    monitor-exit v8

    .line 110
    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 111
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 112
    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v1, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_f

    :cond_1a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 114
    :goto_f
    sget v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    .line 115
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    if-eqz v10, :cond_1b

    .line 116
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$800(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v14

    goto :goto_10

    :cond_1b
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-nez v10, :cond_1c

    goto :goto_11

    .line 117
    :cond_1c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->access$800(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v14

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move v3, v11

    move v7, v12

    move-object/from16 v2, v16

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    .line 118
    monitor-exit v8

    throw v0

    :cond_1e
    return-void

    :cond_1f
    :goto_13
    const/4 v1, 0x0

    .line 119
    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->mDetectedFaces:[Landroid/hardware/camera2/params/Face;

    .line 120
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;

    .line 121
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FaceFilter;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 123
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    .line 125
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    return-void
.end method
