.class public final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;
.super Landroid/util/Property;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/Float;

    const-string v1, "animationFraction"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 2
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 3
    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const p2, 0x45a8c000    # 5400.0f

    mul-float/2addr p2, p0

    float-to-int p2, p2

    .line 4
    iget-object v0, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    const/high16 v1, 0x44be0000    # 1520.0f

    mul-float/2addr p0, v1

    const/high16 v1, -0x3e600000    # -20.0f

    add-float/2addr v1, p0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 5
    aput p0, v0, v1

    move p0, v2

    :goto_0
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    aget v0, v0, p0

    const/16 v3, 0x29b

    sub-int v0, p2, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 7
    iget-object v4, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v5, v4, v1

    iget-object v6, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v0}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v6, 0x437a0000    # 250.0f

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    aput v0, v4, v1

    .line 8
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    aget v0, v0, p0

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 9
    iget-object v3, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v4, v3, v2

    iget-object v5, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v5, v0}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v4

    aput v0, v3, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v3, p0, v2

    aget v4, p0, v1

    aget v5, p0, v2

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    aput v4, p0, v2

    .line 11
    aget v3, p0, v2

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    aput v3, p0, v2

    .line 12
    aget v3, p0, v1

    div-float/2addr v3, v4

    aput v3, p0, v1

    move p0, v2

    :goto_1
    if-ge p0, v0, :cond_2

    .line 13
    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    aget v1, v1, p0

    const/16 v3, 0x14d

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 14
    iget p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr p0, p2

    iget-object p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object p2, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, p2

    rem-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    .line 15
    array-length v3, p2

    rem-int/2addr v0, v3

    .line 16
    aget p0, p2, p0

    iget-object p2, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 17
    iget p2, p2, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 18
    invoke-static {p0, p2}, Landroidx/preference/R$string;->compositeARGBWithAlpha(II)I

    move-result p0

    .line 19
    iget-object p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object p2, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget p2, p2, v0

    iget-object v0, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 20
    iget v0, v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 21
    invoke-static {p2, v0}, Landroidx/preference/R$string;->compositeARGBWithAlpha(II)I

    move-result p2

    .line 22
    iget-object v0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    .line 23
    iget-object v1, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->segmentColors:[I

    .line 24
    sget-object v3, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v0, p0, p2}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 25
    :cond_2
    :goto_2
    iget-object p0, p1, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
