.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;
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

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZI)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialTip()Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$ModeTutorialTip;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_0
    return-void

    .line 4
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->access$1300(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    return-void

    .line 6
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/Camera;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string v1, "MotoCamera"

    if-eqz v0, :cond_1

    const-string v2, "check memory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 9
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 10
    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const-wide/32 v6, 0xf4240

    if-nez v5, :cond_2

    .line 11
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v3, v3, v4

    int-to-long v3, v3

    :cond_2
    mul-long/2addr v3, v6

    .line 12
    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    .line 13
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    .line 14
    invoke-static {v3}, Lcom/motorola/camera/shared/DeviceProperties;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    sput v3, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 15
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    aget v2, v3, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0

    :cond_3
    mul-int/lit16 v2, v3, 0x3e8

    .line 16
    :goto_0
    sput v2, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    if-eqz v0, :cond_4

    const-string v2, "low memory kill size = "

    .line 17
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18
    sget-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "extra free memory size (kb) = "

    .line 19
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    sget v2, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->killApps()V

    return-void

    .line 22
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 23
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v2

    .line 26
    :goto_3
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->modeChanged:Z

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 28
    :goto_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showToggle(Z)V

    goto :goto_6

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showSliderBar()V

    goto :goto_6

    .line 31
    :cond_b
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showToggle(Z)V

    .line 32
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    :cond_c
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->notifyFaceBeauty(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
