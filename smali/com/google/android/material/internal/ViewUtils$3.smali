.class public final Lcom/google/android/material/internal/ViewUtils$3;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

.field public final synthetic val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$listener:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 2
    iget v1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 3
    iget v2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 4
    iget p0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 5
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x7

    .line 6
    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    const/16 v4, 0x20

    .line 7
    invoke-virtual {p2, v4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    .line 8
    iget-object v5, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v6, v3, Landroidx/core/graphics/Insets;->top:I

    .line 9
    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 10
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 14
    iget-object v9, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    iget-boolean v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v10, :cond_0

    .line 16
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v6

    .line 17
    iput v6, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 18
    iget-object v6, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    iget v6, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v6, p0

    .line 20
    :cond_0
    iget-object p0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 21
    iget-boolean v9, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    if-eqz v9, :cond_2

    if-eqz v5, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v1

    .line 22
    :goto_0
    iget v9, v3, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v7, v9

    .line 23
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    if-eqz p0, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 24
    :goto_1
    iget p0, v3, Landroidx/core/graphics/Insets;->right:I

    add-int v8, v1, p0

    .line 25
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 27
    iget-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    .line 28
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v3, Landroidx/core/graphics/Insets;->left:I

    if-eq v2, v10, :cond_5

    .line 29
    iput v10, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v5, v9

    .line 30
    :cond_5
    iget-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-eqz v2, :cond_6

    .line 31
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v10, v3, Landroidx/core/graphics/Insets;->right:I

    if-eq v2, v10, :cond_6

    .line 32
    iput v10, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v5, v9

    .line 33
    :cond_6
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    if-eqz v1, :cond_7

    .line 34
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v3, Landroidx/core/graphics/Insets;->top:I

    if-eq v1, v2, :cond_7

    .line 35
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_7
    move v9, v5

    :goto_2
    if-eqz v9, :cond_8

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1, v7, p0, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    iget-boolean p0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    if-eqz p0, :cond_9

    .line 39
    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v4, Landroidx/core/graphics/Insets;->bottom:I

    .line 40
    iput v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 41
    :cond_9
    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 42
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-nez v0, :cond_a

    if-eqz p0, :cond_b

    .line 43
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    :cond_b
    return-object p2
.end method
