.class public final Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;
.super Ljava/lang/Object;
.source "DropDownGalleryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/patternlibrary/api/DropDownGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanelToggler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/DropDownGalleryView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;->this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;->this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    .line 2
    iget-boolean v0, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpanded:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContainer:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025d

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 7
    iget-object v1, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpandedView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCollapsedView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mGalleryView:Lcom/motorola/patternlibrary/api/GalleryView;

    iget p1, p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mCurrentPage:I

    invoke-virtual {v0, p1}, Lcom/motorola/patternlibrary/api/GalleryView;->setCurrentPage(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->collapseDropDownGalleryView()V

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView$PanelToggler;->this$0:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    .line 13
    iget-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpanded:Z

    xor-int/lit8 p1, p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->mExpanded:Z

    return-void
.end method
