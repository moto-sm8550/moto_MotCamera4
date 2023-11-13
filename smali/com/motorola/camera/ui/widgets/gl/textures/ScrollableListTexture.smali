.class public Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;
.source "ScrollableListTexture.java"


# static fields
.field public static final EPSION_ALPHA:F

.field public static final VIEW_MATRIX_ORIGIN:[F


# instance fields
.field public mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$4;

.field public mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

.field public mForceUp:Z

.field public mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

.field public mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

.field public mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

.field public mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mShowGlowTex:Z

.field public mShowScrollBar:Z

.field public mViewMatrix:[F

.field public mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const v0, 0x3f333333

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->EPSION_ALPHA:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 11

    .line 1
    invoke-direct {p0, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$4;

    .line 6
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const p3, 0x3f333333

    .line 9
    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    const/4 p3, 0x3

    .line 11
    invoke-direct {p1, p3, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;-><init>(III)V

    .line 12
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 13
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 14
    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    .line 16
    invoke-direct {p1, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p3, 0x0

    .line 19
    invoke-direct {p1, p3, p3, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 20
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 21
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    .line 22
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized doLayout()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 2
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mLayoutType:I

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->layout()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v0, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation(FF)V

    .line 11
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->scrollTo(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final fadeOutDelayed()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getOnScreenSize()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 2
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mLayoutType:I

    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceSize()Landroid/graphics/Point;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 7
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    .line 8
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    .line 9
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getViewMatrixOffset()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object p0
.end method

.method public final limitDragToScrollBounds()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 5
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v3

    .line 6
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v2, v3

    .line 7
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v0, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x3d4ccccd

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final limitViewMatrixToScrollBounds()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v3

    cmpg-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    if-gez v4, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v5

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    goto :goto_0

    :cond_0
    div-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float v3, v2, v3

    .line 4
    :goto_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, v1

    .line 8
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    neg-float v2, v3

    .line 9
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method

.method public loadTexture()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->loadTexture()V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v4, v2

    div-float/2addr v4, v2

    invoke-virtual {v0, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 8
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$1;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object p0, v2, v1

    .line 10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public declared-synchronized onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    monitor-enter p0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p4, :cond_2

    const/16 p5, 0xb4

    if-ne p4, p5, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_2
    :goto_0
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 2
    :goto_1
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$4;

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p4, p2, p3, p1, p5}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDrawFboContents([F[F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFboContents([F[F)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public declared-synchronized onPreDraw([F[F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onPreDraw([F[F)V

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->animationUpdate([F)Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onSingleTap(Landroid/graphics/PointF;JJ)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->contains(FF)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v1, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public scrollTo(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setLayoutBounds(Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->doLayout()V

    return-void
.end method

.method public final setPostTranslation(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollPosition()V

    return-void
.end method

.method public final setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-static {v1, v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    .line 4
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    return-void
.end method

.method public declared-synchronized showLimitingGlow(ZF)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    .line 3
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    if-eq p2, v1, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 4
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    .line 5
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    const/4 p2, 0x0

    .line 6
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F

    .line 7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 8
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 13
    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    .line 14
    iput-wide v2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    .line 15
    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    .line 16
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v1, 0x3f8ccccd

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    .line 19
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final showScrollBar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layoutBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " viewOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadTexture()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->unloadTexture()V

    return-void
.end method

.method public updateScrollBarVisibility()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const v1, 0x3f333333

    sub-float v2, v0, v1

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->EPSION_ALPHA:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 5
    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v2, v3

    .line 8
    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    return v2
.end method

.method public updateScrollPosition()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollBarVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 6
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v2

    sub-float v3, v0, v3

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 8
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v3, v5

    add-float/2addr v6, v4

    div-float/2addr v6, v3

    int-to-float v2, v2

    div-float v3, v2, v0

    mul-float/2addr v3, v2

    sub-float v2, v0, v3

    div-float/2addr v0, v5

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v5

    div-float/2addr v3, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 10
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const v0, 0x3ca3d70a

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-virtual {p0, v7, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void
.end method
