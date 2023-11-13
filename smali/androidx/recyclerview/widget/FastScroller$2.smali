.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 3
    iget-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p3

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v1, p3, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 5
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    .line 7
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v5, v1, v4

    if-lez v5, :cond_1

    .line 8
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v4, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iput-boolean v5, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 9
    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 10
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_2

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v6, :cond_3

    int-to-float p1, p1

    int-to-float v5, v0

    div-float v6, v5, v2

    add-float/2addr v6, p1

    mul-float/2addr v6, v5

    int-to-float p1, p3

    div-float/2addr v6, p1

    float-to-int p1, v6

    .line 12
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p1, v0, v0

    .line 13
    div-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 14
    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v4

    div-float p3, p2, v2

    add-float/2addr p3, p1

    mul-float/2addr p3, p2

    int-to-float p1, v1

    div-float/2addr p3, p1

    float-to-int p1, p3

    .line 15
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v4, v4

    .line 16
    div-int/2addr p1, v1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 17
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_6

    .line 18
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    :cond_6
    :goto_2
    return-void
.end method
