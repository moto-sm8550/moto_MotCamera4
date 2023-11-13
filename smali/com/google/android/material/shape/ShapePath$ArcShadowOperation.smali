.class public final Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcShadowOperation"
.end annotation


# instance fields
.field public final operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v6, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 2
    iget v4, v3, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 3
    iget v3, v3, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 4
    new-instance v5, Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 5
    iget v7, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 6
    iget v8, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 7
    iget v9, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 8
    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 9
    invoke-direct {v5, v7, v8, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    cmpg-float v7, v3, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    .line 10
    :goto_0
    iget-object v10, v1, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v7, :cond_1

    .line 11
    sget-object v13, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    aput v9, v13, v9

    .line 12
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v9, v13, v8

    .line 13
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v9, v13, v12

    .line 14
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v9, v13, v11

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 16
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    invoke-virtual {v10, v5, v4, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 18
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    neg-int v13, v2

    int-to-float v13, v13

    .line 19
    invoke-virtual {v5, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    sget-object v13, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    aput v9, v13, v9

    .line 21
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    aput v9, v13, v8

    .line 22
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    aput v9, v13, v12

    .line 23
    iget v9, v1, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    aput v9, v13, v11

    .line 24
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float v16, v9, v11

    cmpg-float v0, v16, v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v0, v2

    div-float v0, v0, v16

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    sub-float v9, v2, v0

    div-float/2addr v9, v11

    add-float/2addr v9, v0

    .line 25
    sget-object v18, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    aput v0, v18, v8

    .line 26
    aput v9, v18, v12

    .line 27
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 28
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    .line 29
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    sget-object v17, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 30
    iget-object v8, v1, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    .line 32
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 33
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v0, v8

    invoke-virtual {v6, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    if-nez v7, :cond_3

    .line 34
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v10, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 35
    iget-object v0, v1, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    const/4 v7, 0x1

    .line 36
    iget-object v8, v1, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    move-object v1, v5

    move v2, v4

    move v4, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method
