.class public final synthetic Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;FLcom/motorola/camera/ui/layoutmanager/LayoutValue;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$1:F

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$1:F

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$3:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$4:I

    const-string/jumbo v4, "this$0"

    .line 1
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v4, v5}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    const v5, 0x7f0800d0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 3
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    .line 4
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    .line 5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 7
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_3

    .line 9
    :cond_0
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v4, v7}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    iget v4, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v4

    aget v4, v7, v4

    :goto_0
    if-eq v4, v6, :cond_3

    const/4 v2, 0x3

    if-eq v4, v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 11
    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v2

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    goto :goto_1

    .line 12
    :cond_3
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    .line 13
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    :goto_1
    mul-float/2addr v2, v4

    .line 14
    :goto_2
    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    .line 15
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    .line 16
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 18
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    .line 20
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "<get-viewfinderGuide>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    .line 22
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v1

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    mul-float/2addr v1, v2

    .line 23
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v1

    .line 24
    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    .line 25
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 27
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 29
    :goto_3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v2, :cond_5

    .line 31
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideTop$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-guideTop>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    .line 35
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 36
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideBottom$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-guideBottom>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    .line 37
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-void
.end method
