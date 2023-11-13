.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p0, Landroid/os/Bundle;

    const-string v1, "LAYOUT_X"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "RELOAD_RIGHT"

    .line 3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "CAROUSEL_SELECT_INDEX"

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    const-string v5, "CAROUSEL_WIDTH"

    .line 6
    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "CAROUSEL_TEXT"

    .line 8
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    .line 9
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 p0, 0x42600000    # 56.0f

    .line 10
    move-object v6, v4

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 11
    iget v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v6, p0

    float-to-int p0, v6

    move v6, v7

    .line 12
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 13
    new-instance v8, Landroid/widget/TextView;

    .line 14
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    .line 17
    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v8, v10, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    cmpl-float p0, v2, p0

    const/16 v2, 0x8

    if-lez p0, :cond_1

    .line 19
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    .line 21
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x41a00000    # 20.0f

    .line 22
    move-object v8, p0

    check-cast v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 23
    iget v8, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v8, v6

    float-to-int v6, v8

    .line 24
    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v8

    const/high16 v9, 0x41d00000    # 26.0f

    sub-float/2addr v8, v9

    .line 25
    check-cast p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 26
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v8, p0

    float-to-int p0, v8

    .line 27
    invoke-virtual {v5, v7, v7, v6, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 28
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 29
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    invoke-interface {v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v5

    const/high16 v6, 0x41e00000    # 28.0f

    sub-float/2addr v5, v6

    .line 32
    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 33
    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 34
    invoke-virtual {p0, v7, v7, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v1, v1

    .line 35
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 36
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mTalkbackRootView:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 40
    :cond_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
