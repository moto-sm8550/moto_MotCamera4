.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    .line 2
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "android:visibility:visibility"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "android:visibility:parent"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 4
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v0, "android:visibility:screenLocation"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v0, v2, v3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 2
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_1e

    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1e

    .line 3
    :cond_0
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v5, :cond_6

    .line 4
    iget v1, v0, Landroidx/transition/Visibility;->mMode:I

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_5

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 5
    iget-object v1, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1, v10}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v1, v10}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v4, v1}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 9
    iget-boolean v1, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroidx/transition/Fade;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v3, "android:fade:transitionAlpha"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v7

    :goto_0
    cmpl-float v3, v2, v9

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v7, v2

    .line 13
    :goto_1
    invoke-virtual {v0, v1, v7, v9}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v6

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 14
    :cond_6
    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 15
    iget v5, v0, Landroidx/transition/Visibility;->mMode:I

    const/4 v11, 0x2

    and-int/2addr v5, v11

    if-eq v5, v11, :cond_7

    goto/16 :goto_e

    :cond_7
    if-nez v2, :cond_8

    goto/16 :goto_e

    .line 16
    :cond_8
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 17
    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    const v12, 0x7f0a033c

    .line 18
    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    move/from16 v18, v4

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_a
    if-eqz v3, :cond_d

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_b

    goto :goto_6

    :cond_b
    const/4 v13, 0x4

    if-ne v4, v13, :cond_c

    goto :goto_5

    :cond_c
    if-ne v5, v3, :cond_e

    :goto_5
    move v13, v10

    goto :goto_7

    :cond_d
    :goto_6
    if-eqz v3, :cond_e

    move-object v13, v3

    move v14, v10

    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    move v13, v8

    const/4 v3, 0x0

    :goto_7
    move v14, v13

    const/4 v13, 0x0

    :goto_8
    if-eqz v14, :cond_16

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_f

    move/from16 v18, v4

    move-object v13, v5

    move v8, v10

    goto/16 :goto_d

    .line 21
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Landroid/view/View;

    if-eqz v14, :cond_16

    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 23
    invoke-virtual {v0, v14, v8}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v15

    .line 24
    invoke-virtual {v0, v14, v8}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v6

    .line 25
    invoke-virtual {v0, v15, v6}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 26
    iget-boolean v6, v6, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v6, :cond_15

    .line 27
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    invoke-virtual {v14}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v14}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 29
    sget-object v13, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 30
    invoke-virtual {v5, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 31
    invoke-virtual {v1, v6}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 32
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 33
    invoke-virtual {v6, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 34
    iget v7, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 35
    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 36
    iget v15, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 37
    iget v12, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 38
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    xor-int/2addr v10, v8

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v16

    if-eqz v10, :cond_11

    if-nez v16, :cond_10

    move-object/from16 v17, v3

    move/from16 v18, v4

    const/4 v0, 0x0

    goto/16 :goto_b

    .line 42
    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v16

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v9, v16

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 45
    :goto_9
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 46
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v16

    move/from16 v18, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-lez v3, :cond_12

    if-lez v4, :cond_12

    const/high16 v16, 0x49800000    # 1048576.0f

    mul-int v0, v3, v4

    int-to-float v0, v0

    div-float v0, v16, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v3

    mul-float/2addr v2, v0

    .line 48
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v4

    mul-float/2addr v3, v0

    .line 49
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 50
    iget v4, v13, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v6, v4, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 51
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 52
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 55
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 57
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    if-eqz v10, :cond_13

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 59
    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_13
    :goto_b
    if-eqz v0, :cond_14

    .line 60
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14
    sub-int v0, v15, v7

    const/high16 v2, 0x40000000    # 2.0f

    .line 61
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v3, v12, v14

    .line 62
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 63
    invoke-virtual {v11, v0, v2}, Landroid/view/View;->measure(II)V

    .line 64
    invoke-virtual {v11, v7, v14, v15, v12}, Landroid/view/View;->layout(IIII)V

    move-object v13, v11

    goto :goto_c

    :cond_15
    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 65
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v0

    .line 66
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_17

    .line 67
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    goto :goto_c

    :cond_16
    move-object/from16 v17, v3

    move/from16 v18, v4

    :cond_17
    :goto_c
    move-object/from16 v3, v17

    const/4 v8, 0x0

    :goto_d
    if-eqz v13, :cond_1a

    move-object/from16 v0, p2

    if-nez v8, :cond_18

    .line 68
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v3, "android:visibility:screenLocation"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 69
    aget v4, v2, v3

    const/4 v6, 0x1

    .line 70
    aget v2, v2, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 71
    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v7, v3

    sub-int/2addr v4, v3

    .line 72
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v3, v7, v6

    sub-int/2addr v2, v3

    .line 73
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v13}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_18
    move-object/from16 v2, p0

    .line 76
    invoke-virtual {v2, v13, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    if-nez v8, :cond_1d

    if-nez v6, :cond_19

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v13}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_f

    :cond_19
    const v0, 0x7f0a033c

    .line 79
    invoke-virtual {v5, v0, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    new-instance v0, Landroidx/transition/Visibility$1;

    invoke-direct {v0, v2, v1, v13, v5}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_f

    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v0, p2

    if-eqz v3, :cond_1c

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 82
    sget-object v4, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    const/4 v4, 0x0

    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 84
    invoke-virtual {v2, v3, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 85
    new-instance v0, Landroidx/transition/Visibility$DisappearListener;

    move/from16 v1, v18

    invoke-direct {v0, v3, v1}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;I)V

    .line 86
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 88
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_f

    .line 89
    :cond_1b
    invoke-virtual {v3, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v6, 0x0

    :cond_1d
    :goto_f
    return-object v6

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method

.method public final getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 6

    .line 1
    new-instance p0, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {p0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 3
    iput-boolean v0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    const-string v1, "android:visibility:parent"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "android:visibility:visibility"

    if-eqz p1, :cond_0

    .line 4
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 6
    iget-object v5, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7
    :cond_0
    iput v3, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 8
    iput-object v2, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    .line 9
    iget-object v5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 11
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 12
    :cond_1
    iput v3, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 13
    iput-object v2, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 14
    iget p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne p1, p2, :cond_2

    iget-object v2, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v2, v3, :cond_2

    return-object p0

    :cond_2
    if-eq p1, p2, :cond_4

    if-nez p1, :cond_3

    .line 15
    iput-boolean v0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 16
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_3
    if-nez p2, :cond_8

    .line 17
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 18
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    .line 20
    iput-boolean v0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 21
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    .line 23
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 24
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    .line 25
    iget p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_7

    .line 26
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 27
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 28
    iget p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_8

    .line 29
    iput-boolean v0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 30
    iput-boolean v1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    :cond_8
    :goto_2
    return-object p0
.end method

.method public final isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v2, "android:visibility:visibility"

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object p0

    .line 5
    iget-boolean p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz p1, :cond_2

    iget p0, p0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public abstract onDisappear(Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end method
