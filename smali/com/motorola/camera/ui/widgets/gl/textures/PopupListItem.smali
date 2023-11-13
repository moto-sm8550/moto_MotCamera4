.class public Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "PopupListItem.java"


# instance fields
.field public mBackgroundColor:I

.field public final mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mDensity:F

.field public mIsRTL:Z

.field public mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mSelectedColor:I

.field public final mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mValue:Ljava/lang/Object;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mIsRTL:Z

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    .line 5
    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mSelectedColor:I

    .line 7
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v2, 0x7f06008e

    .line 8
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 9
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBackgroundColor:I

    .line 10
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v1, v3, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    invoke-direct {v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    .line 11
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v6, ""

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 12
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mIsRTL:Z

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    .line 3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mIsRTL:Z

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    .line 5
    invoke-virtual {v0, v4, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    add-float/2addr v1, v5

    .line 8
    invoke-virtual {v0, v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    .line 4
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    const/high16 v1, 0x438c0000    # 280.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x42600000    # 56.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 5
    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->layout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDraw([F[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-array v4, v4, [I

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mSelectedColor:I

    aput v5, v4, v3

    aput v5, v4, v2

    aput v5, v4, v1

    aput v5, v4, v0

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-array v4, v4, [I

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBackgroundColor:I

    aput v5, v4, v3

    aput v5, v4, v2

    aput v5, v4, v1

    aput v5, v4, v0

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    :cond_1
    return-void
.end method

.method public final setValueAndText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mValue:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mIsRTL:Z

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr p2, v1

    sub-float/2addr v2, p2

    .line 6
    invoke-virtual {p1, v2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mDensity:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr p2, v1

    add-float/2addr p2, v3

    .line 9
    invoke-virtual {p1, p2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mObserver:Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onDirty()V

    :cond_1
    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mBgTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
