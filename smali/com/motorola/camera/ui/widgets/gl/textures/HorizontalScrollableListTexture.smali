.class public Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;
.source "HorizontalScrollableListTexture.java"


# instance fields
.field public final mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture$1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture$1;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/16 p1, 0x8

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized doLayout()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->doLayout()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/high16 v3, 0x42480000    # 50.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v4, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->scrollTo(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized layout()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 4
    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 5
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 7
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 8
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 11
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 12
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 14
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 15
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 17
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 18
    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    .line 19
    invoke-virtual {v4, v5, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 20
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    .line 21
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 22
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_3

    .line 23
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mLayoutSpec:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;

    .line 24
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutSpec;->mItemPadding:F

    add-float/2addr v2, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 26
    iput v2, v0, Landroid/graphics/PointF;->x:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    monitor-enter p0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p4, :cond_2

    const/16 p5, 0xb4

    if-ne p4, p5, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    :goto_0
    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 2
    :goto_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture$1;

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p4, p2, p3, p1, p5}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPreDraw([F[F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onPreDraw([F[F)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->animationUpdate([F)Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final scrollTo(F)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    mul-float v1, v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v1, v1

    invoke-virtual {p1, v1, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final updateScrollBarVisibility()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const v1, 0x3f333333

    sub-float v2, v0, v1

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->EPSION_ALPHA:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 5
    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v2, v3

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    return v2
.end method

.method public final updateScrollPosition()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HorizontalScrollableListTexture;->updateScrollBarVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 6
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    sub-float v3, v0, v3

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 8
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    add-float/2addr v6, v4

    div-float/2addr v6, v3

    int-to-float v2, v2

    div-float v3, v2, v0

    mul-float/2addr v3, v2

    sub-float v2, v0, v3

    div-float/2addr v0, v5

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    div-float/2addr v3, v5

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 10
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const v0, 0x3ca3d70a

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-virtual {p0, v0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void
.end method
