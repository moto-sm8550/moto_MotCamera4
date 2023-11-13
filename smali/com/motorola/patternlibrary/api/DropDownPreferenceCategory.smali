.class public Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "DropDownPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;
    }
.end annotation


# instance fields
.field public animationTime:I

.field public mCollapse:Z

.field public mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/16 p1, 0x190

    .line 18
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    const p1, 0x7f0d005d

    .line 20
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/16 p1, 0x190

    .line 13
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    const p1, 0x7f0d005d

    .line 15
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/16 p1, 0x190

    .line 8
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    const p1, 0x7f0d005d

    .line 10
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/16 p1, 0x190

    .line 3
    iput p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mListener:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;

    const p1, 0x7f0d005d

    .line 5
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method public static access$300(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, v0

    int-to-double v4, v1

    .line 4
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    new-instance p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$3;

    invoke-direct {p1, p2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static access$500(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    new-instance v1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;

    invoke-direct {v1, p1, p2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$2;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public final addPreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getDimension(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    .line 5
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 7
    invoke-static {v2, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/Preference;",
            "Ljava/util/ArrayList<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3
    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 4
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p2
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 26

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v15, 0x0

    .line 2
    iput-boolean v15, v14, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 3
    iput-boolean v15, v14, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 4
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    .line 5
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    .line 7
    iget-object v1, v13, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f06031c

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f070126

    .line 9
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    move-result v11

    const v0, 0x7f07012a

    .line 10
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    move-result v10

    const v0, 0x7f070129

    .line 11
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    const v0, 0x7f07012b

    .line 12
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    move-result v9

    const v0, 0x7f070127

    .line 13
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    move-result v17

    const v0, 0x7f070128

    .line 14
    invoke-virtual {v13, v0}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getDimension(I)I

    move-result v18

    .line 15
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0218

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 17
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f0a0216

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 18
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    iget-object v7, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object v15, v6

    move-object/from16 v6, v19

    move-object v14, v7

    move-object/from16 v7, v21

    move v8, v9

    move/from16 v22, v9

    move-object v9, v12

    move/from16 v23, v10

    move v10, v11

    move/from16 v24, v11

    move/from16 v11, v23

    move-object/from16 v25, v12

    move-object/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;-><init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroidx/preference/PreferenceViewHolder;Landroid/widget/TextView;IILandroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;ILandroid/widget/ImageView;IILandroid/widget/RelativeLayout;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-boolean v0, v13, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x7f0a03e0

    const v3, 0x7f0a0148

    if-nez v0, :cond_0

    .line 21
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v4, 0x0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move/from16 v5, v24

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p1

    .line 23
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 25
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08027a

    move-object/from16 v4, v25

    .line 28
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0216

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v4, v25

    const v5, 0x7f0a0216

    .line 30
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move/from16 v7, v22

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move/from16 v7, v23

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const v7, 0x3f333333

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 34
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 35
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/16 v17, -0x2

    goto :goto_0

    :cond_1
    move/from16 v1, v18

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v1, v17

    .line 37
    :goto_1
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 40
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0801af

    .line 41
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCollapse"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const-string/jumbo v0, "superState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 3
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 4
    new-instance v2, Landroidx/preference/PreferenceGroup$SavedState;

    iget v3, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    invoke-direct {v2, v1, v3}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    const-string/jumbo v1, "superState"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    iget-boolean p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->mCollapse:Z

    const-string v1, "mCollapse"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final slideView(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    int-to-long v0, p0

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 3
    new-instance p2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$4;

    invoke-direct {p2, p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final slideViewIcon(Landroid/view/View;IILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget p0, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->animationTime:I

    int-to-long v0, p0

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 3
    new-instance p2, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$5;

    invoke-direct {p2, p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$5;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;

    invoke-direct {p1, p4, p3}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$6;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 8
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
