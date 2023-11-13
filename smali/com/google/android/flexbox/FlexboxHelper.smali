.class public final Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    }
.end annotation


# instance fields
.field public mChildrenFrozen:[Z

.field public final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field public mIndexToFlexLine:[I

.field public mMeasureSpecCache:[J

.field public mMeasuredSizeCache:[J


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexContainer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method


# virtual methods
.method public final addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flexLines",
            "flexLine",
            "viewIndex",
            "usedCrossSizeSoFar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 1
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 2
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "mainMeasureSpec",
            "crossMeasureSpec",
            "needsCalcAmount",
            "fromIndex",
            "toIndex",
            "existingLines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez p7, :cond_0

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    move-object/from16 v5, p7

    .line 5
    :goto_0
    iput-object v5, v6, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 6
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_2

    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {v10}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 9
    :cond_3
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    :goto_2
    if-eqz v2, :cond_5

    .line 10
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_4

    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v11

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 13
    :cond_5
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    :goto_3
    if-eqz v2, :cond_6

    .line 14
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v12

    goto :goto_4

    .line 15
    :cond_6
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_7

    sget-object v13, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v12}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v12

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 18
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v13

    goto :goto_5

    .line 19
    :cond_8
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_9

    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {v13}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    .line 22
    :goto_5
    new-instance v14, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v14}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v15, p5

    .line 23
    iput v15, v14, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v11

    .line 24
    iput v10, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 25
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v11

    const/high16 v16, -0x80000000

    move/from16 v18, v16

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_6
    if-ge v15, v11, :cond_30

    .line 26
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 27
    invoke-virtual {v6, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_b

    .line 28
    invoke-virtual {v0, v15, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual {v0, v5, v14, v15, v8}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_a
    move/from16 p5, v9

    goto :goto_7

    .line 30
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 p5, v9

    const/16 v9, 0x8

    if-ne v7, v9, :cond_d

    .line 31
    iget v6, v14, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v14, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 32
    iget v6, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v6, v7

    iput v6, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 33
    invoke-virtual {v0, v15, v11, v14}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 34
    invoke-virtual {v0, v5, v14, v15, v8}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_c
    :goto_7
    move/from16 v9, p5

    move v6, v1

    move/from16 v21, v3

    move v3, v4

    move v1, v11

    move/from16 v20, v12

    move/from16 v22, v13

    const/4 v7, -0x1

    const/4 v11, 0x1

    move/from16 v12, p4

    goto/16 :goto_1e

    .line 35
    :cond_d
    instance-of v7, v6, Landroid/widget/CompoundButton;

    if-eqz v7, :cond_12

    .line 36
    move-object v7, v6

    check-cast v7, Landroid/widget/CompoundButton;

    .line 37
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexItem;

    .line 38
    invoke-interface {v9}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    move/from16 p7, v11

    .line 39
    invoke-interface {v9}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v11

    .line 40
    invoke-static {v7}, Landroidx/core/widget/CompoundButtonCompat$Api23Impl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_e

    const/16 v19, 0x0

    goto :goto_8

    .line 41
    :cond_e
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v19

    :goto_8
    if-nez v7, :cond_f

    const/4 v7, -0x1

    const/16 v20, 0x0

    goto :goto_9

    .line 42
    :cond_f
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    move/from16 v20, v7

    const/4 v7, -0x1

    :goto_9
    if-ne v1, v7, :cond_10

    move/from16 v1, v19

    .line 43
    :cond_10
    invoke-interface {v9, v1}, Lcom/google/android/flexbox/FlexItem;->setMinWidth(I)V

    if-ne v11, v7, :cond_11

    move/from16 v11, v20

    .line 44
    :cond_11
    invoke-interface {v9, v11}, Lcom/google/android/flexbox/FlexItem;->setMinHeight(I)V

    goto :goto_a

    :cond_12
    move/from16 p7, v11

    .line 45
    :goto_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexItem;

    .line 46
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_13

    .line 47
    iget-object v7, v14, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v2, :cond_14

    .line 48
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v7

    goto :goto_b

    .line 49
    :cond_14
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v7

    .line 50
    :goto_b
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v9

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_15

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v3, v9, :cond_15

    int-to-float v7, v4

    .line 51
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    :cond_15
    if-eqz v2, :cond_16

    .line 52
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    const/4 v11, 0x1

    .line 53
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v19

    add-int v19, v19, v10

    .line 54
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v20

    add-int v11, v20, v19

    .line 55
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v9, v11, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v7

    .line 56
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v11, v12, v13

    move/from16 v19, v4

    const/4 v4, 0x1

    .line 57
    invoke-virtual {v0, v1, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v20

    add-int v20, v20, v11

    .line 58
    invoke-virtual {v0, v1, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v11

    add-int v11, v11, v20

    add-int/2addr v11, v8

    .line 59
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    .line 60
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v9, v11, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v4

    .line 61
    invoke-virtual {v6, v7, v4}, Landroid/view/View;->measure(II)V

    .line 62
    invoke-virtual {v0, v15, v7, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    goto :goto_c

    :cond_16
    move/from16 v19, v4

    .line 63
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v9, v12, v13

    const/4 v11, 0x0

    .line 64
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v20

    add-int v20, v20, v9

    .line 65
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int v9, v9, v20

    add-int/2addr v9, v8

    .line 66
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v11

    .line 67
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v9, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v4

    .line 68
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    const/4 v11, 0x0

    .line 69
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v20

    add-int v20, v20, v10

    .line 70
    invoke-virtual {v0, v1, v11}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v21

    add-int v11, v21, v20

    .line 71
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v9, v11, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v7

    .line 72
    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    .line 73
    invoke-virtual {v0, v15, v4, v7, v6}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 74
    :goto_c
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v15, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    .line 75
    invoke-virtual {v0, v6, v15}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 76
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v9, v17

    .line 77
    invoke-static {v9, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v17

    .line 78
    iget v4, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v2, :cond_17

    .line 79
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    goto :goto_d

    .line 80
    :cond_17
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 81
    :goto_d
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v11

    add-int/2addr v11, v9

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v11

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v20, v12

    .line 84
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 85
    iget v12, v12, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v12, :cond_18

    goto :goto_e

    .line 86
    :cond_18
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v12

    if-eqz v12, :cond_19

    move/from16 v21, v3

    move/from16 v22, v13

    move/from16 v3, v19

    goto :goto_11

    :cond_19
    if-nez v3, :cond_1a

    :goto_e
    move/from16 v21, v3

    move/from16 v22, v13

    goto :goto_f

    .line 87
    :cond_1a
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager;

    move/from16 v21, v3

    .line 88
    iget v3, v12, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    move/from16 v22, v13

    const/4 v13, -0x1

    if-eq v3, v13, :cond_1b

    const/4 v13, 0x1

    add-int/2addr v11, v13

    if-gt v3, v11, :cond_1b

    :goto_f
    move/from16 v3, v19

    goto :goto_12

    .line 89
    :cond_1b
    invoke-virtual {v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 90
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v11

    goto :goto_10

    .line 91
    :cond_1c
    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v11

    :goto_10
    add-int/2addr v11, v3

    if-lez v11, :cond_1d

    add-int/2addr v9, v11

    :cond_1d
    add-int/2addr v4, v9

    move/from16 v3, v19

    if-ge v3, v4, :cond_1e

    :goto_11
    const/4 v4, 0x1

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_23

    .line 92
    iget v4, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v9, v14, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v4, v9

    if-lez v4, :cond_20

    if-lez v15, :cond_1f

    add-int/lit8 v4, v15, -0x1

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    .line 93
    :goto_14
    invoke-virtual {v0, v5, v14, v4, v8}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 94
    iget v4, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v8, v4

    :cond_20
    if-eqz v2, :cond_21

    .line 95
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_22

    .line 96
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 97
    move-object v9, v4

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v9

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v9

    .line 98
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v9

    add-int/2addr v9, v11

    .line 99
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v11, v8

    .line 100
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v9

    .line 101
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v11, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v4

    .line 102
    invoke-virtual {v6, v7, v4}, Landroid/view/View;->measure(II)V

    .line 103
    invoke-virtual {v0, v6, v15}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_15

    .line 104
    :cond_21
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_22

    .line 105
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 106
    move-object v9, v4

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v9

    .line 107
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v9

    add-int/2addr v9, v11

    .line 108
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v11, v8

    .line 109
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v9

    .line 110
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v11, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v4

    .line 111
    invoke-virtual {v6, v4, v7}, Landroid/view/View;->measure(II)V

    .line 112
    invoke-virtual {v0, v6, v15}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 113
    :cond_22
    :goto_15
    new-instance v14, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v14}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    const/4 v4, 0x1

    .line 114
    iput v4, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 115
    iput v10, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 116
    iput v15, v14, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move/from16 v4, v16

    goto :goto_16

    :cond_23
    const/4 v4, 0x1

    .line 117
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v7, v4

    iput v7, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v4, v18

    .line 118
    :goto_16
    iget-boolean v7, v14, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_24

    const/4 v9, 0x1

    goto :goto_17

    :cond_24
    const/4 v9, 0x0

    :goto_17
    or-int/2addr v7, v9

    iput-boolean v7, v14, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 119
    iget-boolean v7, v14, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v9

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_25

    const/4 v9, 0x1

    goto :goto_18

    :cond_25
    const/4 v9, 0x0

    :goto_18
    or-int/2addr v7, v9

    iput-boolean v7, v14, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 120
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v7, :cond_26

    .line 121
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    aput v9, v7, v15

    .line 122
    :cond_26
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v2, :cond_27

    .line 123
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    goto :goto_19

    .line 124
    :cond_27
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 125
    :goto_19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v11

    add-int/2addr v11, v9

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 127
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v9

    add-float/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 128
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v9

    add-float/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 129
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 130
    sget-object v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 132
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v9

    .line 133
    iget v9, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 134
    iget v9, v14, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_1a

    .line 135
    :cond_28
    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v9

    .line 136
    iget v9, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 137
    iget v9, v14, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v9, v7

    iput v9, v14, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    :goto_1a
    if-eqz v2, :cond_29

    .line 138
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_1b

    .line 139
    :cond_29
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 140
    :goto_1b
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v9

    add-int/2addr v9, v7

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v7, v9

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 142
    check-cast v9, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v9, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v7

    .line 143
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 144
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v2, :cond_2b

    .line 145
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 146
    iget v7, v7, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2a

    .line 147
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 148
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v6

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    add-int/2addr v1, v6

    .line 149
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v14, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_1c

    .line 150
    :cond_2a
    iget v7, v14, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 151
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v6

    sub-int/2addr v9, v6

    .line 152
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    add-int/2addr v1, v9

    .line 153
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v14, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_2b
    :goto_1c
    move/from16 v1, p7

    .line 154
    invoke-virtual {v0, v15, v1, v14}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 155
    invoke-virtual {v0, v5, v14, v15, v8}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 156
    iget v6, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v8, v6

    :cond_2c
    move/from16 v6, p6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2d

    .line 157
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2d

    .line 158
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexLine;

    iget v9, v9, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v9, v6, :cond_2e

    if-lt v15, v6, :cond_2e

    if-nez p5, :cond_2e

    .line 159
    iget v8, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    neg-int v8, v8

    move/from16 v12, p4

    move v9, v11

    goto :goto_1d

    :cond_2d
    const/4 v11, 0x1

    :cond_2e
    move/from16 v12, p4

    move/from16 v9, p5

    :goto_1d
    if-le v8, v12, :cond_2f

    if-eqz v9, :cond_2f

    goto :goto_1f

    :cond_2f
    move/from16 v18, v4

    :goto_1e
    add-int/lit8 v15, v15, 0x1

    move v11, v1

    move v4, v3

    move v1, v6

    move v6, v7

    move/from16 v12, v20

    move/from16 v3, v21

    move/from16 v13, v22

    goto/16 :goto_6

    :cond_30
    :goto_1f
    return-void
.end method

.method public final checkSizeConstraints(Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 13
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 16
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final clearFlexLines(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexLines",
            "fromFlexItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_2

    .line 5
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x0

    if-le p2, p1, :cond_3

    .line 8
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {p0, p2, p1, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_1
    return-void
.end method

.method public final determineMainSize(III)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "fromIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    .line 4
    :cond_0
    array-length v4, v1

    if-ge v4, v0, :cond_1

    .line 5
    array-length v1, v1

    mul-int/2addr v1, v2

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 10
    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 11
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 12
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    .line 14
    invoke-static {p1, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v4, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v1

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 20
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    goto :goto_4

    .line 21
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v2

    if-ne v0, v4, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 26
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    :goto_4
    add-int/2addr v2, v0

    .line 27
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v0, :cond_8

    .line 28
    aget v3, v0, p3

    .line 29
    :cond_8
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 30
    iget-object p3, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 31
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_b

    .line 32
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    .line 33
    iget v4, v7, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v1, :cond_9

    iget-boolean v5, v7, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v5, :cond_9

    const/4 v10, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v8, v1

    move v9, v2

    .line 34
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_6

    :cond_9
    if-le v4, v1, :cond_a

    .line 35
    iget-boolean v4, v7, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v4, :cond_a

    const/4 v10, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v8, v1

    move v9, v2

    .line 36
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final ensureIndexToFlexLine(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 4
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasureSpecCache(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 4
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasuredSizeCache(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 4
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "flexLine",
            "maxMainSize",
            "paddingAlongMainAxis",
            "calledRecursively"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_15

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v5, :cond_0

    goto/16 :goto_b

    :cond_0
    sub-int v6, v4, v5

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 2
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v1, p5, v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v1, -0x80000000

    .line 3
    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    move v8, v7

    move v9, v2

    .line 4
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v1, v10, :cond_14

    .line 5
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v1

    .line 6
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 7
    invoke-virtual {v11, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 8
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_9

    .line 9
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 10
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 11
    iget v13, v13, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/16 v14, 0x20

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v15, :cond_3

    goto/16 :goto_4

    .line 12
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 13
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    .line 14
    aget-wide v20, v15, v10

    shr-long v13, v20, v14

    long-to-int v13, v13

    .line 15
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 16
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 17
    aget-wide v14, v15, v10

    long-to-int v14, v14

    .line 18
    :cond_5
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v15

    cmpl-float v15, v15, v2

    if-lez v15, :cond_a

    int-to-float v13, v13

    .line 19
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    mul-float/2addr v14, v6

    add-float/2addr v14, v13

    .line 20
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    if-ne v1, v13, :cond_6

    add-float/2addr v14, v9

    move v9, v2

    .line 21
    :cond_6
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 22
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v13, v2, :cond_7

    .line 23
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v13

    .line 24
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v2, v10

    .line 25
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    sub-float/2addr v2, v7

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v2, v5

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    int-to-float v2, v13

    sub-float/2addr v14, v2

    add-float/2addr v14, v9

    move v2, v5

    float-to-double v4, v14

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v4, v15

    if-lez v9, :cond_8

    add-int/lit8 v13, v13, 0x1

    sub-double/2addr v4, v15

    goto :goto_1

    :cond_8
    cmpg-double v9, v4, v18

    if-gez v9, :cond_9

    add-int/lit8 v13, v13, -0x1

    add-double/2addr v4, v15

    :goto_1
    double-to-float v4, v4

    move v9, v4

    goto :goto_2

    :cond_9
    move v9, v14

    .line 26
    :goto_2
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v5, p1

    invoke-virtual {v0, v5, v12, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v14, 0x40000000    # 2.0f

    .line 27
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 28
    invoke-virtual {v11, v4, v13}, Landroid/view/View;->measure(II)V

    .line 29
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 30
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 31
    invoke-virtual {v0, v10, v4, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 32
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    move v13, v15

    goto :goto_3

    :cond_a
    move v2, v5

    move/from16 v5, p1

    .line 33
    :goto_3
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, v14

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v10, v4

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 34
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v10

    .line 35
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 36
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v13

    .line 37
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v11, v8

    iput v11, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v14, p2

    goto/16 :goto_8

    :cond_b
    :goto_4
    move v2, v5

    move/from16 v5, p1

    .line 38
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 39
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_c

    .line 40
    aget-wide v14, v13, v10

    long-to-int v4, v14

    .line 41
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 42
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_d

    .line 43
    aget-wide v13, v14, v10

    const/16 v15, 0x20

    shr-long/2addr v13, v15

    long-to-int v13, v13

    .line 44
    :cond_d
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_12

    int-to-float v4, v4

    .line 45
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    mul-float/2addr v13, v6

    add-float/2addr v13, v4

    .line 46
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    if-ne v1, v4, :cond_e

    add-float/2addr v13, v9

    move v9, v15

    .line 47
    :cond_e
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 48
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v15

    if-le v4, v15, :cond_f

    .line 49
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    .line 50
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v14, v7, v10

    .line 51
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v13

    sub-float/2addr v7, v13

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v7, v14

    goto :goto_6

    :cond_f
    int-to-float v14, v4

    sub-float/2addr v13, v14

    add-float/2addr v13, v9

    float-to-double v14, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v14, v16

    if-lez v9, :cond_10

    add-int/lit8 v4, v4, 0x1

    sub-double v14, v14, v16

    goto :goto_5

    :cond_10
    cmpg-double v9, v14, v18

    if-gez v9, :cond_11

    add-int/lit8 v4, v4, -0x1

    add-double v14, v14, v16

    :goto_5
    double-to-float v9, v14

    goto :goto_6

    :cond_11
    move v9, v13

    .line 52
    :goto_6
    iget v13, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v14, p2

    invoke-virtual {v0, v14, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v13

    const/high16 v15, 0x40000000    # 2.0f

    .line 53
    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 54
    invoke-virtual {v11, v4, v13}, Landroid/view/View;->measure(II)V

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 56
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 57
    invoke-virtual {v0, v10, v4, v13, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 58
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    move v4, v15

    move/from16 v13, v16

    goto :goto_7

    :cond_12
    move/from16 v14, p2

    .line 59
    :goto_7
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v13

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 60
    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v13

    .line 61
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 62
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int/2addr v11, v4

    .line 63
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v11

    add-int/2addr v4, v10

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v8

    .line 64
    :goto_8
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v4

    goto :goto_a

    :cond_13
    :goto_9
    move/from16 v14, p2

    move v2, v5

    move/from16 v5, p1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, p4

    move v5, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_14
    move/from16 v14, p2

    move v2, v5

    move/from16 v5, p1

    if-eqz v7, :cond_15

    .line 65
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v2, v1, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_b
    return-void
.end method

.method public final getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightMeasureSpec",
            "flexItem",
            "padding"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    .line 3
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    add-int/2addr v0, p0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p0, p3

    .line 4
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result p3

    .line 5
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p1, p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result p0

    .line 6
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p3

    if-le p1, p3, :cond_0

    .line 8
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result p1

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 10
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 12
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result p1

    .line 13
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 14
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "flexItem",
            "padding"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v0

    .line 3
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    add-int/2addr v0, p0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    add-int/2addr p0, v0

    add-int/2addr p0, p3

    .line 4
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result p3

    .line 5
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p1, p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result p0

    .line 6
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p3

    if-le p1, p3, :cond_0

    .line 8
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result p1

    .line 9
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 10
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 12
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result p1

    .line 13
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 14
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    return p0
.end method

.method public final getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    return p0
.end method

.method public final getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p0

    return p0
.end method

.method public final getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flexItem",
            "isMainHorizontal"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p0

    return p0
.end method

.method public final isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childIndex",
            "childCount",
            "flexLine"
        }
    .end annotation

    const/4 p0, 0x1

    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_0

    iget p1, p3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p2, p3, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "flexLine",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 6
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 8
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_2

    .line 9
    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    sub-int/2addr p0, p2

    .line 10
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p4, p0

    add-int/2addr p6, p0

    .line 11
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget p0, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p2

    add-int/2addr p2, p0

    .line 14
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p6, p0

    .line 15
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 17
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p6

    sub-int/2addr p2, p6

    div-int/2addr p2, v3

    .line 18
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 19
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_4

    add-int/2addr p4, p2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    .line 21
    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    .line 23
    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 24
    :cond_5
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 25
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_6

    add-int/2addr p4, v2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int p0, p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p0, p2

    .line 27
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p2

    sub-int/2addr p4, p2

    .line 28
    invoke-virtual {p1, p3, p0, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_6
    sub-int/2addr p4, v2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, p0

    sub-int/2addr p6, v2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p6

    .line 31
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p4

    add-int/2addr p4, p0

    .line 32
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 33
    :cond_7
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 34
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq p0, v3, :cond_8

    .line 35
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p0

    add-int/2addr p0, p4

    .line 36
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result p2

    add-int/2addr p2, p6

    .line 37
    invoke-virtual {p1, p3, p0, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 38
    :cond_8
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    sub-int/2addr p4, p0

    .line 39
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result p0

    sub-int/2addr p6, p0

    .line 40
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "flexLine",
            "isRtl",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result p0

    .line 6
    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    const/4 p2, 0x4

    if-eq p0, p2, :cond_5

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 9
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, p2

    .line 10
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 11
    div-int/2addr v0, v1

    if-nez p3, :cond_2

    add-int/2addr p4, v0

    add-int/2addr p6, v0

    .line 12
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int/2addr p4, v0

    sub-int/2addr p6, v0

    .line 13
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p4, p0

    add-int/2addr p6, p2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p6, p0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p6, p0

    .line 16
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    sub-int/2addr p4, p2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p3

    add-int/2addr p3, p0

    sub-int/2addr p6, p2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, p6

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p2, p0

    .line 19
    invoke-virtual {p1, p3, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    .line 20
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p0

    add-int/2addr p0, p4

    .line 21
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result p2

    add-int/2addr p2, p6

    .line 22
    invoke-virtual {p1, p0, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p4, p0

    .line 24
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result p0

    sub-int/2addr p6, p0

    .line 25
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "flexLine",
            "maxMainSize",
            "paddingAlongMainAxis",
            "calledRecursively"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 2
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_15

    if-le v4, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    .line 3
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    .line 4
    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    move v9, v5

    .line 5
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v2, v10, :cond_14

    .line 6
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v2

    .line 7
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 8
    invoke-virtual {v11, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 9
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    goto/16 :goto_9

    .line 10
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 11
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 12
    iget v13, v13, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/16 v16, 0x20

    const/high16 v17, 0x3f800000    # 1.0f

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    if-ne v13, v15, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 14
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_4

    .line 15
    aget-wide v13, v14, v10

    shr-long v13, v13, v16

    long-to-int v13, v13

    .line 16
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 17
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_5

    .line 18
    aget-wide v14, v15, v10

    long-to-int v14, v14

    .line 19
    :cond_5
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v15

    cmpl-float v15, v15, v5

    if-lez v15, :cond_a

    int-to-float v13, v13

    .line 20
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v14

    mul-float/2addr v14, v6

    sub-float/2addr v13, v14

    .line 21
    iget v14, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v2, v14, :cond_6

    add-float/2addr v13, v9

    move v9, v5

    .line 22
    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 23
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    if-ge v14, v5, :cond_7

    .line 24
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v5

    .line 25
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v7, v10

    .line 26
    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    sub-float/2addr v7, v13

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    int-to-float v5, v14

    sub-float/2addr v13, v5

    add-float/2addr v13, v9

    float-to-double v4, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v4, v15

    if-lez v9, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-float v13, v13, v17

    goto :goto_1

    :cond_8
    cmpg-double v4, v4, v20

    if-gez v4, :cond_9

    add-int/lit8 v14, v14, -0x1

    add-float v13, v13, v17

    :cond_9
    :goto_1
    move v9, v13

    move v5, v14

    .line 27
    :goto_2
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p1

    invoke-virtual {v0, v15, v12, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v13, 0x40000000    # 2.0f

    .line 28
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 29
    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 30
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 31
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 32
    invoke-virtual {v0, v10, v4, v5, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 33
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    goto :goto_3

    :cond_a
    move/from16 v15, p1

    .line 34
    :goto_3
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, v14

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 35
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v5

    .line 36
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 37
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v8, v13

    .line 38
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    iput v10, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v13, p2

    goto/16 :goto_8

    :cond_b
    :goto_4
    move/from16 v15, p1

    .line 39
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 40
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_c

    .line 41
    aget-wide v4, v5, v10

    long-to-int v4, v4

    .line 42
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 43
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_d

    .line 44
    aget-wide v13, v13, v10

    shr-long v13, v13, v16

    long-to-int v5, v13

    .line 45
    :cond_d
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_12

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    int-to-float v4, v4

    .line 46
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 47
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    if-ne v2, v5, :cond_e

    add-float/2addr v4, v9

    move v9, v14

    .line 48
    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 49
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v14

    if-ge v5, v14, :cond_f

    .line 50
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v4

    .line 51
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v13, v5, v10

    .line 52
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    sub-float/2addr v5, v7

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v7, v13

    goto :goto_6

    :cond_f
    int-to-float v13, v5

    sub-float/2addr v4, v13

    add-float/2addr v4, v9

    float-to-double v13, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v13, v18

    if-lez v9, :cond_10

    add-int/lit8 v5, v5, 0x1

    sub-float v4, v4, v17

    goto :goto_5

    :cond_10
    cmpg-double v9, v13, v20

    if-gez v9, :cond_11

    add-int/lit8 v5, v5, -0x1

    add-float v4, v4, v17

    :cond_11
    :goto_5
    move v9, v4

    move v4, v5

    .line 53
    :goto_6
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v13, p2

    invoke-virtual {v0, v13, v12, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v14, 0x40000000    # 2.0f

    .line 54
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 55
    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 56
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 57
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 58
    invoke-virtual {v0, v10, v4, v5, v11}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 59
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4, v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    move v4, v14

    move/from16 v5, v16

    goto :goto_7

    :cond_12
    move/from16 v13, p2

    .line 60
    :goto_7
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int/2addr v10, v5

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v5, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 61
    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v10, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v5

    .line 62
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 63
    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v10, v4

    .line 64
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v5

    .line 65
    :goto_8
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v4

    goto :goto_a

    :cond_13
    :goto_9
    move/from16 v15, p1

    move/from16 v13, p2

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p4

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_14
    move/from16 v15, p1

    move/from16 v13, p2

    if-eqz v7, :cond_15

    .line 66
    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v1, v2, :cond_15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 67
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_15
    :goto_b
    return-void
.end method

.method public final stretchViewHorizontally(Landroid/view/View;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "crossSize",
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    .line 7
    aget-wide v0, v0, p3

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 13
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method public final stretchViewVertically(Landroid/view/View;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "crossSize",
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 3
    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    .line 4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    .line 7
    aget-wide v0, v0, p3

    long-to-int v0, v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 13
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method public final stretchViews(I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 4
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const-string v3, "Invalid flex direction: "

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v2, v4, :cond_a

    .line 5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v2, :cond_1

    .line 6
    aget p1, v2, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge p1, v2, :cond_f

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 10
    iget v7, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_9

    .line 11
    iget v9, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v9, v8

    .line 12
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v10

    if-lt v8, v10, :cond_2

    goto :goto_4

    .line 13
    :cond_2
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 14
    invoke-virtual {v10, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 15
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    goto :goto_4

    .line 16
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 17
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 18
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v11

    if-eq v11, v4, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_7

    const/4 v11, 0x2

    if-eq v1, v11, :cond_6

    const/4 v11, 0x3

    if-ne v1, v11, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-static {v3, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6
    :goto_3
    iget v11, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {p0, v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_4

    .line 23
    :cond_7
    iget v11, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {p0, v10, v11, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 24
    :cond_a
    iget-object p1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 26
    iget-object v2, v0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 27
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 28
    invoke-virtual {v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_e

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v1, v7, :cond_d

    if-ne v1, v8, :cond_c

    goto :goto_6

    .line 29
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    invoke-static {v3, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_d
    :goto_6
    iget v7, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v6, v7, v4}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    .line 33
    :cond_e
    iget v7, v0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v6, v7, v4}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final updateMeasureCache(IIILandroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "widthMeasureSpec",
            "heightMeasureSpec",
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    int-to-long v4, p3

    shl-long/2addr v4, v3

    int-to-long p2, p2

    and-long/2addr p2, v1

    or-long/2addr p2, v4

    .line 2
    aput-wide p2, v0, p1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-long p3, p3

    shl-long/2addr p3, v3

    int-to-long v3, p2

    and-long v0, v3, v1

    or-long p2, v0, p3

    .line 6
    aput-wide p2, p0, p1

    :cond_1
    return-void
.end method
