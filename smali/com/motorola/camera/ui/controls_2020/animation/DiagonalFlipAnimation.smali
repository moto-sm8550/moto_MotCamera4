.class public final Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;
.super Landroid/view/animation/Animation;
.source "DiagonalFlipAnimation.java"


# static fields
.field public static final SQRT:F


# instance fields
.field public mCamera:Landroid/graphics/Camera;

.field public final mDuration:J

.field public final mFromDegree:F

.field public final mRotate:F

.field public mSizeF:Landroid/util/SizeF;

.field public final mToDegree:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->SQRT:F

    return-void
.end method

.method public constructor <init>(FFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mFromDegree:F

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mToDegree:F

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    .line 5
    iput-wide p4, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mDuration:J

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mFromDegree:F

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mToDegree:F

    invoke-static {v1, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    neg-float p1, p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    neg-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 12
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method public final initialize(IIII)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SizeF;

    int-to-float v1, p1

    sget v2, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->SQRT:F

    div-float v3, v1, v2

    int-to-float v4, p2

    div-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    .line 2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method
