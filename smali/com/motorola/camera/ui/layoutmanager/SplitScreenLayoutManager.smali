.class public final Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.source "SplitScreenLayoutManager.java"


# instance fields
.field public mAvailableHeight:F

.field public final mFoldableBaseBottomMargin:I

.field public final mFoldableBaseClearanceHeight:I

.field public final mFoldableBaseComponentsMargin:I

.field public mFoldableBottomMargin:I

.field public mFoldableClearanceHeight:I

.field public mFoldableComponentsMargin:I

.field public final mIndicatorBarHeight:I

.field public mLayoutHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0022

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseBottomMargin:I

    const v0, 0x7f0b0024

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseComponentsMargin:I

    const v0, 0x7f0b0023

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseClearanceHeight:I

    const v0, 0x7f070174

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mIndicatorBarHeight:I

    .line 8
    instance-of p1, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->computeLayout()V

    :cond_0
    return-void
.end method

.method private calculateLayoutHeight()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    add-int/lit8 v0, v0, 0x48

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x38

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x44

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x46

    add-int/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mIndicatorBarHeight:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final computeLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseBottomMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseComponentsMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseClearanceHeight:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    .line 4
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    int-to-float v2, v2

    .line 5
    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 6
    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mAvailableHeight:F

    .line 7
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->calculateLayoutHeight()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mLayoutHeight:F

    .line 8
    :goto_0
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mLayoutHeight:F

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mAvailableHeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    if-lez v2, :cond_0

    int-to-float v1, v1

    const v3, 0x3f666666

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 9
    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    int-to-float v1, v2

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 10
    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    .line 11
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    .line 12
    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->calculateLayoutHeight()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mLayoutHeight:F

    .line 13
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    int-to-float v2, v2

    .line 14
    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 15
    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mAvailableHeight:F

    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout()V

    return-void
.end method

.method public final getBottomMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    return p0
.end method

.method public final getComponentsMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    return p0
.end method

.method public final getControlBarGuideline()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final getDualCapturePIPVerticalGuideline()F
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3

    mul-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3cf5c28f

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public final getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object p0

    return-object p0
.end method

.method public final getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float p0, p0

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    float-to-int p0, v2

    .line 4
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    return-object v1
.end method

.method public final getTrait$enumunboxing$()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p1, p1, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;->scale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SplitScreenLayoutManager{mBottomMargin="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentsMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFoldableClearanceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mLayoutHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailableHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mAvailableHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
