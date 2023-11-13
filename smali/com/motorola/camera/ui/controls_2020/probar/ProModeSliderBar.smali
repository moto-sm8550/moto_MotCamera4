.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "ProModeSliderBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "Lcom/motorola/camera/settings/SettingsManager$Key;",
        "key",
        "",
        "setCurrentKey",
        "",
        "orientation",
        "setOrientation",
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


# instance fields
.field public mAnimationEndTime:J

.field public mAnimationStartTime:J

.field public mBoundsRect:Landroid/graphics/Rect;

.field public mClockwise:Z

.field public mContext:Landroid/content/Context;

.field public mCurrentDegree:I

.field public mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "*>;"
        }
    .end annotation
.end field

.field public mDefaultValue:Ljava/lang/String;

.field public final mExpStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mISOStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsRtl:Z

.field public mMaxValue:Ljava/lang/String;

.field public mMeasuredWidth:I

.field public final mMfBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mMinValue:Ljava/lang/String;

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mSeekLength:F

.field public final mShutterStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStartDegree:I

.field public mStartGap:F

.field public mTargetDegree:I

.field public final mTextPaint:Landroid/text/TextPaint;

.field public final mWhiteBalanceBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final marginTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 3
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x42b40000    # 90.0f

    .line 4
    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMfBitmaps:Ljava/util/ArrayList;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mISOStrings:Ljava/util/ArrayList;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mShutterStrings:Ljava/util/ArrayList;

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mWhiteBalanceBitmaps:Ljava/util/ArrayList;

    const/high16 v7, 0x41900000    # 18.0f

    .line 11
    iput v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const v7, 0x7f110305

    .line 14
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    const v7, 0x7f11030d

    .line 15
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMinValue:Ljava/lang/String;

    const v7, 0x7f11030a

    .line 16
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMaxValue:Ljava/lang/String;

    .line 17
    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 21
    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v8, 0x7f060030

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v0, v7

    .line 25
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/camera/R$styleable;->ProModeSliderBar:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0801cb

    .line 33
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 34
    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v0, 0x7f0802bc

    .line 36
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x2

    .line 37
    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 39
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0802c0

    .line 41
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 42
    invoke-virtual {v6, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 43
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0802bf

    .line 44
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 45
    invoke-virtual {v6, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x3

    .line 46
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0802c1

    .line 47
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    invoke-virtual {v6, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x4

    .line 49
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0802be

    .line 50
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    invoke-virtual {v6, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v5, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMinValue:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMaxValue:Ljava/lang/String;

    invoke-virtual {v5, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v3, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMinValue:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMaxValue:Ljava/lang/String;

    invoke-virtual {v3, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 61
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 62
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 63
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 64
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 65
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    .line 66
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Landroidx/preference/R$color;->roundToInt(F)I

    move-result v1

    .line 67
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float/2addr p2, v0

    invoke-static {p2}, Landroidx/preference/R$color;->roundToInt(F)I

    move-result p2

    sub-int/2addr p2, v1

    if-ltz p2, :cond_4

    move v0, v7

    .line 68
    :goto_0
    div-int/lit8 v2, p2, 0x2

    const-string v3, "%+d"

    const-string v4, "format(format, *args)"

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    new-array v5, p1, [Ljava/lang/Object;

    add-int v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    new-array v3, p1, [Ljava/lang/Object;

    add-int v5, v1, v0

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%1.1f"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    new-array v5, p1, [Ljava/lang/Object;

    add-int v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    if-eq v0, p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final drawMarks(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMfBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 4
    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mWhiteBalanceBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 6
    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mShutterStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 7
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mISOStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 8
    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    .line 10
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v1

    .line 11
    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    .line 13
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_1

    .line 14
    :cond_6
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    move v0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    if-nez v2, :cond_1

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    invoke-static {v5, v6}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    float-to-int v6, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v7, v6, v4

    sub-int v8, v5, v4

    add-int/2addr v6, v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v7, v8, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const-string v6, "drawable.bounds"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 11
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    if-eqz v6, :cond_3

    if-nez v7, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    int-to-float v4, v4

    neg-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v4, v0, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 14
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 16
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v3, :cond_5

    if-nez v2, :cond_4

    .line 17
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_2
    sub-float/2addr v0, v3

    goto :goto_4

    :cond_5
    if-nez v2, :cond_6

    .line 18
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_3
    add-float/2addr v0, v3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    if-eq v0, v1, :cond_4

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 7
    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 8
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartDegree:I

    .line 9
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mClockwise:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    const/16 v2, 0x10e

    const/16 v3, 0x3e8

    .line 10
    invoke-static {v0, v2, v3, v1}, Lan$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v0

    if-ltz v0, :cond_2

    .line 11
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_2
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    .line 12
    :goto_1
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 14
    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    .line 15
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    int-to-float v0, v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    invoke-static {v1, v2}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, p3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    invoke-static {v0, v2}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTextPaint:Landroid/text/TextPaint;

    .line 19
    invoke-virtual {p1, p2, p3, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final drawThumb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0603d1

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v1, 0x7f060321

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final drawTrack(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0802bd

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/high16 v0, 0x40b00000    # 5.5f

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 9
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v6, v5

    div-float/2addr v0, v6

    sub-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    .line 11
    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    const v4, 0x7f0603d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    const v4, 0x7f060321

    const/16 v6, 0x32

    if-le v3, v6, :cond_4

    .line 15
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    sub-int/2addr v8, v6

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    float-to-int v3, v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v7, v7

    sub-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v0

    float-to-int v9, v9

    .line 19
    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v7, v7

    sub-float/2addr v7, v0

    float-to-int v7, v7

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    float-to-int v8, v9

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    add-float/2addr v9, v0

    float-to-int v9, v9

    .line 23
    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 26
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 27
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v3, :cond_5

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    int-to-float v7, v7

    sub-float/2addr v7, v0

    float-to-int v7, v7

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    mul-float/2addr v9, v6

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v9, v6

    add-float/2addr v9, v8

    float-to-int v6, v9

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v5, v8

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 31
    invoke-virtual {v1, v3, v7, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 32
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float/2addr v7, v6

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    float-to-int v3, v3

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v5, v8

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 35
    invoke-virtual {v1, v3, v6, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 38
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 40
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    .line 5
    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 6
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_1
    sub-float/2addr v0, v3

    goto :goto_3

    :cond_2
    if-nez v2, :cond_3

    .line 7
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    :goto_2
    add-float/2addr v0, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawThumb()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMarks(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMeasuredWidth:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingRight:I

    .line 5
    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMeasuredWidth:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    const/16 p1, 0x11

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    .line 7
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setCurrentKey(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 2
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    .line 4
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartDegree:I

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationStartTime:J

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 v2, 0xb4

    if-le p1, v2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mClockwise:Z

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationEndTime:J

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
