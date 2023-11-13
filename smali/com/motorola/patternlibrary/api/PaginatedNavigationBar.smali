.class public Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PaginatedNavigationBar.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mNegativeButton:Lcom/google/android/material/button/MaterialButton;

.field public mNegativeButtonText:Ljava/lang/String;

.field public mPositiveButton:Lcom/google/android/material/button/MaterialButton;

.field public mPositiveButtonText:Ljava/lang/String;

.field public mScrollingLayout:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

.field public mShowNavigationButtons:Ljava/lang/Boolean;

.field public mShowNegativeButtonOnStart:Ljava/lang/Boolean;

.field public mSize:I

.field public mViewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/core/util/DebugUtils;->PaginatedNavigationBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButtonText:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButtonText:Ljava/lang/String;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNavigationButtons:Ljava/lang/Boolean;

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNegativeButtonOnStart:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0d00c1

    .line 10
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a02bb

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02fe

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02e2

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mScrollingLayout:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    .line 14
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNavigationButtons:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNegativeButtonOnStart:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->checkButtonVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$1;

    invoke-direct {p2, p0}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$1;-><init>(Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;

    invoke-direct {p2, p0}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$2;-><init>(Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final checkButtonVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNavigationButtons:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNegativeButtonOnStart:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 7
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 9
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 12
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f110157

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f080278

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 15
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f080279

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getShowNavigationButtons()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNavigationButtons:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getShowNegativeButtonOnStart()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNegativeButtonOnStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setNavigationButtons(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNavigationButtons:Ljava/lang/Boolean;

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mNegativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mPositiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setShowNegativeButtonOnStart(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mShowNegativeButtonOnStart:Ljava/lang/Boolean;

    return-void
.end method

.method public setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mSize:I

    .line 3
    new-instance v0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar$3;-><init>(Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/PaginatedNavigationBar;->mScrollingLayout:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    .line 6
    new-instance v0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    invoke-direct {v0}, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;-><init>()V

    invoke-virtual {p0, p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    return-void
.end method
