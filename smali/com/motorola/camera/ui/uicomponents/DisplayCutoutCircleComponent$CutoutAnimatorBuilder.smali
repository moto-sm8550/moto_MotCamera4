.class public final Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;
.super Ljava/lang/Object;
.source "DisplayCutoutCircleComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CutoutAnimatorBuilder"
.end annotation


# instance fields
.field public final circleOne:Landroid/widget/ImageView;

.field public final circleTwo:Landroid/widget/ImageView;

.field public final shape:Landroid/graphics/drawable/GradientDrawable;

.field public final shrinkScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a015c

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "parentView.findViewById(\u2026isplay_cutout_circle_one)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleOne:Landroid/widget/ImageView;

    const v0, 0x7f0a015f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "parentView.findViewById(\u2026isplay_cutout_circle_two)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->circleTwo:Landroid/widget/ImageView;

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    .line 5
    sget v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->SHRUNKEN_SIZE:F

    .line 6
    sget v1, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    div-float/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shrinkScale:F

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 10
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 11
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISPLAY_CUTOUT_PANTONE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800da

    goto :goto_0

    :cond_0
    const v0, 0x7f0800d9

    .line 12
    :goto_0
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 15
    sget v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->GROWN_SIZE:F

    float-to-int v0, v0

    .line 16
    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shape:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final circleAnimatorSet(Landroid/widget/ImageView;Z)Landroid/animation/AnimatorSet;
    .locals 8

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shrinkScale:F

    :goto_0
    if-nez p2, :cond_1

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->shrinkScale:F

    .line 4
    :cond_1
    sget-object v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    if-nez p2, :cond_2

    .line 5
    sget v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    goto :goto_1

    .line 6
    :cond_2
    sget v3, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    :goto_1
    if-nez p2, :cond_3

    .line 7
    sget-object p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    .line 8
    sget p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->BRIGHT_ALPHA:F

    goto :goto_2

    .line 9
    :cond_3
    sget-object p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->Companion:Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$Companion;

    .line 10
    sget p2, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->DARK_ALPHA:F

    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    .line 11
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const-string v7, "SCALE_X"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6, v2, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 12
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const-string v7, "SCALE_Y"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6, v2, v1}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 13
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const-string v5, "ALPHA"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$CutoutAnimatorBuilder;->floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v4, v1

    .line 14
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public final floatBounceAnimator(Landroid/widget/ImageView;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 1
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x5dc

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-object p1
.end method
