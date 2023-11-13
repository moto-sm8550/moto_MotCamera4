.class public final Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "BlurPreviewTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;
    }
.end annotation


# instance fields
.field public mBlurArea:Landroid/graphics/RectF;

.field public mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public mNeedCopyPreview:Z

.field public final mOffScreenBlurTexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public mPreviewVboId:I

.field public mReusePreview:Z

.field public mSetupFbo:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mUpdateVbo:Z

.field public mVboId:I

.field public final mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    const/16 v1, 0x14

    new-array v1, v1, [F

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    .line 9
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 10
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 11
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    .line 4
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mVboId:I

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
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

.method public final onDrawBlurFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;IZFF)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 2
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v2, 0x4100

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    .line 7
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mTextureId:I

    .line 8
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mBlurDirection:[F

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    aput v3, p2, v4

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 9
    :goto_1
    aput v1, p2, v0

    .line 10
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mFboSize:[F

    div-float p3, v2, p4

    aput p3, p2, v4

    div-float/2addr v2, p5

    .line 11
    aput v2, p2, v0

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->onDraw([F[F)V

    .line 13
    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    .line 3
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 4
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mNeedCopyPreview:Z

    .line 6
    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mNeedCopyPreview:Z

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setupFbo()V

    .line 13
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    .line 14
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->deleteVbo(I)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager;->getCustomVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    .line 17
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawPreviewFbo(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 20
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    move v4, v0

    move v0, p2

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 23
    rem-int/lit8 v2, v0, 0x2

    if-ne v2, v1, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, p2

    .line 24
    :goto_2
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    .line 25
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, v8

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawBlurFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;IZFF)V

    .line 27
    iget v4, v8, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_5
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawPreviewFbo(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mNeedCopyPreview:Z

    const/16 v1, 0x4100

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    .line 11
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    .line 13
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    .line 16
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    if-eqz v0, :cond_1

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    .line 21
    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    .line 22
    iput-boolean v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    const/4 v3, 0x1

    .line 23
    iput-boolean v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    .line 26
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 29
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized onPreviewChanged()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 3
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setBlurRect(Landroid/graphics/RectF;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 5
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 6
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 7
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    const/4 v4, 0x3

    aput v0, v3, v4

    const/4 v4, 0x4

    .line 9
    aput v2, v3, v4

    const/16 v4, 0x8

    .line 10
    aput v1, v3, v4

    const/16 v4, 0x9

    .line 11
    aput v2, v3, v4

    const/16 v2, 0xd

    .line 12
    aput v0, v3, v2

    const/16 v0, 0xe

    .line 13
    aput p1, v3, v0

    const/16 v0, 0x12

    .line 14
    aput v1, v3, v0

    const/16 v0, 0x13

    .line 15
    aput p1, v3, v0

    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setupFbo()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    int-to-float v1, v1

    .line 11
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v0, v0

    .line 12
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    const/4 v2, 0x0

    .line 15
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v4, v1, 0x4

    div-int/lit8 v5, v0, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 17
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v4, v1, 0x8

    div-int/lit8 v5, v0, 0x8

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v4, v1, 0x10

    div-int/lit8 v5, v0, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    .line 19
    :goto_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteVbo(I)V

    .line 6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteVbo(I)V
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
