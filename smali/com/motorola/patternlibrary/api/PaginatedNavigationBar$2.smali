.class public final Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;
.super Ljava/lang/Object;
.source "PaginatedNavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    .line 2
    iget-object p1, p1, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    .line 5
    iget-object p1, p1, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;->this$0:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    .line 8
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->checkButtonVisibility(I)V

    :cond_0
    return-void
.end method
