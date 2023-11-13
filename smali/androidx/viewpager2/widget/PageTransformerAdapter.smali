.class public final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PageTransformerAdapter.java"


# instance fields
.field public final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 7

    .line 1
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez p3, :cond_0

    return-void

    :cond_0
    neg-float p2, p2

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    add-float/2addr v3, p2

    .line 5
    iget-object v4, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    check-cast v4, Lcom/motorola/patternlibrary/api/GalleryView$2;

    .line 6
    iget v5, v4, Lcom/motorola/patternlibrary/api/GalleryView$2;->val$offsetPx:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/motorola/patternlibrary/api/GalleryView$2;->val$pageMarginPx:F

    add-float/2addr v5, v6

    neg-float v5, v5

    mul-float/2addr v5, v3

    .line 7
    iget-object v3, v4, Lcom/motorola/patternlibrary/api/GalleryView$2;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 8
    iget-object v3, v3, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget-object v3, v4, Lcom/motorola/patternlibrary/api/GalleryView$2;->this$0:Lcom/motorola/patternlibrary/api/GalleryView;

    .line 11
    iget-object v3, v3, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_1

    neg-float v2, v5

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p3

    iget-object p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    .line 19
    invoke-static {p2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method
