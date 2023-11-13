.class public Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "XmlTexture.java"


# instance fields
.field public mColor:I

.field public mFixedSize:Z

.field public mResId:I

.field public mScaleHeight:F

.field public mScaleWidth:F

.field public mTextureState:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    .line 8
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I
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

.method public final declared-synchronized onPreDraw()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->updateTexture()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->onPreDraw()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    :cond_0
    return-void
.end method

.method public final setResource(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I
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

.method public final updateTexture()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void

    .line 5
    :cond_1
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mResId:I

    sget-object v5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    instance-of v4, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_3

    .line 8
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    .line 11
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 12
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    .line 13
    :cond_2
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    if-eq v4, v2, :cond_3

    .line 14
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 15
    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    float-to-int v2, v2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    float-to-int v2, v2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 17
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 20
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mTextureState:I

    return-void
.end method
