.class public final Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;
.super Ljava/lang/Object;
.source "ScrollingPagerIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

.field public final synthetic val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

.field public final synthetic val$pager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V
    .locals 0

    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$pager:Ljava/lang/Object;

    iput-object p3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    .line 3
    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$pager:Ljava/lang/Object;

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    invoke-virtual {v0, v1, p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    return-void
.end method
