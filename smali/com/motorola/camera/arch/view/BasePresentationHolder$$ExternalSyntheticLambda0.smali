.class public final synthetic Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;
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

    iput p2, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    const/4 v1, 0x2

    .line 1
    iput v1, v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->animateModeSwitch()V

    return-void

    .line 4
    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent$Companion;

    .line 5
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->getRecordingIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    .line 7
    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 8
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateControlBar$default(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;)V

    return-void

    .line 10
    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$Companion;

    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->setEnabled(Z)V

    return-void

    .line 13
    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    .line 14
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    if-nez v0, :cond_8

    const-string v4, "mime"

    .line 16
    :try_start_0
    iget-object v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 17
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    move-object v0, v3

    :goto_0
    iput-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v0, Landroid/location/Location;

    .line 23
    iget-object v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float v0, v7

    invoke-virtual {v5, v6, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "setupTranscoder: failed to create MediaMuxer"

    .line 24
    invoke-virtual {v1, v5, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 25
    :try_start_5
    iget-object v6, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v6, :cond_7

    .line 26
    iget v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v7, 0x0

    .line 27
    invoke-virtual {v6, v7, v8, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 28
    iget v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    const-string v5, "extractor.getTrackFormat(videoTrack)"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 30
    iget v5, v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    .line 31
    iget v7, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    div-int v8, v5, v7

    .line 32
    new-instance v15, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    .line 33
    iget-object v5, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 34
    iget v7, v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    .line 35
    iget v9, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    .line 36
    new-instance v10, Lkotlin/ranges/LongRange;

    iget-wide v11, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    iget-wide v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    invoke-direct {v10, v11, v12, v2, v3}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 37
    new-instance v11, Lkotlin/ranges/LongRange;

    iget-wide v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    iget-wide v12, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    invoke-direct {v11, v2, v3, v12, v13}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 38
    iget-object v12, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    .line 39
    iget-object v13, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    move-object v5, v15

    .line 40
    invoke-direct/range {v5 .. v13}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;-><init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/superslowmotion/SuperSlowMotionDecoderCallback;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V

    .line 41
    new-instance v2, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 42
    invoke-virtual {v14, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const-string/jumbo v5, "video/avc"

    if-nez v3, :cond_2

    move-object v3, v5

    .line 43
    :cond_2
    :try_start_7
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    const-string v6, "createDecoderByType(mime)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 44
    :try_start_8
    invoke-virtual {v3, v14, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 45
    invoke-direct {v2, v3, v15, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    .line 46
    iput-object v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 47
    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v7, "height"

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 48
    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 49
    iput v3, v15, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    .line 50
    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    const-string/jumbo v9, "stride"

    invoke-virtual {v8, v9, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v8

    .line 51
    iget-object v9, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    .line 52
    iget v10, v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    .line 53
    iget v9, v9, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    .line 54
    invoke-static {v7, v3, v8, v10, v9}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->initFrc(IIIII)Z

    move-result v3

    .line 55
    iget-object v7, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    invoke-interface {v7}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onProcessingStarted()V

    if-eqz v3, :cond_6

    .line 56
    new-instance v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 57
    invoke-virtual {v14, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v4

    .line 58
    :goto_2
    :try_start_9
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 59
    invoke-virtual {v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->configureEncoderOutputFormat(Lcom/motorola/camera/mediacodec/MediaCodecHelper;)Landroid/media/MediaFormat;

    move-result-object v5

    const/4 v7, 0x0

    .line 60
    invoke-virtual {v4, v5, v7, v7, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 61
    :try_start_a
    new-instance v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;

    invoke-direct {v5, v1, v15}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V

    .line 62
    invoke-direct {v3, v4, v5, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    .line 63
    iput-object v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    .line 64
    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    .line 65
    iget-object v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    const/4 v2, 0x3

    .line 66
    iput v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    move v2, v0

    goto :goto_6

    .line 67
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not able to start video encoder"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 68
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "setupVideoEncoder: unable to create encoder"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 69
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not able to init lib"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move v6, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move v6, v2

    :goto_4
    const-string/jumbo v2, "setupTranscoder failed"

    .line 70
    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5
    move v2, v6

    .line 71
    :goto_6
    iput v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_8
    return-void

    .line 72
    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "$tmp0"

    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 75
    :goto_7
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    .line 76
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getFirstFrameCallback()Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 77
    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
