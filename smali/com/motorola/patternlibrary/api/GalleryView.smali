.class public Lcom/motorola/patternlibrary/api/GalleryView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "GalleryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/patternlibrary/api/GalleryView$PageListener;
    }
.end annotation


# instance fields
.field public mBadgeIndicator:I

.field public mCardViewAdapter:Lcom/motorola/patternlibrary/widget/CardViewAdapter;

.field public mListener:Lcom/motorola/patternlibrary/api/GalleryView$PageListener;

.field public mMotoCardViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;"
        }
    .end annotation
.end field

.field public mPaginatedNavigationBar:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

.field public mViewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mListener:Lcom/motorola/patternlibrary/api/GalleryView$PageListener;

    const p2, 0x7f0d0072

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a045c

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const p1, 0x7f0a02b2

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mPaginatedNavigationBar:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    .line 6
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/motorola/patternlibrary/api/GalleryView$1;

    invoke-direct {p2, p0}, Lcom/motorola/patternlibrary/api/GalleryView$1;-><init>(Lcom/motorola/patternlibrary/api/GalleryView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public getBadgeIndicator()I
    .locals 0

    iget p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    return p0
.end method

.method public getCurrentPage()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getMotoCardViews()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mCardViewAdapter:Lcom/motorola/patternlibrary/widget/CardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setBadgeIndicator(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setListener(Lcom/motorola/patternlibrary/api/GalleryView$PageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/GalleryView;->mListener:Lcom/motorola/patternlibrary/api/GalleryView$PageListener;

    return-void
.end method
