.class public final Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ViewPager2Attacher.java"


# instance fields
.field public idleState:Z

.field public final synthetic this$0:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

.field public final synthetic val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;


# direct methods
.method public constructor <init>(Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->idleState:Z

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->idleState:Z

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    cmpg-float v0, p2, p3

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    cmpl-float p3, p2, v1

    if-lez p3, :cond_1

    move p2, v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->onPageScrolled(IF)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->idleState:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    .line 3
    iget-object v0, p1, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 4
    iget-object p1, p1, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    :cond_0
    return-void
.end method
