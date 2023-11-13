.class public final Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;
.super Ljava/lang/Object;
.source "DropDownPreferenceCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

.field public final synthetic val$arrowLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic val$coLLapseHeight:I

.field public final synthetic val$expandHeight:I

.field public final synthetic val$holder:Landroidx/preference/PreferenceViewHolder;

.field public final synthetic val$iconHeight:I

.field public final synthetic val$iconLayout:Landroid/widget/RelativeLayout;

.field public final synthetic val$iconLayoutContainer:Landroid/widget/RelativeLayout;

.field public final synthetic val$imageView:Landroid/widget/ImageView;

.field public final synthetic val$oneLineSummaryHeight:I

.field public final synthetic val$summary:Landroid/widget/TextView;

.field public final synthetic val$twoLineSummaryHeight:I


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroidx/preference/PreferenceViewHolder;Landroid/widget/TextView;IILandroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;ILandroid/widget/ImageView;IILandroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    iput-object p3, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$summary:Landroid/widget/TextView;

    iput p4, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$oneLineSummaryHeight:I

    iput p5, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$twoLineSummaryHeight:I

    iput-object p6, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayoutContainer:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$arrowLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput p8, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconHeight:I

    iput-object p9, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$imageView:Landroid/widget/ImageView;

    iput p10, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$coLLapseHeight:I

    iput p11, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$expandHeight:I

    iput-object p12, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, v0, v1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 4
    iget-object v2, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    .line 5
    iget-boolean v2, v2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    .line 6
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;-><init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;Landroid/view/View;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    .line 9
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    if-eqz p1, :cond_2

    .line 10
    iget-boolean p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    if-eqz p0, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;->onExpandFinish()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;->onCollapseFinish()V

    :cond_2
    :goto_1
    return-void
.end method
