.class public Lcom/motorola/patternlibrary/api/DropDownGalleryView;
.super Landroid/widget/LinearLayout;
.source "DropDownGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;
    }
.end annotation


# instance fields
.field public mBadge:Landroid/widget/TextView;

.field public mCollapsedView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mContainer:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field public mCurrentPage:I

.field public mEnableBadge:Z

.field public mExpanded:Z

.field public mExpandedView:Landroid/widget/FrameLayout;

.field public mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

.field public mIcon:Landroid/widget/ImageView;

.field public mMotoCardViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;"
        }
    .end annotation
.end field

.field public mReadIconDrawable:I

.field public mTitle:Landroid/widget/TextView;

.field public mUnReadIconDrawable:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpanded:Z

    .line 3
    iput v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    const v1, 0x7f0d005c

    .line 4
    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a008b

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    const v1, 0x7f0a03fd

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0212

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a01d7

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0108

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCollapsedView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a01e3

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/patternlibrary/api/GalleryView;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    const v1, 0x7f0a01b8

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpandedView:Landroid/widget/FrameLayout;

    .line 13
    iget-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCollapsedView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;

    invoke-direct {v2, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;-><init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01b6

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;

    invoke-direct {v2, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;-><init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a010a

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;

    invoke-direct {v2, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;-><init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/motorola/patternlibrary/api/DropDownGalleryView$1;

    invoke-direct {v2, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView$1;-><init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Landroidx/core/util/DebugUtils;->DropDownGalleryView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x3

    const v1, 0x7f080168

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    const p2, 0x7f080167

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mEnableBadge:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    iget-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mEnableBadge:Z

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setIconRes()V

    return-void

    :catchall_0
    move-exception p0

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final collapseDropDownGalleryView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContainer:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 4
    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    .line 6
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {v0}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result v0

    const/16 v2, 0x8

    if-gtz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContext:Landroid/content/Context;

    const v4, 0x7f06006a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {v3}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpandedView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCollapsedView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getBadgeIndicator()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result p0

    return p0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {v0}, Lcom/motorola/patternlibrary/api/GalleryView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    return v0
.end method

.method public getMaxTraversedPages()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
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

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getReadIconDrawable()I
    .locals 0

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnReadIconDrawable()I
    .locals 0

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    return p0
.end method

.method public final hideBadgeIndicator()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContext:Landroid/content/Context;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setBadgeIndicator(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {v0, p1}, Lcom/motorola/patternlibrary/api/GalleryView;->setBadgeIndicator(I)V

    .line 2
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {p1}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->hideBadgeIndicator()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {v0}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->getMotoCardViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->hideBadgeIndicator()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {p1}, Lcom/motorola/patternlibrary/api/GalleryView;->getBadgeIndicator()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/motorola/patternlibrary/api/GalleryView;->setBadgeIndicator(I)V

    :cond_1
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setIconRes()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    if-eqz v1, :cond_0

    .line 2
    iput v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    if-nez v1, :cond_1

    .line 4
    iput v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mIcon:Landroid/widget/ImageView;

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setListener(Lcom/motorola/patternlibrary/api/GalleryView$PageListener;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/GalleryView;->setListener(Lcom/motorola/patternlibrary/api/GalleryView$PageListener;)V

    return-void
.end method

.method public setMotoCardViews(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mBadge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 5
    iput-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mBadgeIndicator:I

    .line 7
    iget-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 8
    new-instance p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mMotoCardViews:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/motorola/patternlibrary/widget/CardViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mCardViewAdapter:Lcom/motorola/patternlibrary/widget/CardViewAdapter;

    .line 9
    iget-object v0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 11
    iget-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mPaginatedNavigationBar:Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;

    iget-object v0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v0}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070358

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 14
    iget-object v1, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/motorola/patternlibrary/api/GalleryView$2;

    invoke-direct {v2, p1, v0, p0}, Lcom/motorola/patternlibrary/api/GalleryView$2;-><init>(Lcom/motorola/patternlibrary/api/GalleryView;FF)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 15
    iget-object p0, p1, Lcom/motorola/patternlibrary/api/GalleryView;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/motorola/patternlibrary/api/GalleryView$3;

    invoke-direct {v0, p1}, Lcom/motorola/patternlibrary/api/GalleryView$3;-><init>(Lcom/motorola/patternlibrary/api/GalleryView;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setReadIconDrawable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mReadIconDrawable:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setIconRes()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnReadIconDrawable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mUnReadIconDrawable:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setIconRes()V

    return-void
.end method
