.class public Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.super Ljava/lang/Object;
.source "SingleTooltip.kt"


# instance fields
.field public heightMeasureSpec:I

.field public mContentLayout:Landroid/widget/RelativeLayout;

.field public mContentRes:I

.field public mContext:Landroid/content/Context;

.field public mCross:Landroid/widget/ImageView;

.field public mHeight:I

.field public mParentView:Landroid/view/View;

.field public mPopWindow:Landroid/widget/PopupWindow;

.field public mScreenWidth:I

.field public mWidth:I

.field public widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentRes:I

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 4
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->widthMeasureSpec:I

    .line 5
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->heightMeasureSpec:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->widthMeasureSpec:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->heightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_2

    const v2, 0x7f11049e

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, p2

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    .line 16
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageButton;

    .line 18
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    .line 19
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->widthMeasureSpec:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->heightMeasureSpec:I

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    .line 23
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f1201c3

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static synthetic show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIIIILandroid/view/View;ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$enumunboxing$(IIIIILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public afterDismiss()V
    .locals 0

    return-void
.end method

.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    .line 3
    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    return p0
.end method

.method public final getShowWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    .line 3
    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    return p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final show$enumunboxing$(IIIIILandroid/view/View;)V
    .locals 8

    const-string v0, "cross"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string/jumbo v0, "style"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p4}, Landroidx/recyclerview/widget/ChildHelper$$ExternalSyntheticOutline0;->getMRes(I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p4, :cond_b

    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const v4, 0x7f0a0424

    if-eqz p4, :cond_5

    const/16 v5, 0x12

    const/16 v6, 0x13

    if-eq p4, v2, :cond_4

    const/4 v7, 0x2

    if-eq p4, v7, :cond_3

    if-eq p4, v3, :cond_2

    const/4 v3, 0x4

    if-eq p4, v3, :cond_1

    const/4 v3, 0x5

    if-eq p4, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    :goto_0
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_a

    add-int/lit8 p5, p5, -0x1

    if-eqz p5, :cond_7

    if-ne p5, v2, :cond_6

    .line 16
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContext:Landroid/content/Context;

    const p5, 0x7f0603a2

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    goto :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 17
    :cond_7
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContext:Landroid/content/Context;

    const p5, 0x7f0603a1

    invoke-virtual {p4, p5}, Landroid/content/Context;->getColor(I)I

    move-result p4

    .line 18
    :goto_1
    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-eqz p5, :cond_8

    invoke-virtual {p5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-eqz p5, :cond_8

    invoke-virtual {p5, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 19
    :cond_8
    iget-object p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez p5, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p6, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    .line 21
    :cond_a
    throw v1

    .line 22
    :cond_b
    throw v1
.end method

.method public final update(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public final updateLayout(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    return-void
.end method
