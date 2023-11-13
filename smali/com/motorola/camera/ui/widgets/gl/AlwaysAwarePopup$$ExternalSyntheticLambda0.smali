.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;
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

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-string/jumbo v6, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlackFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 6
    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->Companion:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateIconsVisibility()V

    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;->show()V

    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    .line 7
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    :goto_0
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->setEnabled(Z)V

    return-void

    .line 10
    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->show()V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$Companion;

    .line 11
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 14
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    const v6, 0x7f080080

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 16
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 18
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v4, :cond_6

    .line 19
    iget-object v4, v4, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_6

    .line 20
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 22
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    sub-float/2addr v7, v9

    .line 23
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float/2addr v1, v8

    .line 24
    invoke-direct {v6, v7, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 25
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 26
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070376

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v1, v4

    goto :goto_5

    :cond_6
    move-object v6, v1

    move v1, v5

    :goto_5
    cmpg-float v4, v1, v5

    if-gez v4, :cond_7

    neg-float v1, v1

    :cond_7
    move v10, v1

    .line 27
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v5

    .line 28
    iget v4, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v4, v5

    .line 29
    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v7, v5

    mul-float/2addr v1, v1

    mul-float/2addr v4, v4

    add-float/2addr v4, v1

    mul-float/2addr v7, v7

    add-float/2addr v7, v4

    float-to-double v4, v7

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v1, v4

    .line 31
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x0

    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v13, v5

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 32
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v5, v5

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v11, v4

    move/from16 v17, v5

    .line 33
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    float-to-long v5, v1

    .line 34
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 35
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 36
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v7, v1

    move v8, v10

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 37
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 39
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 40
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 42
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    return-void

    .line 44
    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 45
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXIT_SMART_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 46
    :goto_6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;

    .line 47
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 48
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->teardownMotionPhotos()V

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
