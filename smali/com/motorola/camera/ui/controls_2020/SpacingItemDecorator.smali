.class public final Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacingItemDecorator.kt"


# instance fields
.field public final orientation:I

.field public final spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->orientation:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v0

    .line 3
    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->orientation:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_1

    goto :goto_5

    :cond_1
    if-nez p2, :cond_2

    move p3, v0

    goto :goto_1

    .line 4
    :cond_2
    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    div-int/lit8 p3, p3, 0x2

    :goto_1
    sub-int/2addr p4, v2

    if-ne p2, p4, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    div-int/lit8 v0, p0, 0x2

    .line 6
    :goto_2
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p0, p3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_4
    if-nez p2, :cond_5

    move v1, v0

    goto :goto_3

    .line 7
    :cond_5
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    div-int/lit8 v1, v1, 0x2

    :goto_3
    sub-int/2addr p4, v2

    if-ne p2, p4, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;->spacing:I

    div-int/lit8 v0, p0, 0x2

    .line 9
    :goto_4
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_7

    .line 10
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, p0, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 11
    :cond_7
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    return-void
.end method
