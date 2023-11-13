.class public final synthetic Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$Companion;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;

    if-eqz p0, :cond_4

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    .line 4
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 7
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 11
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 12
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v2, v3

    .line 13
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 14
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const/16 v1, 0x30

    const/4 v2, 0x0

    float-to-int v0, v0

    const v3, 0x7f060351

    .line 16
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 17
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentText:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    const v5, 0x3f8ccccd

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 20
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->hide()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    .line 22
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mProPanel:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 27
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->show()V

    return-void

    .line 29
    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 30
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->hideForModesMenu()V

    return-void

    .line 32
    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    .line 33
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->inflateViewStub()V

    .line 35
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->lifecycleOwner:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;

    .line 36
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$lifecycleOwner$1;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 37
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    .line 40
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const v1, 0x7f0a006f

    .line 41
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    .line 43
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    .line 44
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$1;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$1;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroid/widget/TextView;

    .line 45
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    const v2, 0x7f0a01df

    .line 46
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 47
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    .line 48
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$2;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listenPair(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroid/widget/TextView;

    const v1, 0x7f0a01b9

    .line 49
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 50
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    .line 51
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$3;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$3;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a045a

    .line 52
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 53
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    .line 54
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$4;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$4;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0307

    .line 55
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 56
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    .line 57
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$5;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$5;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a01d4

    .line 58
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 59
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    .line 60
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$6;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$6;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a01d3

    .line 61
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    .line 63
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$7;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$7;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a024e

    .line 64
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    .line 66
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$8;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$8;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a025e

    .line 67
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 68
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    .line 69
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$9;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$9;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a025f

    .line 70
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 71
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    .line 72
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$10;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$10;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0088

    .line 73
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 74
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    .line 75
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$11;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$11;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0350

    .line 76
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 77
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    .line 78
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$12;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$12;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0089

    .line 79
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    .line 81
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$13;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$13;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a031f

    .line 82
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    .line 84
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$14;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$14;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a03ef

    .line 85
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 86
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    .line 87
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0060

    .line 88
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 89
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    .line 90
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$16;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$16;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0351

    .line 91
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 92
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    .line 93
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$17;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$17;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a00b3

    .line 94
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 95
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    .line 96
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$18;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$18;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0054

    .line 97
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 98
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    .line 99
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$19;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$19;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a005f

    .line 100
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 101
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    .line 102
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$20;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$20;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 103
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;

    .line 104
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    .line 105
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    const v2, 0x7f0a0318

    .line 106
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 107
    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->proportionalSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 108
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$21;

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v2, 0x7f0a0432

    .line 109
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v2

    .line 110
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->uniqueSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 111
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$22;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$22;

    invoke-virtual {p0, v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0305

    .line 112
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 113
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    .line 114
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$23;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$23;

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x7f0a0075

    .line 115
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->setupTextView(I)Landroid/widget/TextView;

    move-result-object v1

    .line 116
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    .line 117
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$24;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$24;

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;->listen(Landroid/widget/TextView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 118
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    .line 119
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;->animation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_8

    .line 121
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_8
    const-string p0, "animation"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

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
