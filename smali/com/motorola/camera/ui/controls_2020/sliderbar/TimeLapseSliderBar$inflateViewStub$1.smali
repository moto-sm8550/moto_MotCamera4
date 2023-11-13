.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;
.super Ljava/lang/Object;
.source "TimeLapseSliderBar.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->inflateViewStub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SettingsManager.TIMELAPSE_VALUES[progress]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 4
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 6
    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->getTimeLapseValueText(F)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 10
    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->getTimeLapseValueText(F)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateTextPosition()V

    .line 15
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, p2, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 23
    fill-array-data p1, :array_0

    const-string v0, "scale"

    invoke-static {v0, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 25
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, p2, p3

    .line 26
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    .line 29
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->hideValueTextRunnable:Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->indicatorValueText:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_0

    const-string v2, "scale"

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar$inflateViewStub$1;->this$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->hideValueTextRunnable:Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
