.class public Lcom/motorola/camera/editor/ui/ScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;,
        Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;,
        Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;,
        Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;,
        Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;,
        Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentRotate:F

.field public mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsAfterReview:Z

.field public mIsRotateAnimation:Z

.field public final mLastMovePoint:Landroid/graphics/PointF;

.field public mLastRotate:F

.field public final mOuterMatrix:Landroid/graphics/Matrix;

.field public mPinchMode:I

.field public mRotateDirection:I

.field public mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

.field public mScaleBase:F

.field public final mScaleCenter:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/ui/ScaleImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    .line 7
    iput p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    .line 8
    iput p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/4 p2, 0x1

    .line 9
    iput p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    .line 12
    new-instance p1, Landroid/view/GestureDetector;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    if-lez p1, :cond_3

    .line 4
    iget p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    .line 5
    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->left:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1
.end method

.method public final canScrollVertically(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    if-lez p1, :cond_3

    .line 4
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    .line 5
    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->top:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    return v1
.end method

.method public final cancelAllAnimator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    :cond_1
    return-void
.end method

.method public final getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 11

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFTake(FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v4, v5}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    int-to-float v3, v3

    .line 11
    invoke-static {v1, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFTake(FF)Landroid/graphics/RectF;

    move-result-object v1

    .line 12
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    .line 14
    iget v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3a83126f

    cmpg-float v5, v5, v7

    const/high16 v7, 0x43870000    # 270.0f

    if-gez v5, :cond_2

    .line 15
    iget v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v8, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v5, v8

    iput v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    .line 16
    iput v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 17
    iput v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    .line 18
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 19
    :cond_2
    iget v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v8, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v5, v8

    cmpg-float v8, v5, v6

    if-gtz v8, :cond_3

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    goto :goto_2

    :cond_3
    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v9, v5, v8

    if-lez v9, :cond_4

    cmpg-float v9, v5, v7

    if-gtz v9, :cond_4

    sub-float v7, v5, v8

    mul-float/2addr v7, v4

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    goto :goto_2

    :cond_4
    cmpl-float v9, v5, v6

    if-lez v9, :cond_5

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_5

    sub-float/2addr v3, v4

    sub-float v7, v5, v6

    goto :goto_1

    :cond_5
    sub-float/2addr v3, v4

    sub-float v7, v5, v7

    :goto_1
    mul-float/2addr v7, v4

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 20
    :goto_2
    iget v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p1, v4, v2, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 21
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 22
    invoke-static {p1}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    .line 27
    invoke-static {v6, v7}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFTake(FF)Landroid/graphics/RectF;

    move-result-object v6

    .line 28
    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float v8, v3, v7

    cmpg-float v9, v8, v4

    const/high16 v10, 0x40000000    # 2.0f

    if-gez v9, :cond_6

    goto :goto_3

    :cond_6
    cmpl-float v8, v8, v4

    if-lez v8, :cond_7

    :goto_3
    div-float/2addr v4, v10

    add-float/2addr v3, v7

    div-float/2addr v3, v10

    goto :goto_4

    :cond_7
    cmpl-float v8, v7, v2

    if-lez v8, :cond_8

    neg-float v3, v7

    goto :goto_5

    :cond_8
    cmpg-float v7, v3, v4

    if-gez v7, :cond_9

    :goto_4
    sub-float v3, v4, v3

    goto :goto_5

    :cond_9
    move v3, v2

    .line 30
    :goto_5
    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v7, v4, v6

    cmpg-float v7, v7, v5

    if-gez v7, :cond_a

    div-float/2addr v5, v10

    add-float/2addr v4, v6

    div-float/2addr v4, v10

    goto :goto_6

    :cond_a
    cmpl-float v7, v6, v2

    if-lez v7, :cond_b

    neg-float v2, v6

    goto :goto_7

    :cond_b
    cmpg-float v6, v4, v5

    if-gez v6, :cond_c

    :goto_6
    sub-float v2, v5, v4

    .line 31
    :cond_c
    :goto_7
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    invoke-static {v1}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFGiven(Landroid/graphics/RectF;)V

    .line 33
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFGiven(Landroid/graphics/RectF;)V

    .line 34
    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object p1
.end method

.method public final getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake()Landroid/graphics/Matrix;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_1
    return-object p1
.end method

.method public getMaxScale()F
    .locals 0

    const/high16 p0, 0x40800000    # 4.0f

    return p0
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake()Landroid/graphics/Matrix;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x6

    if-ne v0, v5, :cond_2

    .line 3
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v0, v2, :cond_18

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_18

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 10
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto/16 :goto_8

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_18

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 13
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 16
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto/16 :goto_8

    :cond_2
    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_18

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    .line 19
    iput v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_8

    :cond_4
    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    .line 22
    iput v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 25
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 26
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 27
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto/16 :goto_8

    :cond_5
    if-ne v0, v2, :cond_18

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_18

    .line 29
    :cond_6
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v0, v4, :cond_7

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/editor/ui/ScaleImageView;->scrollBy(FF)Z

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_8

    :cond_7
    if-ne v0, v2, :cond_18

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_18

    .line 33
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 34
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 36
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 37
    invoke-static {v0, v5, v6, v7}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getDistance(FFFF)F

    move-result v0

    .line 38
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 39
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 40
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 41
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    new-array v2, v2, [F

    add-float/2addr v5, v7

    div-float/2addr v5, v1

    aput v5, v2, v3

    add-float/2addr v6, v8

    div-float/2addr v6, v1

    aput v6, v2, v4

    .line 42
    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    aget v3, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    .line 44
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_8

    :cond_8
    mul-float/2addr v2, v0

    .line 45
    invoke-static {}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake()Landroid/graphics/Matrix;

    move-result-object v0

    .line 46
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 47
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 48
    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 49
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8

    .line 51
    :cond_9
    :goto_0
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v0, v2, :cond_17

    .line 52
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7

    .line 53
    :cond_a
    invoke-static {}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake()Landroid/graphics/Matrix;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 55
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v2

    aget v2, v2, v3

    .line 56
    iget-object v5, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-static {v5}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v5

    aget v5, v5, v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 59
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getMaxScale()F

    move-result v8

    cmpl-float v9, v2, v8

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_b

    div-float/2addr v8, v2

    goto :goto_1

    :cond_b
    move v8, v10

    :goto_1
    mul-float v2, v5, v8

    cmpg-float v2, v2, v10

    if-gez v2, :cond_c

    div-float v8, v10, v5

    :cond_c
    cmpl-float v2, v8, v10

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_2

    :cond_d
    move v2, v3

    .line 60
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 61
    iget-object v9, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v8, v8, v10, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    .line 64
    invoke-static {v9, v10}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFTake(FF)Landroid/graphics/RectF;

    move-result-object v9

    .line 65
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 66
    iget v10, v9, Landroid/graphics/RectF;->right:F

    iget v12, v9, Landroid/graphics/RectF;->left:F

    sub-float v13, v10, v12

    cmpg-float v13, v13, v6

    if-gez v13, :cond_e

    div-float/2addr v6, v1

    add-float/2addr v10, v12

    div-float/2addr v10, v1

    goto :goto_3

    :cond_e
    cmpl-float v13, v12, v11

    if-lez v13, :cond_f

    neg-float v6, v12

    goto :goto_4

    :cond_f
    cmpg-float v12, v10, v6

    if-gez v12, :cond_10

    :goto_3
    sub-float/2addr v6, v10

    goto :goto_4

    :cond_10
    move v6, v11

    .line 67
    :goto_4
    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    iget v12, v9, Landroid/graphics/RectF;->top:F

    sub-float v13, v10, v12

    cmpg-float v13, v13, v7

    if-gez v13, :cond_11

    div-float/2addr v7, v1

    add-float/2addr v10, v12

    div-float/2addr v10, v1

    goto :goto_5

    :cond_11
    cmpl-float v1, v12, v11

    if-lez v1, :cond_12

    neg-float v1, v12

    goto :goto_6

    :cond_12
    cmpg-float v1, v10, v7

    if-gez v1, :cond_13

    :goto_5
    sub-float v1, v7, v10

    goto :goto_6

    :cond_13
    move v1, v11

    :goto_6
    cmpl-float v7, v6, v11

    if-nez v7, :cond_14

    cmpl-float v7, v1, v11

    if-eqz v7, :cond_15

    :cond_14
    move v2, v4

    :cond_15
    if-eqz v2, :cond_16

    .line 68
    iget-object v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 69
    iget-object v7, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v8, v8, v10, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 70
    invoke-virtual {v2, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 71
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    .line 72
    new-instance v1, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    iget-object v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, p0, v6, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    .line 73
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 74
    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    .line 75
    :cond_16
    invoke-static {v9}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFGiven(Landroid/graphics/RectF;)V

    .line 76
    invoke-static {v5}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    .line 77
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    .line 78
    :cond_17
    :goto_7
    iput v3, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    .line 79
    :cond_18
    :goto_8
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method

.method public final saveScaleContext(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getDistance(FFFF)F

    move-result v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    const/4 v0, 0x2

    new-array v2, v0, [F

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    aput p1, v2, v1

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    const/4 p1, 0x1

    aput p2, v2, p1

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    if-eqz p2, :cond_0

    new-array p3, v0, [F

    .line 4
    invoke-static {}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixTake()Landroid/graphics/Matrix;

    move-result-object p4

    .line 5
    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    invoke-virtual {p4, p3, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 7
    invoke-static {p4}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    new-array p3, v0, [F

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    aget p2, p3, v1

    aget p1, p3, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final scrollBy(FF)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v4, v5

    cmpg-float v6, v6, v2

    const/4 v7, 0x0

    if-gez v6, :cond_2

    :cond_1
    move p1, v7

    goto :goto_0

    :cond_2
    add-float v6, v5, p1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    cmpg-float p1, v5, v7

    if-gez p1, :cond_1

    neg-float p1, v5

    goto :goto_0

    :cond_3
    add-float v5, v4, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4

    cmpl-float p1, v4, v2

    if-lez p1, :cond_1

    sub-float p1, v2, v4

    .line 7
    :cond_4
    :goto_0
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v2, v4

    cmpg-float v5, v5, v3

    if-gez v5, :cond_6

    :cond_5
    move p2, v7

    goto :goto_1

    :cond_6
    add-float v5, v4, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    cmpg-float p2, v4, v7

    if-gez p2, :cond_5

    neg-float p2, v4

    goto :goto_1

    :cond_7
    add-float v4, v2, p2

    cmpg-float v4, v4, v3

    if-gez v4, :cond_8

    cmpl-float p2, v2, v3

    if-lez p2, :cond_5

    sub-float p2, v3, v2

    .line 8
    :cond_8
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->rectFGiven(Landroid/graphics/RectF;)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float p0, p1, v7

    if-nez p0, :cond_9

    cmpl-float p0, p2, v7

    if-eqz p0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public setLastRotate(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    .line 4
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x43340000    # 180.0f

    .line 5
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43870000    # 270.0f

    .line 6
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    .line 8
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    .line 9
    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    iput-boolean v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    return-void
.end method
