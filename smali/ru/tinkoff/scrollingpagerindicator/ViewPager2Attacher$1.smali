.class public final Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ViewPager2Attacher.java"


# instance fields
.field public final synthetic val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;


# direct methods
.method public constructor <init>(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V
    .locals 0

    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    return-void
.end method
