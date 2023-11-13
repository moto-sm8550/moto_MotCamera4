.class public abstract Lcom/motorola/camera/ui/widgets/gl/collision/FadeCollisionPolicy;
.super Landroidx/transition/PathMotion;
.source "FadeCollisionPolicy.java"


# instance fields
.field public mPadding:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/collision/FadeCollisionPolicy;->mPadding:F

    return-void
.end method


# virtual methods
.method public final onCollisionCheck(Lcom/motorola/camera/ui/widgets/gl/RectWrapper;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;

    .line 2
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 3
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    .line 4
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v4

    .line 5
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v6, :cond_0

    iget v6, v7, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_0

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_0

    iget v6, v7, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v6, v5

    if-lez v5, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v9

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    .line 6
    :cond_1
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/collision/FadeCollisionPolicy;->mPadding:F

    .line 7
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    invoke-interface {v3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v0

    neg-float v0, v3

    .line 9
    invoke-virtual {v4, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    .line 10
    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v7, v10

    if-gez v11, :cond_6

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v11, v12

    if-gez v13, :cond_6

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v15, v13, v14

    if-lez v15, :cond_6

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v16, v1, v15

    if-lez v16, :cond_6

    cmpg-float v7, v7, v11

    if-gez v7, :cond_2

    .line 11
    iput v11, v0, Landroid/graphics/RectF;->left:F

    :cond_2
    cmpl-float v7, v13, v1

    if-lez v7, :cond_3

    .line 12
    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_3
    cmpl-float v1, v12, v10

    if-lez v1, :cond_4

    .line 13
    iput v10, v0, Landroid/graphics/RectF;->right:F

    :cond_4
    cmpg-float v1, v15, v14

    if-gez v1, :cond_5

    .line 14
    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    :cond_5
    move v0, v8

    goto :goto_1

    :cond_6
    move v0, v9

    :goto_1
    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v0

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    .line 16
    :cond_7
    :goto_2
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    .line 18
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const v0, 0x3e4ccccd

    cmpl-float v0, v6, v0

    if-lez v0, :cond_8

    goto :goto_3

    :cond_8
    move v8, v9

    .line 19
    :goto_3
    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    .line 20
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    .line 21
    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return v5
.end method
