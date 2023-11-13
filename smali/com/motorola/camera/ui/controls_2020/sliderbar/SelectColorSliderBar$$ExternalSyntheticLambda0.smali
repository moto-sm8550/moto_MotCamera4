.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetPreview()V

    .line 10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    .line 11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    .line 12
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    add-float/2addr v6, v4

    .line 14
    invoke-direct {p2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 15
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 16
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iput-boolean v3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p1

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->updateIconsVisibility()V

    .line 23
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SPOT_COLOR_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit p1

    throw p0

    :cond_2
    :goto_1
    const/4 v4, 0x2

    if-nez p2, :cond_3

    goto/16 :goto_6

    .line 25
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 26
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 27
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownX:F

    sub-float/2addr p2, v4

    .line 28
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickerTouchDownY:F

    sub-float/2addr v4, v5

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, p2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p2, v4

    .line 31
    new-instance v4, Landroid/graphics/RectF;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p2

    .line 33
    invoke-direct {v4, v5, p2, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 35
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    iget-object p2, p2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 37
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p2, 0x5

    int-to-float p2, p2

    .line 38
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v5

    .line 39
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    .line 40
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 41
    invoke-direct {v5, v6, v7, v8, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 42
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget p2, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 43
    iget p1, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p2

    goto :goto_2

    .line 44
    :cond_4
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    iget p1, v4, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_5

    .line 45
    iget p1, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p2

    :goto_2
    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    goto :goto_3

    .line 46
    :cond_5
    iget p1, v4, Landroid/graphics/RectF;->left:F

    .line 47
    :goto_3
    iget p2, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    sub-float/2addr p2, v6

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v6

    if-lez p2, :cond_6

    .line 48
    iget p2, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    goto :goto_4

    .line 49
    :cond_6
    iget p2, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    add-float/2addr v6, p2

    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v6, p2

    if-gez p2, :cond_7

    .line 50
    iget p2, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    :goto_4
    div-float/2addr v5, v1

    sub-float/2addr p2, v5

    goto :goto_5

    .line 51
    :cond_7
    iget p2, v4, Landroid/graphics/RectF;->top:F

    .line 52
    :goto_5
    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 53
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 54
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 55
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    :cond_8
    :goto_6
    if-nez p2, :cond_9

    goto :goto_8

    .line 57
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_a

    .line 58
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    invoke-direct {p2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 59
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    .line 62
    monitor-enter p1

    .line 63
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->startHideRingAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    monitor-exit p1

    .line 65
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    .line 66
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_7
    move v2, v3

    goto :goto_9

    :catchall_1
    move-exception p0

    .line 67
    monitor-exit p1

    throw p0

    .line 68
    :cond_a
    :goto_8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_9
    return v2
.end method
