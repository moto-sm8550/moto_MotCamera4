.class public final Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "FrontDisplayFlashTexture.java"


# instance fields
.field public isTripodMode:Z

.field public mBottomAlpha:F

.field public final mColor:[F

.field public final mHollowSize:[F

.field public mHollowTop:F

.field public mLineWidth:F

.field public final mMiddleSize:[F

.field public mRadius:F

.field public mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

.field public final mSize:[F

.field public mTopGuide:F

.field public mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    new-array v0, p1, [F

    .line 5
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    new-array p1, p1, [F

    .line 6
    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mBottomAlpha:F

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    .line 12
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setColor(I)V

    .line 13
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScaledHeight()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result p0

    return p0
.end method

.method public final getScaledWidth()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result p0

    return p0
.end method

.method public final getTopHeight(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->getScaledHeight()F

    move-result p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sub-float/2addr p0, v0

    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    const/16 v2, 0x303

    .line 2
    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->DISPLAY_FLASH:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    invoke-interface {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getShader(Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 5
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    .line 6
    invoke-virtual {v2, v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 9
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 10
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 11
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mBottomAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 12
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 13
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRadius:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 14
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    .line 15
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 16
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 17
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 18
    invoke-static {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 19
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->resetBlendFunc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    aput p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setHollowSize(FF)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_2

    neg-float v1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 1
    :try_start_0
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v4

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p2

    .line 2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v1, v6, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr v1, v5

    aput v1, p1, v2

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr v1, v2

    aput v1, p1, v3

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    aget p1, p1, v3

    div-float v1, p2, v4

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->getTopHeight(F)F

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p2

    mul-float v0, p1, p2

    :cond_1
    move p1, v0

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    aget p2, p2, v3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr p2, v0

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    aput v0, p1, v2

    .line 12
    aput v0, p1, v3

    .line 13
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setLineWidth(F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setModuleSizes(FF)V
    .locals 5

    monitor-enter p0

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v2, p2, v1

    div-float/2addr p1, v1

    neg-float v3, p2

    div-float/2addr v3, v1

    .line 1
    :try_start_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v2, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    const/4 v2, 0x0

    aput v0, p1, v2

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    aget p1, p1, v1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    aget v2, v0, v1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    goto :goto_0

    .line 5
    :cond_0
    aget p1, v0, v1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->getTopHeight(F)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setRect(Lcom/motorola/camera/ui/widgets/gl/RectWrapper;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v0, v1

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v3, 0x4

    .line 3
    move-object v4, v2

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    aput v4, v0, v3

    const/4 v3, 0x1

    aput v4, v0, v3

    const/4 v4, 0x7

    const/16 v5, 0xa

    .line 4
    move-object v6, v2

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    aput v6, v0, v5

    aput v6, v0, v4

    const/4 v4, 0x3

    const/16 v5, 0x9

    .line 5
    move-object v6, v2

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    aput v6, v0, v5

    aput v6, v0, v4

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v4

    aput p1, v0, v3

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
