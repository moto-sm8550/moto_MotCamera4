.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SuperSlowMotionTooltip"
.end annotation


# instance fields
.field public final synthetic $$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

.field public gravity:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

.field public final tooltipCrossHeight:F

.field public final tooltipCrossOffset:F

.field public view:Landroid/view/View;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v0, 0x7f11052d

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-direct {p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    .line 4
    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703eb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossHeight:F

    .line 6
    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703ed

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 8
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    .line 10
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossOffset:F

    const/16 p1, 0x30

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->unregisterLayoutListener()V

    .line 2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final rotate(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v3, :cond_4

    sub-float/2addr v6, p1

    .line 4
    invoke-virtual {p0, v6, v2, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_7

    :cond_4
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    if-eqz v2, :cond_6

    :goto_4
    move v4, v5

    goto :goto_5

    :cond_6
    const/high16 v2, 0x43870000    # 270.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v4, :cond_9

    .line 6
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_8

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    goto :goto_6

    :cond_8
    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    sub-float v4, v2, v4

    :goto_6
    int-to-float v2, v0

    div-float v5, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v5, v1

    const/16 v1, 0x9

    int-to-float v1, v1

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 9
    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v6, p1

    .line 10
    invoke-virtual {p0, v6, v4, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 11
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_9
    :goto_7
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->showTooltip()V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip$show$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip$show$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public final showTooltip()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v4, "adapter as ControlBarAdapter<*>).currentList"

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_5

    .line 3
    :cond_2
    check-cast v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 4
    iget-object v6, v5, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 5
    iget-object v6, v6, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 6
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 7
    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 8
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_4
    move-object v7, v2

    .line 9
    :goto_1
    check-cast v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-nez v7, :cond_5

    goto/16 :goto_5

    .line 10
    :cond_5
    iget-object v5, v5, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 11
    iget-object v5, v5, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 12
    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 13
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 14
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v5, v3

    int-to-float v6, v6

    .line 15
    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    aget v5, v5, v1

    int-to-float v5, v5

    .line 16
    iput v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    const/4 v5, 0x0

    .line 17
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 18
    iget v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_a

    const/16 v8, 0x5a

    if-eq v6, v8, :cond_9

    const/16 v8, 0xb4

    if-eq v6, v8, :cond_8

    const/16 v8, 0x10e

    if-eq v6, v8, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 20
    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v6, v0

    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    div-float v5, v0, v7

    goto :goto_3

    .line 23
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    .line 24
    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v6, v0

    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossOffset:F

    sub-float/2addr v5, v6

    add-float/2addr v5, v0

    iput v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    const/16 v0, 0x33

    goto :goto_4

    .line 27
    :cond_b
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    int-to-float v0, v0

    .line 28
    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    add-float/2addr v6, v5

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossOffset:F

    add-float/2addr v6, v5

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    const/16 v0, 0x35

    .line 29
    :goto_4
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    .line 30
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    instance-of v5, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_d

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_6

    :cond_d
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_e

    goto :goto_7

    .line 31
    :cond_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_7

    .line 32
    :cond_f
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 33
    iget-object v0, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 34
    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 35
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 36
    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 37
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v2, v4

    .line 38
    :cond_11
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-nez v2, :cond_12

    :goto_7
    move v1, v3

    :cond_12
    if-eqz v1, :cond_13

    .line 39
    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int v4, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v5, v0

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIIIILandroid/view/View;ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    .line 41
    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->rotate(F)V

    .line 43
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/AnchorViewLayoutDelegateImpl;->unregisterLayoutListener()V

    :cond_13
    return-void
.end method
