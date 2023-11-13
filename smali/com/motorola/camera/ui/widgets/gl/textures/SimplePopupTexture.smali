.class public Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SimplePopupTexture.java"


# instance fields
.field public mArrowDirection:I

.field public mArrowPosition:F

.field public final mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

.field public final mArrowThickness:F

.field public final mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public mDensity:F

.field public mRadius:F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowDirection:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mDensity:F

    const v0, 0x3d4ccccd

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mRadius:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowThickness:F

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    aput p2, v2, p1

    const/4 p1, 0x2

    aput p2, v2, p1

    const/4 p1, 0x3

    aput p2, v2, p1

    const/4 p1, 0x0

    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[IF)V

    .line 8
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    .line 4
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    cmpl-float v4, v1, v5

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v2, Landroid/graphics/PointF;->x:F

    :goto_1
    div-float/2addr v4, v6

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget v1, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    :goto_2
    iget v1, v2, Landroid/graphics/PointF;->y:F

    :goto_3
    div-float/2addr v1, v6

    .line 6
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v5, v3, v4

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v6, v0, v1

    add-float/2addr v3, v4

    sub-float/2addr v0, v1

    invoke-direct {v2, v5, v6, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SimplePopupTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
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
