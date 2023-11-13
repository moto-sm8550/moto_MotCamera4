.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "PreviewStencilTexture.java"


# instance fields
.field public mRadius:F

.field public mUpdateVbo:Z

.field public mVboId:I

.field public mVertices:[F

.field public mVerticesSize:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->PREVIEW_STENCIL:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    invoke-interface {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getShader(Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    .line 8
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    .line 9
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 12
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 13
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 14
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    const/4 v5, 0x6

    invoke-static {v5, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const/high16 v4, -0x40800000    # -1.0f

    .line 15
    invoke-virtual {p0, v4, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 16
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v6, v7, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 17
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 18
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 19
    invoke-virtual {p0, v4, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 20
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v6, v7, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 21
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 22
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 23
    invoke-virtual {p0, v2, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 24
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 25
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 26
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v5, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 27
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final declared-synchronized setSize(FF)V
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v3, p2, v2

    div-float/2addr p1, v2

    neg-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    .line 4
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    mul-int/lit8 v1, p1, 0x2

    .line 5
    new-array v3, v1, [F

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6
    aput v4, v3, v5

    aput v4, v3, p2

    const/4 p2, 0x2

    .line 7
    aput v4, v3, p2

    .line 8
    iget p2, v0, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x3

    aput p2, v3, v6

    .line 9
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float v8, v6, v7

    const/4 v9, 0x4

    aput v8, v3, v9

    const/4 v8, 0x5

    .line 10
    aput p2, v3, v8

    add-int/lit8 v8, v1, -0x4

    .line 11
    aput v6, v3, v8

    add-int/lit8 v8, v1, -0x3

    sub-float/2addr p2, v7

    .line 12
    aput p2, v3, v8

    add-int/lit8 p2, v1, -0x2

    .line 13
    aput v6, v3, p2

    add-int/lit8 p2, v1, -0x1

    .line 14
    aput v4, v3, p2

    const/high16 p2, 0x42b40000    # 90.0f

    int-to-float p1, p1

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr p1, v3

    div-float/2addr p2, p1

    const/high16 p1, 0x43340000    # 180.0f

    div-float/2addr p2, p1

    const p1, 0x4048f5c3

    mul-float/2addr p2, p1

    const/4 p1, 0x6

    :goto_0
    add-int/lit8 v3, v1, -0x5

    if-gt p1, v3, :cond_0

    add-int/lit8 v3, p1, -0x6

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, p2

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float/2addr v6, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v3, v9

    add-float/2addr v3, v6

    aput v3, v4, p1

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    add-int/lit8 v4, p1, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v9, v6

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v6, v7

    add-float/2addr v6, v9

    aput v6, v3, v4

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    .line 18
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method
