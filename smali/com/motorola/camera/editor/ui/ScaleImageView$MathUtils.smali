.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;
.super Ljava/lang/Object;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MathUtils"
.end annotation


# static fields
.field public static final mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

.field public static final mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

    invoke-direct {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;-><init>()V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

    .line 2
    new-instance v0, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-direct {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;-><init>()V

    sput-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    return-void
.end method

.method public static getDistance(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getMatrixScale(Landroid/graphics/Matrix;)[F
    .locals 3

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    new-array p0, v0, [F

    const/4 v0, 0x0

    aget v2, v1, v0

    aput v2, p0, v0

    const/4 v0, 0x1

    const/4 v2, 0x4

    aget v1, v1, v2

    aput v1, p0, v0

    return-object p0

    :cond_0
    new-array p0, v0, [F

    return-object p0
.end method

.method public static matrixGiven(Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->given(Ljava/lang/Object;)V

    return-void
.end method

.method public static matrixTake()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static matrixTake(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 2
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$MatrixPool;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method

.method public static rectFGiven(Landroid/graphics/RectF;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->given(Ljava/lang/Object;)V

    return-void
.end method

.method public static rectFTake(FF)Landroid/graphics/RectF;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$ObjectsPool;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method
