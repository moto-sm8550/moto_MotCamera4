.class public Lcom/motorola/camera/editor/ui/DocRectangleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "DocRectangleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;,
        Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;
    }
.end annotation


# instance fields
.field public final mActivePoint:Landroid/graphics/PointF;

.field public mAdjustId:I

.field public mAdjusted:Z

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mInvertMatrix:Landroid/graphics/Matrix;

.field public final mLastEventPoint:Landroid/graphics/PointF;

.field public mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

.field public final mMidPoints:[F

.field public mOrientation:F

.field public mPoints:[F

.field public mPostBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/editor/ui/DocRectangleView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    .line 4
    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    return-void
.end method

.method private getTargetArea()Landroid/graphics/Rect;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v5, v0, v1

    aget v0, v0, v3

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    mul-int/lit8 v6, v1, 0x2

    aget v7, v3, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    aget v2, v3, v6

    .line 3
    :cond_0
    aget v7, v3, v6

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    aget v5, v3, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 4
    aget v7, v3, v6

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    aget v4, v3, v6

    .line 5
    :cond_2
    aget v7, v3, v6

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    aget v0, v3, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_4
    new-instance p0, Landroid/graphics/Rect;

    float-to-int v1, v2

    float-to-int v2, v4

    float-to-int v3, v5

    float-to-int v0, v0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public final adjustPx(F)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    invoke-static {v1, p1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public getAdjustedPoints()[F
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    iget-object v2, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p2, p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr p2, v0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_c

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v5, v3

    :goto_0
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    .line 4
    iget-object v8, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    mul-int/lit8 v9, v5, 0x2

    aget v10, v8, v9

    mul-float/2addr v10, v0

    add-int/2addr v9, v2

    .line 5
    aget v8, v8, v9

    mul-float/2addr v8, v4

    .line 6
    new-instance v9, Landroid/graphics/RectF;

    sub-float v11, v10, v6

    sub-float v12, v8, v6

    add-float/2addr v10, v6

    add-float/2addr v8, v6

    invoke-direct {v9, v11, v12, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v9, v6, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    iput v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v7, :cond_3

    .line 9
    iget-object v8, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    mul-int/lit8 v9, v5, 0x2

    aget v10, v8, v9

    mul-float/2addr v10, v0

    add-int/2addr v9, v2

    .line 10
    aget v8, v8, v9

    mul-float/2addr v8, v4

    .line 11
    new-instance v9, Landroid/graphics/RectF;

    sub-float v11, v10, v6

    sub-float v12, v8, v6

    add-float/2addr v10, v6

    add-float/2addr v8, v6

    invoke-direct {v9, v11, v12, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v9, v8, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/2addr v5, v7

    .line 13
    iput v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_11

    .line 14
    iput-boolean v2, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    if-eqz v0, :cond_11

    .line 17
    iget v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    .line 18
    sget-object v4, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    .line 19
    iget-object v4, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    invoke-direct {p0}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getTargetArea()Landroid/graphics/Rect;

    move-result-object v5

    check-cast v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    .line 20
    iput-object v0, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    .line 21
    iput-object v5, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetImage:Landroid/graphics/Rect;

    .line 22
    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v6, :cond_9

    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v6, :cond_9

    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v6, :cond_4

    goto :goto_5

    .line 23
    :cond_4
    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v6, :cond_7

    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v6, :cond_7

    sget-object v6, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v6, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    sget-object v1, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v1, :cond_6

    .line 25
    iput v7, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_6

    .line 26
    :cond_6
    sget-object v1, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x3

    .line 27
    iput v0, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_6

    .line 28
    :cond_7
    :goto_4
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v5, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    iput v1, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_6

    .line 29
    :cond_8
    iput v2, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_6

    .line 30
    :cond_9
    :goto_5
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v5, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccc

    mul-float/2addr v5, v6

    cmpl-float v0, v0, v5

    if-lez v0, :cond_a

    iput v2, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_6

    .line 31
    :cond_a
    iput v1, v4, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    .line 32
    :cond_b
    :goto_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateActivePoint(Landroid/view/MotionEvent;)V

    .line 34
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    goto :goto_7

    .line 35
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v0, v1, :cond_e

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_d

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_d

    return v3

    .line 37
    :cond_d
    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateActivePoint(Landroid/view/MotionEvent;)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    goto :goto_7

    .line 39
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_11

    .line 40
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_f

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_f

    return v3

    .line 41
    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    if-eqz p1, :cond_10

    check-cast p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v0, 0x8

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_11
    :goto_7
    return v2
.end method

.method public final releaseResource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iput-object v1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    return-void
.end method

.method public final updateActivePoint(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 4
    invoke-virtual {v0, v3}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v3

    .line 5
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 10
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v7, v1, v7

    div-float/2addr v7, v4

    .line 11
    iget v4, v6, Landroid/graphics/PointF;->y:F

    sub-float v4, v3, v4

    div-float/2addr v4, v5

    .line 12
    iget v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v5, v6, :cond_0

    mul-int/2addr v5, v9

    .line 13
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v5, v7, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 14
    iget v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    mul-int/2addr v2, v9

    add-int/2addr v2, v8

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    iget v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    mul-int/lit8 v6, v5, 0x2

    aget v6, v4, v6

    mul-int/2addr v5, v9

    add-int/2addr v5, v8

    aget v4, v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_9

    .line 16
    :cond_0
    iget v10, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-eqz v12, :cond_2

    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v10, v10, v12

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v8

    :goto_1
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v11, 0x5

    if-ne v5, v6, :cond_4

    .line 17
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v2

    aget v9, v5, v9

    sub-float v16, v16, v9

    aget v9, v5, v8

    aget v13, v5, v13

    sub-float/2addr v9, v13

    div-float v16, v16, v9

    .line 18
    aget v9, v5, v15

    aget v6, v5, v6

    sub-float/2addr v9, v6

    aget v6, v5, v14

    aget v5, v5, v11

    sub-float/2addr v6, v5

    div-float/2addr v9, v6

    if-eqz v10, :cond_3

    div-float v4, v7, v16

    div-float v5, v7, v9

    .line 19
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v2, v7, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 20
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v8, v4, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 21
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v15, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 22
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v14, v5, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_2

    :cond_3
    mul-float v5, v4, v16

    mul-float/2addr v9, v4

    .line 23
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 24
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v8, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 25
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v15, v9, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 26
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v14, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 27
    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v2, v4, v2

    aget v5, v4, v15

    add-float/2addr v2, v5

    div-float v11, v2, v12

    .line 28
    aget v2, v4, v8

    aget v4, v4, v14

    :goto_3
    add-float/2addr v2, v4

    div-float/2addr v2, v12

    goto/16 :goto_8

    :cond_4
    if-ne v5, v11, :cond_6

    .line 29
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v2

    aget v15, v5, v15

    sub-float v16, v16, v15

    aget v15, v5, v8

    aget v14, v5, v14

    sub-float/2addr v15, v14

    div-float v16, v16, v15

    .line 30
    aget v14, v5, v9

    aget v6, v5, v6

    sub-float/2addr v14, v6

    aget v6, v5, v13

    aget v5, v5, v11

    sub-float/2addr v6, v5

    div-float/2addr v14, v6

    if-eqz v10, :cond_5

    mul-float v5, v4, v16

    mul-float/2addr v14, v4

    .line 31
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 32
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v8, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 33
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v9, v14, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 34
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_4

    :cond_5
    div-float v4, v7, v16

    div-float v5, v7, v14

    .line 35
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v2, v7, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 36
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v8, v4, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 37
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v9, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 38
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v13, v5, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 39
    :goto_4
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v2, v4, v2

    aget v5, v4, v9

    add-float/2addr v2, v5

    div-float v11, v2, v12

    .line 40
    aget v2, v4, v8

    aget v4, v4, v13

    goto :goto_3

    :cond_6
    if-ne v5, v15, :cond_8

    .line 41
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v9

    aget v2, v5, v2

    sub-float v16, v16, v2

    aget v2, v5, v13

    aget v8, v5, v8

    sub-float/2addr v2, v8

    div-float v16, v16, v2

    .line 42
    aget v2, v5, v6

    aget v8, v5, v15

    sub-float/2addr v2, v8

    aget v8, v5, v11

    aget v5, v5, v14

    sub-float/2addr v8, v5

    div-float/2addr v2, v8

    if-eqz v10, :cond_7

    div-float v4, v7, v16

    div-float v2, v7, v2

    .line 43
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v9, v7, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 44
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 45
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v6, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 46
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v11, v2, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_5

    :cond_7
    mul-float v5, v4, v16

    mul-float/2addr v2, v4

    .line 47
    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0, v9, v5, v7}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 48
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 49
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v6, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 50
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 51
    :goto_5
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v4, v2, v9

    aget v5, v2, v6

    add-float/2addr v4, v5

    div-float/2addr v4, v12

    .line 52
    aget v5, v2, v13

    aget v2, v2, v11

    :goto_6
    add-float/2addr v5, v2

    div-float v11, v5, v12

    move v2, v11

    move v11, v4

    goto/16 :goto_8

    :cond_8
    if-ne v5, v14, :cond_a

    .line 53
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v6

    aget v9, v5, v9

    sub-float v16, v16, v9

    aget v9, v5, v11

    aget v13, v5, v13

    sub-float/2addr v9, v13

    div-float v16, v16, v9

    .line 54
    aget v9, v5, v15

    aget v2, v5, v2

    sub-float/2addr v9, v2

    aget v2, v5, v14

    aget v5, v5, v8

    sub-float/2addr v2, v5

    div-float/2addr v9, v2

    if-eqz v10, :cond_9

    mul-float v2, v4, v16

    mul-float/2addr v9, v4

    .line 55
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v6, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 56
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 57
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v15, v9, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 58
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v14, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_7

    :cond_9
    div-float v2, v7, v16

    div-float v4, v7, v9

    .line 59
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v6, v7, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 60
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v11, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 61
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v15, v7, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 62
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v14, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    .line 63
    :goto_7
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v4, v2, v6

    aget v5, v2, v15

    add-float/2addr v4, v5

    div-float/2addr v4, v12

    .line 64
    aget v5, v2, v11

    aget v2, v2, v14

    goto/16 :goto_6

    :cond_a
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 65
    :goto_8
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v11, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 66
    :goto_9
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final updatePoints([F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x6

    aget v6, v1, v5

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    aput v4, v2, v3

    const/4 v4, 0x1

    .line 3
    aget v7, v1, v4

    const/4 v8, 0x7

    aget v9, v1, v8

    add-float/2addr v7, v9

    div-float/2addr v7, v6

    aput v7, v2, v4

    .line 4
    aget v7, v1, v3

    const/4 v9, 0x2

    aget v10, v1, v9

    add-float/2addr v7, v10

    div-float/2addr v7, v6

    aput v7, v2, v9

    .line 5
    aget v7, v1, v4

    const/4 v10, 0x3

    aget v11, v1, v10

    add-float/2addr v7, v11

    div-float/2addr v7, v6

    aput v7, v2, v10

    .line 6
    aget v7, v1, v9

    const/4 v11, 0x4

    aget v12, v1, v11

    add-float/2addr v7, v12

    div-float/2addr v7, v6

    aput v7, v2, v11

    .line 7
    aget v7, v1, v10

    const/4 v12, 0x5

    aget v13, v1, v12

    add-float/2addr v7, v13

    div-float/2addr v7, v6

    aput v7, v2, v12

    .line 8
    aget v7, v1, v11

    aget v13, v1, v5

    add-float/2addr v7, v13

    div-float/2addr v7, v6

    aput v7, v2, v5

    .line 9
    aget v7, v1, v12

    aget v13, v1, v8

    add-float/2addr v7, v13

    div-float/2addr v7, v6

    aput v7, v2, v8

    .line 10
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v13, 0x7f0600d5

    invoke-virtual {v7, v13}, Landroid/content/Context;->getColor(I)I

    move-result v7

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 13
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v14, 0x7f060321

    .line 15
    invoke-static {v13, v14}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v13

    .line 16
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v13, 0x3fc00000    # 1.5f

    .line 17
    invoke-virtual {v0, v13}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 20
    aget v15, v1, v3

    aget v14, v1, v4

    invoke-virtual {v13, v15, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    aget v14, v1, v9

    aget v15, v1, v10

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    aget v14, v1, v11

    aget v15, v1, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    aget v14, v1, v5

    aget v15, v1, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    aget v14, v1, v3

    aget v15, v1, v4

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 27
    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 28
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 30
    invoke-virtual {v2, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    iget-object v13, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    .line 32
    iget-object v13, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    .line 33
    iget-object v13, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v13, v15, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 34
    :cond_0
    new-instance v13, Landroid/graphics/Canvas;

    iget-object v15, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v13, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v3, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 36
    new-instance v15, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v15, v3, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v6, v3, v3, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v5, v15, v6, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 39
    :goto_0
    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    check-cast v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v5, v6, v8}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->onDocAdjusting(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)V

    .line 40
    :cond_1
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 41
    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v5

    .line 42
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v6, v3

    aget v6, v6, v4

    int-to-float v5, v5

    invoke-virtual {v2, v8, v6, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v6, v9

    aget v6, v6, v10

    invoke-virtual {v2, v8, v6, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v6, v11

    aget v6, v6, v12

    invoke-virtual {v2, v8, v6, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    const/4 v8, 0x6

    aget v13, v6, v8

    const/4 v8, 0x7

    aget v6, v6, v8

    invoke-virtual {v2, v13, v6, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41200000    # 10.0f

    .line 46
    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v6

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v13, 0x7f0600d8

    invoke-virtual {v8, v13}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    aget v8, v1, v3

    aget v13, v1, v4

    int-to-float v6, v6

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    aget v8, v1, v9

    aget v13, v1, v10

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    aget v8, v1, v11

    aget v13, v1, v12

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x6

    .line 51
    aget v13, v1, v8

    const/4 v8, 0x7

    aget v15, v1, v8

    invoke-virtual {v2, v13, v15, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40000000    # 2.0f

    .line 52
    invoke-virtual {v0, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v6

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v13, 0x7f060321

    invoke-virtual {v8, v13}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    aget v8, v1, v3

    aget v13, v1, v4

    int-to-float v6, v6

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    aget v8, v1, v9

    aget v13, v1, v10

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    aget v8, v1, v11

    aget v13, v1, v12

    invoke-virtual {v2, v8, v13, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x6

    .line 57
    aget v13, v1, v8

    const/4 v8, 0x7

    aget v15, v1, v8

    invoke-virtual {v2, v13, v15, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v5

    .line 59
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    aget v3, v1, v3

    aget v4, v1, v4

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    aget v3, v1, v9

    aget v4, v1, v10

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    aget v3, v1, v11

    aget v4, v1, v12

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v3, 0x6

    .line 63
    aget v3, v1, v3

    const/4 v4, 0x7

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateValue(IFI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v0, p0, p1

    add-float/2addr v0, p2

    aput v0, p0, p1

    .line 2
    aget p2, p0, p1

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    .line 3
    aput p3, p0, p1

    .line 4
    :cond_0
    aget p2, p0, p1

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    .line 5
    aput p3, p0, p1

    :cond_1
    return-void
.end method
