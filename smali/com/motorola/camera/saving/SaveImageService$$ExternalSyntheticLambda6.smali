.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateShow()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggleState(ZZ)V

    return-void

    .line 3
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string/jumbo v0, "this$0"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailChangeController:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->refreshing:Z

    if-ne v2, v3, :cond_0

    move v4, v3

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_PHOTO:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->launchGallery(Lcom/motorola/camera/CameraData;)V

    :goto_0
    return-void

    .line 11
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    const-string/jumbo v0, "this$0"

    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    .line 14
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    const-string/jumbo v0, "this$0"

    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    return-void

    .line 17
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    move-result-object v1

    .line 20
    iget-object v5, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    if-eqz v5, :cond_3

    .line 21
    iget-wide v5, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object v7, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    .line 22
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    iget-wide v8, v7, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    sub-long/2addr v5, v8

    .line 24
    iget-object v7, p0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;

    .line 25
    iget v8, v7, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mPicSize:I

    .line 26
    iget v9, v7, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mNumPics:I

    mul-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_3

    .line 27
    iget-object v5, v7, Lcom/motorola/camera/saving/SaveImageService$MemoryAvailableListener;->mListener:Ljava/lang/ref/WeakReference;

    .line 28
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/MemoryListener;

    if-eqz v5, :cond_3

    .line 29
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    new-instance v7, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v7

    throw p0

    .line 32
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addProcessingImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    goto/16 :goto_15

    .line 35
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 36
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 37
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 38
    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 39
    iget-boolean v9, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    if-eqz v9, :cond_5

    goto/16 :goto_15

    .line 40
    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 41
    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    .line 42
    iget-object v9, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v9, :cond_8

    const/4 v10, -0x1

    const-string v11, "ExposureMode"

    .line 43
    invoke-virtual {v9, v11, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    const-string v10, "Orientation"

    .line 44
    invoke-virtual {v9, v10, v3}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    .line 45
    invoke-static {v10}, Lcom/motorola/camera/utility/ExifUtility;->getOrientationFromExif(I)I

    move-result v10

    iput v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    .line 46
    sget-object v10, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v11, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 47
    iget-object v10, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v11, "PANO_IMAGE_WIDTH"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    .line 48
    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v7, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    goto :goto_2

    :cond_7
    const-string v7, "ImageWidth"

    .line 49
    invoke-virtual {v9, v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const-string v7, "ImageLength"

    .line 50
    invoke-virtual {v9, v7, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    .line 51
    :goto_2
    :try_start_3
    sget-object v7, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ALTM_ATTEMPTED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 52
    invoke-virtual {v9, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    :catch_0
    :cond_8
    :goto_3
    iget-object v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 55
    iget-object v9, v7, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 56
    check-cast v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 57
    iget-object v10, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 58
    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 59
    iget-object v11, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 60
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v10}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->hasSuffix()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v10, v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_9
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;

    .line 63
    iget v10, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    if-ne v10, v3, :cond_a

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 64
    :cond_a
    iget v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I

    if-ne v2, v3, :cond_b

    invoke-virtual {v11, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 65
    :cond_b
    iget v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 66
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode(I)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v10, 0x6

    if-ne v2, v10, :cond_c

    move v2, v3

    goto :goto_4

    :cond_c
    move v2, v4

    :goto_4
    if-eqz v2, :cond_d

    goto :goto_5

    :cond_d
    move v2, v4

    goto :goto_6

    :cond_e
    :goto_5
    move v2, v3

    :goto_6
    const/high16 v10, 0x20000

    if-eqz v2, :cond_12

    .line 67
    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 68
    :cond_f
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v11, v10}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 69
    :cond_10
    iget-boolean v2, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v2, :cond_11

    const/16 v2, 0x100

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_7

    :cond_11
    const/16 v2, 0x200

    .line 70
    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 71
    :cond_12
    :goto_7
    iget v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x2000000

    .line 72
    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 73
    :cond_13
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v10, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v2, v10, :cond_15

    .line 74
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_14

    move v10, v3

    goto :goto_8

    :cond_14
    move v10, v4

    .line 75
    :goto_8
    invoke-static {v2, v10}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_15
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "ALTERNATE_SHOT"

    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 77
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "UUID"

    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "alternate_shot_index_"

    .line 79
    invoke-static {v13}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 80
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_16

    move v13, v3

    goto :goto_9

    :cond_16
    move v13, v4

    .line 81
    :goto_9
    invoke-static {v10, v13}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 83
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 84
    :cond_17
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 85
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 86
    :cond_18
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 87
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 88
    :cond_19
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 89
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 90
    :cond_1a
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 91
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1b
    :goto_a
    iget-object v7, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    .line 93
    invoke-virtual {v11}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v2, v13, v14}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    iput-object v10, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$AlternateShotData;

    .line 95
    :cond_1c
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 96
    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    goto :goto_b

    .line 97
    :cond_1d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 98
    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    .line 99
    :cond_1e
    :goto_b
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_24

    .line 100
    iget-object v2, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    .line 101
    iget-object v7, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v7, :cond_23

    .line 102
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 103
    sget-object v7, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_BSSCOUNT_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v13, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v7, v10, v13}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1f

    .line 104
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_1f

    const/high16 v7, 0x20000

    .line 105
    invoke-virtual {v11, v7}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    .line 106
    :cond_1f
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v13, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v13, :cond_20

    .line 107
    invoke-virtual {v13, v7, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    goto :goto_c

    :cond_20
    const/4 v7, 0x0

    .line 108
    :goto_c
    sget-object v10, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v10, v7}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 109
    iget-object v10, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 110
    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v2, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v10, v9, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_21

    const/16 v9, 0xff

    .line 111
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v9, v2, :cond_21

    move v2, v3

    goto :goto_d

    :cond_21
    move v2, v4

    :goto_d
    if-nez v7, :cond_22

    if-eqz v2, :cond_24

    :cond_22
    const/high16 v2, 0x20000

    .line 112
    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_e

    :cond_23
    const-string v2, "appendSuffix, ignore MFNR check. mResult is null for "

    .line 113
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    iget-object v7, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SaveImageService"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_24
    :goto_e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 117
    invoke-virtual {v11, v2}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 118
    :cond_25
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 119
    new-instance v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;-><init>()V

    .line 120
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 121
    iget v7, v7, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v7, :cond_26

    move v7, v3

    goto :goto_f

    :cond_26
    move v7, v4

    .line 122
    :goto_f
    sput-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    .line 123
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v7, :cond_27

    .line 124
    sput-boolean v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    .line 125
    sput-boolean v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    .line 126
    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 127
    :cond_27
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    if-nez v7, :cond_28

    .line 128
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v7, :cond_29

    .line 129
    :cond_28
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    if-nez v7, :cond_2a

    .line 130
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v7, :cond_2a

    .line 131
    :cond_29
    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 132
    sget-boolean v7, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v7, :cond_2b

    .line 133
    iget-object v7, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v7, :cond_2b

    .line 134
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;

    invoke-direct {v10, v2, v7}, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;-><init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "calibration"

    .line 135
    invoke-virtual {v9, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_10

    .line 137
    :cond_2a
    sput-boolean v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    .line 138
    :cond_2b
    :goto_10
    :try_start_4
    iget-boolean v2, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    if-nez v2, :cond_2c

    iget-boolean v7, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    if-eqz v7, :cond_2d

    .line 139
    :cond_2c
    iget-boolean v7, v8, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    invoke-virtual {p0, v1, v2, v7}, Lcom/motorola/camera/saving/SaveImageService;->addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V

    .line 140
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    .line 141
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 142
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 143
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    .line 144
    invoke-interface {v2, v1}, Lcom/motorola/camera/saving/SaveListener;->onReviewSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_11

    .line 145
    :cond_2e
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    .line 146
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eq p0, v1, :cond_2f

    .line 147
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 148
    iget-object p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "SAVE_TIME"

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 150
    invoke-virtual {p0, v1, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 151
    :cond_2f
    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    .line 152
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne p0, v1, :cond_33

    .line 153
    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result p0

    if-nez p0, :cond_33

    iget-boolean p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    if-eqz p0, :cond_33

    .line 154
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz p0, :cond_31

    .line 155
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-nez v1, :cond_30

    goto :goto_12

    .line 156
    :cond_30
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 157
    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 158
    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v1

    if-eqz p0, :cond_32

    if-eqz v1, :cond_32

    goto :goto_13

    :cond_31
    :goto_12
    const-string p0, "SaveImageService"

    const-string v1, "Couldn\'t check if was the default alternate shot."

    .line 159
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move v3, v4

    :goto_13
    if-nez v3, :cond_33

    .line 160
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 161
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 162
    :cond_33
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 163
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq p0, v1, :cond_34

    .line 164
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq p0, v1, :cond_34

    .line 165
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v1, :cond_35

    .line 166
    :cond_34
    iget-object p0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 167
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_35

    .line 168
    iget-object p0, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v0, "ON_UP"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-eqz p0, :cond_35

    .line 169
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 170
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 172
    monitor-enter p0

    .line 173
    :try_start_5
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    monitor-exit p0

    goto :goto_14

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_35
    :goto_14
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_37

    .line 176
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 177
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    const-string v0, "End - addImage"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    goto :goto_15

    :catch_1
    move-exception p0

    .line 178
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    .line 179
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 180
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    .line 181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error_message"

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "task_id"

    .line 183
    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string/jumbo p0, "task_id"

    const-string/jumbo v3, "task_id"

    .line 184
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 185
    invoke-virtual {v2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    :cond_36
    new-instance p0, Lcom/motorola/camera/CameraData;

    iget-wide v5, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v6, v0, v2}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p0, v4}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    :cond_37
    :goto_15
    return-void

    :catchall_2
    move-exception p0

    .line 187
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 188
    :goto_16
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 189
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    if-eqz p0, :cond_38

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
