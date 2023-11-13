.class public abstract Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;
.super Ljava/lang/Object;
.source "CinemagraphMaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TooltipWindow"
.end annotation


# instance fields
.field public final contentView:Landroid/view/View;

.field public final ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

.field public final mImageArrow:Landroid/widget/ImageView;

.field public final mTargetViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

.field public final tipWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 3
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const v0, 0x7f0d0118

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    const v1, 0x7f0a040b

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    const v1, 0x7f0a040c

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1101d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100fc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const p2, 0x7f0a015b

    .line 12
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismissTooltip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->getFirstTimeSetting()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->getFirstTimeSetting()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    .line 15
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    :cond_2
    return-void
.end method

.method public abstract getAnchorRect()Landroid/graphics/Rect;
.end method

.method public abstract getFirstTimeSetting()Lcom/motorola/camera/settings/SettingsManager$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public showToolTip()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->getAnchorRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 11
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 14
    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    const/16 v6, 0x18

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v7, v5, v4

    add-int/2addr v7, v6

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v0, :cond_0

    sub-int/2addr v0, v4

    add-int/lit8 v5, v0, -0x18

    .line 17
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 19
    iget-object v2, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    .line 20
    new-instance v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v5, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v5

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
