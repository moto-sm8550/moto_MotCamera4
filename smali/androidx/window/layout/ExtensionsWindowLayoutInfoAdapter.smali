.class public final Landroidx/window/layout/ExtensionsWindowLayoutInfoAdapter;
.super Ljava/lang/Object;
.source "ExtensionsWindowLayoutInfoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionsWindowLayoutInfoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionsWindowLayoutInfoAdapter.kt\nandroidx/window/layout/ExtensionsWindowLayoutInfoAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,89:1\n1601#2,9:90\n1849#2:99\n1850#2:101\n1610#2:102\n1#3:100\n*S KotlinDebug\n*F\n+ 1 ExtensionsWindowLayoutInfoAdapter.kt\nandroidx/window/layout/ExtensionsWindowLayoutInfoAdapter\n*L\n51#1:90,9\n51#1:99\n51#1:101\n51#1:102\n51#1:100\n*E\n"
.end annotation


# direct methods
.method public static final translate$window_release(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/FoldingFeature;
    .locals 13

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    sget-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v4

    if-eq v4, v3, :cond_3

    if-eq v4, v1, :cond_2

    return-object v2

    .line 5
    :cond_2
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_1

    .line 6
    :cond_3
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 7
    :goto_1
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "oemFeature.bounds"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string v9, "activity.windowManager.currentWindowMetrics.bounds"

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v9, p0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/graphics/Rect;->top:I

    iget v11, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 11
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v9, v10, v11, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v4, v7

    const/4 p0, 0x0

    if-nez v4, :cond_4

    sub-int v7, v8, v6

    if-nez v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, p0

    :goto_2
    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    sub-int/2addr v8, v6

    .line 12
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eq v8, v6, :cond_6

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v4, v6, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v8, v6, :cond_7

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v4, v6, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v8, v6, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v4, v6, :cond_8

    :goto_3
    move v3, p0

    :cond_8
    if-eqz v3, :cond_9

    .line 15
    new-instance v2, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance p0, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, p0, v0, v1}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/FoldingFeature$State;)V

    :cond_9
    return-object v2
.end method

.method public static final translate$window_release(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    const-string v0, "info.displayFeatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    .line 20
    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_1

    const-string v2, "feature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-static {p0, v1}, Landroidx/window/layout/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/FoldingFeature;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_2
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method
