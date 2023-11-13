.class public final Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;
.super Ljava/lang/Object;
.source "DropDownPreferenceCategory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v2, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    .line 5
    iget-boolean v3, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/4 v4, 0x1

    const v5, 0x7f0a03e0

    const v6, 0x7f0a0148

    if-nez v3, :cond_3

    .line 6
    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$oneLineSummaryHeight:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$twoLineSummaryHeight:I

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v3, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object v7, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayoutContainer:Landroid/widget/RelativeLayout;

    iget-object v8, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$arrowLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v9, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconHeight:I

    iget-object v10, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$imageView:Landroid/widget/ImageView;

    iget v11, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$coLLapseHeight:I

    iget v12, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$expandHeight:I

    iget-object v2, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    invoke-virtual {v3, v7, v11, v9, v2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideViewIcon(Landroid/view/View;IILandroid/view/View;)V

    .line 9
    invoke-virtual {v3, v8, v11, v12}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideView(Landroid/view/View;II)V

    .line 10
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7, v1, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideView(Landroid/view/View;II)V

    .line 11
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v3, 0x3f333333

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 12
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801af

    .line 13
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v1, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->access$300(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;-><init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v3, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayoutContainer:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$arrowLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v8, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconHeight:I

    iget-object v9, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$imageView:Landroid/widget/ImageView;

    iget v10, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$coLLapseHeight:I

    iget v11, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$expandHeight:I

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    invoke-virtual {v2, v3, v8, v1, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideViewIcon(Landroid/view/View;IILandroid/view/View;)V

    .line 19
    invoke-virtual {v2, v7, v11, v10}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideView(Landroid/view/View;II)V

    .line 20
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 22
    invoke-virtual {v2, v3, v6, v1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->slideView(Landroid/view/View;II)V

    .line 23
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const v0, 0x7f0801b0

    .line 24
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->access$500(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$2;

    invoke-direct {v1, p0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$2;-><init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 28
    :goto_1
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    .line 29
    iget-boolean v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    xor-int/2addr v0, v4

    .line 30
    iput-boolean v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    return-void
.end method
