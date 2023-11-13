.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "IndicatorBubbleSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndicatorBubbleSeekBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndicatorBubbleSeekBar.kt\ncom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "MotCamera4-v9.0.50.15_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final hideScaleProperty:Landroid/animation/PropertyValuesHolder;

.field public static final showScaleProperty:Landroid/animation/PropertyValuesHolder;


# instance fields
.field public animator:Landroid/animation/ValueAnimator;

.field public bubble:Landroid/graphics/drawable/Drawable;

.field public bubbleBottomPadding:F

.field public bubbleLeftPadding:F

.field public final hideIndicatorRunnable:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

.field public indicatorScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "scale"

    .line 2
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->showScaleProperty:Landroid/animation/PropertyValuesHolder;

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_1

    .line 4
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideScaleProperty:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0403f0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideIndicatorRunnable:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/motorola/camera/R$styleable;->IndicatorBubbleSeekBar:[I

    invoke-virtual {v0, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 6
    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 7
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubble:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 10
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubbleLeftPadding:F

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :cond_2
    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubbleBottomPadding:F

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final drawIndicatorBubble(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "thumb.bounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 5
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubbleBottomPadding:F

    sub-float/2addr v4, v5

    int-to-float v3, v3

    sub-float v3, v4, v3

    .line 6
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->bubbleLeftPadding:F

    add-float/2addr v1, v5

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 7
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v1, v1

    float-to-int v3, v3

    float-to-int v2, v2

    float-to-int v6, v4

    invoke-direct {v5, v1, v3, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->indicatorScale:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v2, p0, p0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 11
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->drawIndicatorBubble(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideIndicatorRunnable:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->indicatorScale:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->showScaleProperty:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/IndicatorBubbleSeekBar;->hideIndicatorRunnable:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return v0
.end method
