.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    .line 2
    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v0, v0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {p0, v1, v0}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$Companion;

    const-string/jumbo v1, "this$0"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$screenConfigList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->inflateViewStub()V

    .line 6
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;-><init>()V

    .line 8
    iput-object p0, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    .line 9
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 11
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$populateViewPager$1$1;

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$populateViewPager$1$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;)V

    invoke-virtual {v1, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 12
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->itemLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_11

    .line 14
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.TutorialAdapter"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    .line 16
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    .line 17
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const/16 v4, 0x8

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 21
    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    .line 22
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 24
    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 25
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 26
    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_6

    goto/16 :goto_5

    .line 27
    :cond_6
    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    .line 28
    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "mParentView.resources.ge\u2026.talkback_tooltip_titles)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v5, :sswitch_data_0

    const-string v2, ""

    goto :goto_3

    :sswitch_0
    const/4 v2, 0x3

    .line 29
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[SPOT_COLOR_VIDEO_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :sswitch_1
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[SPOT_COLOR_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :sswitch_2
    aget-object v2, v6, v3

    const-string/jumbo v5, "tutorialTitles[PORTRAIT_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_3
    const/4 v2, 0x6

    .line 32
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[MACRO_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_4
    const/4 v2, 0x5

    .line 33
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[ULTRA_RES_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_5
    const/4 v2, 0x4

    .line 34
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[CUTOUT_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_6
    const/4 v2, 0x1

    .line 35
    aget-object v2, v6, v2

    const-string/jumbo v5, "tutorialTitles[CINEMAGRAPH_TITLE_INDEX]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 37
    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleClose:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rootLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_b

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    .line 42
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;->FIRST_TIME_USE_PAGINATED:Lcom/motorola/camera/ui/controls_2020/tutorial/HelpScreensModes;

    if-ne v1, v2, :cond_e

    .line 43
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_10

    .line 44
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    goto :goto_6

    :cond_c
    move v2, v3

    .line 45
    :goto_6
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-eqz v4, :cond_10

    .line 46
    invoke-virtual {v4, v2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 47
    invoke-virtual {v4, v3}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    .line 48
    new-instance v2, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    invoke-direct {v2}, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;-><init>()V

    invoke-virtual {v4, v1, v2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    .line 49
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 51
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 52
    :goto_7
    invoke-virtual {v4, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_8

    .line 53
    :cond_e
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_10
    :goto_8
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->updateTutorialControl(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    .line 55
    :cond_11
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f11037f -> :sswitch_6
        0x7f110380 -> :sswitch_5
        0x7f110385 -> :sswitch_4
        0x7f110388 -> :sswitch_3
        0x7f11038c -> :sswitch_2
        0x7f110392 -> :sswitch_1
        0x7f110393 -> :sswitch_0
    .end sparse-switch
.end method
