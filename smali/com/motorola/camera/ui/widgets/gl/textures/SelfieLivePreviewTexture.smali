.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SelfieLivePreviewTexture.java"


# instance fields
.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mProjectMatrix:[F

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 6

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    invoke-direct {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 8
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 10
    invoke-static {p1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onDraw([F[F)V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v1, p2, v0

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    .line 3
    aget-object v3, p2, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    .line 4
    aget-object v3, p2, v0

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 5
    aget-object v4, p2, v2

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v3, v4

    .line 6
    aget-object v0, p2, v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 7
    aget-object p2, p2, v2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p2

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v7, v6

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v7, v1

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float v1, v6, v1

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v6, p2

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float v9, v6, v3

    int-to-float p2, p2

    div-float/2addr p2, v8

    sub-float/2addr p2, v3

    const v3, 0x419feb85

    add-float v10, v0, v3

    const/high16 v11, 0x42c80000    # 100.0f

    move v6, v7

    move v7, v1

    move v8, v9

    move v9, p2

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 10
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 12
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Matrices;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final set3dTranslationX(FFFF)D
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v5, p1, v4

    div-float/2addr v5, v1

    float-to-double v5, v5

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    float-to-double v7, v1

    float-to-double v9, v4

    .line 2
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    div-double/2addr v7, v11

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    move/from16 v1, p3

    float-to-double v13, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    sub-double/2addr v11, v15

    double-to-float v1, v11

    const/4 v4, 0x0

    aput v1, v3, v4

    neg-float v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    const/4 v11, 0x1

    aput v1, v3, v11

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    div-double v19, v19, v17

    add-double v19, v19, v15

    sub-double v11, v19, v7

    double-to-float v11, v11

    const/4 v12, 0x2

    aput v11, v3, v12

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v3, v11

    const/4 v11, 0x4

    aput v12, v3, v11

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    div-double v19, v19, v17

    move-wide/from16 p2, v13

    add-double v12, v19, v15

    double-to-float v12, v12

    const/4 v13, 0x5

    aput v12, v3, v13

    const/4 v12, 0x6

    aput v1, v3, v12

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-wide/from16 v19, p2

    mul-double v14, v14, v19

    div-double v14, v14, v17

    sub-double/2addr v12, v14

    sub-double/2addr v12, v7

    double-to-float v1, v12

    const/4 v12, 0x7

    aput v1, v3, v12

    const/16 v1, 0x8

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v3, v1

    const/16 v1, 0x9

    const/4 v11, 0x0

    aput v11, v3, v1

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v19

    div-double v15, v15, v17

    sub-double/2addr v13, v15

    double-to-float v1, v13

    const/16 v13, 0xa

    aput v1, v3, v13

    div-float v1, v2, v4

    const/16 v2, 0xb

    aput v1, v3, v2

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v19

    div-double v15, v15, v17

    add-double/2addr v15, v13

    sub-double v13, v15, v7

    double-to-float v2, v13

    const/16 v4, 0xc

    aput v2, v3, v4

    const/16 v2, 0xd

    const/4 v4, 0x0

    aput v4, v3, v2

    const/16 v2, 0xe

    aput v12, v3, v2

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v19

    div-double v15, v15, v17

    add-double/2addr v13, v15

    double-to-float v2, v13

    const/16 v4, 0xf

    aput v2, v3, v4

    const/16 v2, 0x10

    aput v1, v3, v2

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v19

    div-double v4, v4, v17

    sub-double/2addr v1, v4

    sub-double/2addr v1, v7

    double-to-float v1, v1

    const/16 v2, 0x11

    aput v1, v3, v2

    const/16 v1, 0x12

    aput v12, v3, v1

    const/16 v1, 0x13

    aput v12, v3, v1

    .line 11
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v0, v7, v17

    div-double v13, v19, v0

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    add-double/2addr v0, v2

    sub-double/2addr v0, v7

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final set3dTranslationY(FFFF)D
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x4

    int-to-float v5, v4

    mul-float v5, v5, p1

    div-float/2addr v5, v1

    float-to-double v5, v5

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    neg-double v5, v5

    float-to-double v7, v1

    int-to-double v9, v4

    .line 2
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    div-double/2addr v7, v11

    neg-float v1, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v1, v11

    const/4 v12, 0x0

    aput v1, v3, v12

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v7

    move/from16 v14, p4

    float-to-double v14, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    sub-double v12, v12, v16

    double-to-float v12, v12

    const/4 v13, 0x1

    aput v12, v3, v13

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v14

    div-double v20, v20, v18

    add-double v20, v20, v16

    sub-double v11, v20, v7

    double-to-float v11, v11

    const/4 v12, 0x2

    aput v11, v3, v12

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v3, v11

    aput v12, v3, v4

    const/4 v4, 0x5

    aput v1, v3, v4

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v14

    div-double v20, v20, v18

    add-double v12, v20, v16

    double-to-float v1, v12

    const/4 v4, 0x6

    aput v1, v3, v4

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    div-double v16, v16, v18

    sub-double v11, v11, v16

    sub-double/2addr v11, v7

    double-to-float v1, v11

    const/4 v4, 0x7

    aput v1, v3, v4

    const/16 v1, 0x8

    const/4 v4, 0x0

    aput v4, v3, v1

    const/16 v1, 0x9

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/16 v2, 0xa

    aput v1, v3, v2

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    div-double v16, v16, v18

    sub-double v11, v11, v16

    double-to-float v2, v11

    const/16 v11, 0xb

    aput v2, v3, v11

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    div-double v16, v16, v18

    add-double v16, v16, v11

    sub-double v11, v16, v7

    double-to-float v2, v11

    const/16 v11, 0xc

    aput v2, v3, v11

    const/16 v2, 0xd

    aput v4, v3, v2

    const/16 v2, 0xe

    const/4 v11, 0x0

    aput v11, v3, v2

    const/16 v2, 0xf

    aput v1, v3, v2

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v14

    div-double v11, v11, v18

    add-double/2addr v11, v1

    double-to-float v1, v11

    const/16 v2, 0x10

    aput v1, v3, v2

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v7

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v14

    div-double v5, v5, v18

    sub-double/2addr v1, v5

    sub-double/2addr v1, v7

    double-to-float v1, v1

    const/16 v2, 0x11

    aput v1, v3, v2

    const/16 v1, 0x12

    aput v4, v3, v1

    const/16 v1, 0x13

    aput v4, v3, v1

    .line 15
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v0, v7, v18

    div-double v0, v14, v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 18
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v14

    div-double v0, v0, v18

    add-double/2addr v0, v2

    sub-double/2addr v0, v7

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public final setPostScreenTranslation(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    return-void
.end method
