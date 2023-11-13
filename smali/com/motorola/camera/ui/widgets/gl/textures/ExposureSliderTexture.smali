.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ExposureSliderTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;,
        Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;
    }
.end annotation


# instance fields
.field public final mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

.field public final mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;

.field public mCurrentValue:I

.field public final mDensity:F

.field public final mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mLevelCount:I

.field public final mRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchAcc:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;

    .line 3
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v1, 0x7f08018f

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    .line 7
    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    .line 8
    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    .line 9
    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    iget v2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v2, v1

    invoke-virtual {p2, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    .line 11
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    .line 12
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    .line 13
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 3
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 4
    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->offset(FF)V

    return-object v0
.end method

.method public final loadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget p1, p3, Landroid/graphics/PointF;->y:F

    .line 2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    int-to-float p3, p3

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    .line 3
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 4
    iget p3, p3, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float p1, p1

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    add-float/2addr p1, p3

    float-to-double p4, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_1

    .line 7
    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    const/high16 p2, 0x3f800000    # 1.0f

    rem-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->dragUpdate(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    .line 2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyActiveBarAnimation(Z)V

    .line 8
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->barTouchDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouchUp()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyActiveBarAnimation(Z)V

    .line 7
    invoke-interface {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->barTouchUp(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setProgress(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 4
    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-ltz p1, :cond_0

    const p1, 0x7f08018f

    goto :goto_0

    :cond_0
    const p1, 0x7f080190

    :goto_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    .line 8
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 10
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 12
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mWidth:F

    add-float/2addr v0, p1

    .line 13
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    add-float/2addr v1, p1

    float-to-int v4, v0

    float-to-int v5, v1

    .line 14
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 15
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mWidth:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    invoke-direct {v0, v3, v3, v1, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-float/2addr p1, v2

    .line 18
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 20
    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    mul-float/2addr v1, v2

    .line 21
    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 22
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 23
    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v2

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    .line 25
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 26
    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float v8, v8

    sub-float/2addr p1, v8

    .line 27
    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    .line 28
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr p1, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, p1

    div-float/2addr v7, v2

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 30
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v8, v7, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 31
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v3

    add-float/2addr v7, v1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 32
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    .line 33
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f06037f

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 36
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 37
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 38
    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 39
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 40
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 41
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    .line 42
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f0603e0

    .line 43
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 46
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 48
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, v1, Landroid/graphics/RectF;->top:F

    .line 49
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 50
    monitor-enter p0

    const/4 p1, 0x1

    .line 51
    :try_start_0
    invoke-virtual {p0, v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_1
    return-void
.end method
