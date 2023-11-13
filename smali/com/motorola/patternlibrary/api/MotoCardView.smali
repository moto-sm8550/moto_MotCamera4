.class public Lcom/motorola/patternlibrary/api/MotoCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "MotoCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;,
        Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;
    }
.end annotation


# instance fields
.field public mCardStyle:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

.field public mControlButtonsVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

.field public mHeadlineText:Ljava/lang/String;

.field public mIcon:Landroid/widget/ImageView;

.field public mIconResource:I

.field public mNegativeButton:Lcom/google/android/material/button/MaterialButton;

.field public mNegativeButtonOnClickListener:Landroid/view/View$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/String;

.field public mNegativeButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

.field public mOverLineText:Ljava/lang/String;

.field public mOverLineVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

.field public mPositiveButton:Lcom/google/android/material/button/MaterialButton;

.field public mPositiveButtonOnClickListener:Landroid/view/View$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/String;

.field public mPositiveButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

.field public mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/motorola/patternlibrary/api/MotoCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/patternlibrary/api/MotoCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final applyCardStyle()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mCardStyle:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x7f0a00cf

    const v2, 0x7f0a00ce

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f120298

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f120296

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f120299

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f120297

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    return-void
.end method

.method public final applyControlButtonVisibility()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mControlButtonsVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a0388

    const/16 v3, 0x8

    const v4, 0x7f0a00c9

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final applyOverlineVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x7f0a00ce

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getCardStyle()Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mCardStyle:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    return-object p0
.end method

.method public getControlButtonsVisibility()Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mControlButtonsVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    return-object p0
.end method

.method public getHeadlineText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mHeadlineText:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResource()I
    .locals 0

    iget p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIconResource:I

    return p0
.end method

.method public getNegativeButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public getNegativeButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativeButtonVisibility()Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    return-object p0
.end method

.method public getOverLineText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineText:Ljava/lang/String;

    return-object p0
.end method

.method public getOverLineVisibility()Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    return-object p0
.end method

.method public getPositiveButton()Lcom/google/android/material/button/MaterialButton;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public getPositiveButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveButtonVisibility()Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f0d0092

    .line 1
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a00cd

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00cb

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a00ca

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0802d3

    if-nez p2, :cond_0

    .line 5
    sget-object p1, Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;->REGULAR:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setCardStyle(Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;)V

    .line 6
    sget-object p1, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->VISIBLE:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setPositiveButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setControlButtonsVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setOverLineVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/motorola/patternlibrary/api/MotoCardView;->setIconResource(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonText(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setPositiveButtonText(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1101a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setHeadlineText(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setOverLineText(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11008b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Landroidx/core/util/DebugUtils;->MotoCardView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    :try_start_0
    invoke-static {}, Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;->values()[Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    move-result-object p2

    const/4 v1, 0x3

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p2, p2, v1

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mCardStyle:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    .line 19
    invoke-static {}, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->values()[Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    move-result-object p2

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mControlButtonsVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    .line 21
    invoke-static {}, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->values()[Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    move-result-object p2

    const/4 v2, 0x7

    .line 22
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    .line 23
    invoke-static {}, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->values()[Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    move-result-object p2

    const/16 v2, 0x9

    .line 24
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    .line 25
    invoke-static {}, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->values()[Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    move-result-object p2

    const/4 v2, 0x5

    .line 26
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    const/4 p2, 0x6

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineText:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mHeadlineText:Ljava/lang/String;

    const/16 p2, 0xa

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mSummary:Ljava/lang/String;

    const/4 p2, 0x2

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIconResource:I

    .line 31
    iget-object v1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIcon:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p2, 0x4

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonText:Ljava/lang/String;

    const/16 p2, 0x8

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyCardStyle()V

    .line 37
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyControlButtonVisibility()V

    .line 38
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyOverlineVisibility()V

    return-void

    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public setCardStyle(Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mCardStyle:Lcom/motorola/patternlibrary/api/MotoCardView$MotoCardStyle;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyCardStyle()V

    return-void
.end method

.method public setControlButtonsVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mControlButtonsVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyControlButtonVisibility()V

    return-void
.end method

.method public setHeadlineText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mHeadlineText:Ljava/lang/String;

    const p1, 0x7f0a00cf

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mHeadlineText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIconResource:I

    .line 2
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0a00cd

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mIconResource:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNegativeButton(Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonOnClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0a00ca

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonText:Ljava/lang/String;

    const p1, 0x7f0a00ca

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    const p1, 0x7f0a00cb

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const v3, 0x7f0a00ca

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const v1, 0x3ee66666

    .line 7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setOverLineText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineText:Ljava/lang/String;

    const p1, 0x7f0a00ce

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOverLineVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mOverLineVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->applyOverlineVisibility()V

    return-void
.end method

.method public setPositiveButton(Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mNegativeButton:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonOnClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0a00cb

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonText:Ljava/lang/String;

    const p1, 0x7f0a00cb

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    const p1, 0x7f0a00ca

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    iget-object v0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButtonVisibility:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x3ee66666

    .line 5
    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mPositiveButton:Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 7
    iput p0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    :goto_0
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mSummary:Ljava/lang/String;

    const p1, 0x7f0a00c8

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/patternlibrary/api/MotoCardView;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
