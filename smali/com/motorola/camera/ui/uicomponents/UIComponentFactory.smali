.class public final Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;
.super Ljava/lang/Object;
.source "UIComponentFactory.java"


# direct methods
.method public static getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;ILandroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Lcom/motorola/camera/EventListener;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/ui/uicomponents/UIComponent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_f

    aget-object v3, p0, v2

    .line 3
    iget v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:I

    if-eq v4, p1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v5, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    invoke-direct {v3, p3}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;-><init>(Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    .line 8
    :cond_3
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    invoke-direct {v3, p3}, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;-><init>(Lcom/motorola/camera/EventListener;)V

    :goto_2
    move-object v6, v3

    goto/16 :goto_3

    .line 9
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 10
    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 11
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 13
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 14
    :pswitch_3
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 15
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_FOCUS_TRACKING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 16
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 17
    :pswitch_4
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-nez v3, :cond_5

    goto/16 :goto_3

    .line 18
    :cond_5
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 19
    :pswitch_5
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/widgets/gl/PanoTutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 20
    :pswitch_6
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 22
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 24
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 26
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 27
    :pswitch_a
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 28
    :pswitch_b
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 29
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 30
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 31
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 32
    :pswitch_c
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 33
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 34
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 35
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 37
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_d

    .line 38
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 39
    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 40
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 41
    :pswitch_f
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 43
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 44
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 45
    :cond_6
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 46
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/PreviewSwapOldComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 47
    :pswitch_10
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 48
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 49
    :pswitch_11
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_NIGHT:Z

    if-nez v3, :cond_7

    goto/16 :goto_3

    .line 50
    :cond_7
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 51
    :pswitch_12
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    if-nez v3, :cond_8

    goto/16 :goto_3

    .line 52
    :cond_8
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 53
    :pswitch_13
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 54
    :pswitch_14
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    .line 55
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 56
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 57
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 58
    :pswitch_15
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 59
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 60
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 61
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_3

    .line 62
    :pswitch_16
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 63
    :pswitch_17
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 64
    :pswitch_18
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 65
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 66
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 67
    :pswitch_19
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 68
    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 69
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 70
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 71
    :pswitch_1a
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 72
    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 73
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 74
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 75
    :pswitch_1b
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 76
    :pswitch_1c
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    if-nez v3, :cond_9

    goto/16 :goto_3

    .line 77
    :cond_9
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 78
    :pswitch_1d
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 79
    :pswitch_1e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_d

    .line 80
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 81
    :cond_a
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 82
    :pswitch_1f
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 83
    :pswitch_20
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 84
    :pswitch_21
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 85
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 86
    :pswitch_22
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 87
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 88
    :pswitch_23
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 89
    :pswitch_24
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getHasCutout()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 90
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 91
    :pswitch_25
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v3, :cond_d

    .line 92
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 93
    :pswitch_26
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 94
    :pswitch_27
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-nez v3, :cond_b

    goto/16 :goto_3

    .line 95
    :cond_b
    new-instance v6, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 96
    :pswitch_28
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 97
    :pswitch_29
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 98
    :pswitch_2a
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 99
    :pswitch_2b
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 100
    :pswitch_2c
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_3

    .line 101
    :cond_c
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 102
    :pswitch_2d
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_3

    .line 103
    :pswitch_2e
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 104
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-nez v3, :cond_d

    .line 105
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 106
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/oldui/CaptureBarDualCaptureControlOldComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto :goto_3

    .line 107
    :pswitch_2f
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 109
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    .line 110
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    move-result-object v3

    invoke-direct {v6, v5, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto :goto_3

    .line 111
    :pswitch_30
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 112
    :pswitch_31
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 113
    :pswitch_32
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 114
    :pswitch_33
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 115
    :pswitch_34
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/DialogPopup;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 116
    :pswitch_35
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 117
    :pswitch_36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 118
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_3

    .line 119
    :pswitch_37
    new-instance v6, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {v6, v5, p3}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    :cond_d
    :goto_3
    if-eqz v6, :cond_e

    .line 120
    invoke-interface {v6}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->init()V

    .line 121
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method
