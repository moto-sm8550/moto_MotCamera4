.class public Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;
.super Ljava/lang/Object;
.source "CenterTooltip.kt"


# instance fields
.field public contentLayout:Landroid/widget/RelativeLayout;

.field public contentRes:I

.field public contentText:Landroid/widget/TextView;

.field public context:Landroid/content/Context;

.field public heightMeasureSpec:I

.field public parentView:Landroid/view/View;

.field public popWindow:Landroid/widget/PopupWindow;

.field public widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->context:Landroid/content/Context;

    const p1, 0x7f1104ea

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentRes:I

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->widthMeasureSpec:I

    .line 3
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->heightMeasureSpec:I

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->context:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0a0424

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->widthMeasureSpec:I

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->heightMeasureSpec:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_2

    const v2, 0x7f11049e

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, p1

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0a0428

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentText:Landroid/widget/TextView;

    .line 12
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->contentRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 14
    new-instance p1, Landroid/widget/PopupWindow;

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->parentView:Landroid/view/View;

    const/4 v1, -0x2

    .line 16
    invoke-direct {p1, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    .line 17
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f1201c3

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip;->popWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
