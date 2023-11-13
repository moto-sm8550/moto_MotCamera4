.class public Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;
.source "FaceTexture.java"


# instance fields
.field public final mDensity:F

.field public final mFaceMatrix:[F

.field public mMirror:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

.field public final mVertices:[F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 2
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    const/16 p3, 0x10

    new-array p3, p3, [F

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mFaceMatrix:[F

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/16 p1, 0xc

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    .line 6
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    return-void
.end method


# virtual methods
.method public final declared-synchronized getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method

.method public final updateTouchRect()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 3
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    .line 5
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 6
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    .line 8
    :goto_0
    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v1

    .line 9
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 10
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/16 v5, 0x10

    new-array v15, v5, [F

    .line 11
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v5, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v16, v6, v7

    .line 12
    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float v17, v5, v7

    const/4 v5, 0x3

    new-array v14, v5, [F

    const/4 v13, 0x0

    .line 13
    invoke-static {v15, v13}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 14
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mFaceMatrix:[F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v15, v5, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    .line 15
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mMirror:Z

    const/16 v18, 0x6

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v18

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v2, v2, v13

    :goto_1
    move v5, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    const/4 v6, 0x4

    aget v6, v2, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v19, 0x0

    move-object v8, v15

    move-object v10, v1

    move-object v12, v3

    move/from16 v20, v13

    move v13, v2

    move-object v2, v14

    move-object/from16 v21, v15

    move/from16 v15, v19

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 16
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    aget v6, v2, v20

    sub-float v6, v6, v16

    iput v6, v5, Landroid/graphics/RectF;->left:F

    aget v6, v2, v4

    sub-float v6, v6, v17

    .line 17
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 18
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mMirror:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v5, v5, v20

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v5, v5, v18

    :goto_2
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mVertices:[F

    aget v6, v6, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v21

    move-object v10, v1

    move-object v12, v3

    move-object v14, v2

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    aget v3, v2, v20

    sub-float v3, v3, v16

    iput v3, v1, Landroid/graphics/RectF;->right:F

    aget v2, v2, v4

    sub-float v2, v2, v17

    .line 20
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 21
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_5

    .line 23
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v3

    if-lez v5, :cond_4

    .line 24
    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_5

    .line 26
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    :cond_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v2

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/high16 v3, 0x42480000    # 50.0f

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 28
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 29
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mTouchRect:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3e23d70a

    mul-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    .line 32
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/FaceTexture;->mDensity:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 33
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    return-void
.end method
