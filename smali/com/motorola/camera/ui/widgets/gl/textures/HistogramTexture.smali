.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "HistogramTexture.java"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mDataList:[I

.field public final mDensity:F

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mHeight:F

.field public mHistogramBitmap:Landroid/graphics/Bitmap;

.field public final mMargin:F

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

.field public final mWidth:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, p1, p2

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, p1

    mul-float/2addr v0, p2

    sub-float/2addr v1, v0

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    sub-float/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized hide()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized show()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateHistogram()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v4, -0x1000000

    .line 8
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v4, 0x66

    .line 11
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    mul-float v6, v5, v1

    mul-float/2addr v5, v1

    const/4 v1, 0x0

    invoke-direct {v4, v1, v1, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v4, -0x1

    .line 13
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    array-length v5, v1

    new-array v6, v5, [Landroid/graphics/Point;

    .line 17
    array-length v7, v1

    move v8, v3

    move v9, v8

    :goto_0
    if-ge v8, v7, :cond_3

    aget v10, v1, v8

    if-le v10, v9, :cond_2

    move v9, v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_5

    .line 18
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    rem-int v8, v1, v5

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v7, v8

    .line 19
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 20
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    aget v10, v10, v1

    int-to-float v10, v10

    int-to-float v11, v9

    div-float/2addr v10, v11

    mul-float/2addr v10, v8

    sub-float/2addr v8, v10

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v8, v10

    .line 21
    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 22
    new-instance v10, Landroid/graphics/Point;

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-direct {v10, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    .line 23
    aget-object v1, v6, v3

    .line 24
    array-length v5, v6

    add-int/2addr v5, v4

    aget-object v4, v6, v5

    .line 25
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v7, v8

    invoke-virtual {v5, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    array-length v1, v6

    move v7, v3

    :goto_3
    if-ge v7, v1, :cond_6

    aget-object v8, v6, v7

    .line 28
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 29
    :cond_6
    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    add-float/2addr v4, v6

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 31
    invoke-virtual {v0, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_8
    :goto_4
    return-void
.end method
