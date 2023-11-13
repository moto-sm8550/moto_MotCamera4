.class public final Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field public static final EMPTY_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mAnimationState:I

.field public mDragState:I

.field public final mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

.field public mHorizontalDragX:F

.field public final mHorizontalRange:[I

.field public mHorizontalThumbCenterX:I

.field public final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public final mHorizontalThumbHeight:I

.field public mHorizontalThumbWidth:I

.field public final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHorizontalTrackHeight:I

.field public final mMargin:I

.field public mNeedHorizontalScrollbar:Z

.field public mNeedVerticalScrollbar:Z

.field public final mOnScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewHeight:I

.field public mRecyclerViewWidth:I

.field public final mScrollbarMinimumRange:I

.field public final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field public mState:I

.field public mVerticalDragY:F

.field public final mVerticalRange:[I

.field public mVerticalThumbCenterY:I

.field public final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public mVerticalThumbHeight:I

.field public final mVerticalThumbWidth:I

.field public final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mVerticalTrackWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v2, [I

    .line 2
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 8
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    new-array v2, v1, [F

    .line 10
    fill-array-data v2, :array_0

    .line 11
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 13
    new-instance v3, Landroidx/recyclerview/widget/FastScroller$1;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 14
    new-instance v3, Landroidx/recyclerview/widget/FastScroller$2;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    .line 15
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 16
    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 18
    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 20
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {p6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 21
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 22
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 23
    iput p7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 24
    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    const/16 p4, 0xff

    .line 25
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 26
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 30
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p3, :cond_1

    const-string p4, "Cannot remove item decoration during a scroll  or layout"

    .line 31
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 32
    :cond_1
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    if-ne p3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 35
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 36
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 37
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne p3, p0, :cond_4

    const/4 p3, 0x0

    .line 40
    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 41
    :cond_4
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 43
    :cond_5
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    .line 44
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 46
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final cancelHide()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isPointInsideHorizontalThumb(FF)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPointInsideVerticalThumb(FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_4

    .line 4
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 5
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 6
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr p2, v2

    .line 7
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 10
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 13
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float p2, p2

    int-to-float v2, v3

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 16
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 18
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    int-to-float v2, p2

    .line 19
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v3

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_4

    .line 25
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 26
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr p2, v2

    .line 27
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 28
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 30
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, p2

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v3

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v3

    int-to-float p0, p0

    neg-int p2, p2

    int-to-float p2, p2

    .line 35
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    .line 36
    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 37
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 38
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent()V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_b

    :cond_1
    if-eqz v3, :cond_2

    .line 5
    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_5

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 13
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 14
    iput v3, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    goto/16 :goto_2

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_b

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 17
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_8

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 19
    iget-object v8, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v5, v8, v3

    .line 20
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v6, v5

    aput v6, v8, v2

    .line 21
    aget v5, v8, v3

    int-to-float v5, v5

    aget v6, v8, v2

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 22
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v9

    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v10

    iget v11, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v5, p0

    move v7, v0

    .line 26
    invoke-virtual/range {v5 .. v11}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_7

    .line 27
    iget-object v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 28
    :cond_7
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 29
    :cond_8
    :goto_1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v1, :cond_b

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 31
    iget-object v8, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    aput v0, v8, v3

    .line 32
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v1, v0

    aput v1, v8, v2

    .line 33
    aget v0, v8, v3

    int-to-float v0, v0

    aget v1, v8, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 34
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    goto :goto_2

    .line 35
    :cond_9
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v9

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v10

    iget v11, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v5, p0

    move v7, p1

    .line 38
    invoke-virtual/range {v5 .. v11}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 40
    :cond_a
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    :cond_b
    :goto_2
    return-void
.end method

.method public final requestRedraw()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final scrollTo(FF[IIII)I
    .locals 1

    const/4 p0, 0x1

    aget p0, p3, p0

    const/4 v0, 0x0

    aget p3, p3, v0

    sub-int/2addr p0, p3

    if-nez p0, :cond_0

    return v0

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    sub-int/2addr p4, p6

    int-to-float p0, p4

    mul-float/2addr p2, p0

    float-to-int p0, p2

    add-int/2addr p5, p0

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method public final setState(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 6
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    return-void
.end method

.method public final show()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
