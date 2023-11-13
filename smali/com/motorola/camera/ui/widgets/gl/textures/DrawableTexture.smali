.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "DrawableTexture.java"


# instance fields
.field public mResId:I

.field public mScaleHeight:F

.field public mScaleWidth:F

.field public mTextureState:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$Path$EnumUnboxingLocalUtility;->getMResId(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mResId:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$Path$EnumUnboxingLocalUtility;->getMSourceWidth(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$Path$EnumUnboxingLocalUtility;->getMSourceHeight(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 7
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

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
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I
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
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->updateTexture()V

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

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I
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
    .locals 6

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mResId:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I

    return-void

    .line 5
    :cond_1
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mResId:I

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 12
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    mul-float/2addr v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    .line 13
    :cond_3
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    float-to-int v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleWidth:F

    float-to-int v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mScaleHeight:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 15
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 18
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;->mTextureState:I

    return-void
.end method
