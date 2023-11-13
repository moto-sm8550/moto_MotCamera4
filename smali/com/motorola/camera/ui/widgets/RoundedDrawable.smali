.class public final Lcom/motorola/camera/ui/widgets/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mBitmapHeight:I

.field public final mBitmapPaint:Landroid/graphics/Paint;

.field public final mBitmapRect:Landroid/graphics/RectF;

.field public final mBitmapWidth:I

.field public mBorderColor:Landroid/content/res/ColorStateList;

.field public final mBorderPaint:Landroid/graphics/Paint;

.field public final mBorderRect:Landroid/graphics/RectF;

.field public mBorderWidth:F

.field public final mBounds:Landroid/graphics/RectF;

.field public mCornerRadius:F

.field public final mCornersRounded:[Z

.field public final mDrawableRect:Landroid/graphics/RectF;

.field public mOval:Z

.field public mRebuildShader:Z

.field public mScaleType:Landroid/widget/ImageView$ScaleType;

.field public final mShaderMatrix:Landroid/graphics/Matrix;

.field public final mSquareCornersRect:Landroid/graphics/RectF;

.field public mTileModeX:Landroid/graphics/Shader$TileMode;

.field public mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-array v1, v1, [Z

    .line 8
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    .line 9
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 10
    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    const/4 v3, 0x0

    .line 13
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mOval:Z

    .line 14
    iput v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    const/high16 v3, -0x1000000

    .line 15
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 16
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 17
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    int-to-float p1, p1

    .line 20
    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p0, :cond_5

    .line 1
    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 8
    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, "RoundedDrawable"

    const-string v1, "Failed to create bitmap from drawable!"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 17
    new-instance p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_5
    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mOval:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    .line 13
    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_5

    aget-boolean v6, v0, v4

    if-eqz v6, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_e

    .line 14
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    .line 15
    iget v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_d

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    .line 20
    array-length v3, v0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_7

    aget-boolean v6, v0, v4

    if-eqz v6, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v0, v5

    :goto_3
    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 21
    :cond_8
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_9

    goto/16 :goto_4

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 23
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v2

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v4, v3

    .line 26
    iget v12, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    .line 27
    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v13, v6, v7

    .line 28
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean v1, v6, v1

    if-nez v1, :cond_a

    sub-float v7, v2, v13

    add-float v9, v2, v12

    .line 29
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v3

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v3, v13

    add-float v10, v3, v12

    .line 30
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_b

    sub-float v1, v0, v12

    sub-float v7, v1, v13

    .line 32
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v3

    move v9, v0

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v3, v13

    add-float v10, v3, v12

    .line 33
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v7, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 34
    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x2

    aget-boolean v1, v1, v3

    if-nez v1, :cond_c

    sub-float v1, v0, v12

    sub-float v7, v1, v13

    add-float v9, v0, v13

    .line 35
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v4

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v4, v12

    .line 36
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v7, v0

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_f

    sub-float v7, v2, v13

    add-float v9, v2, v12

    .line 38
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v4

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v8, v4, v12

    .line 39
    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 40
    :cond_d
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 42
    :cond_e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_f

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->updateShaderMatrix()V

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public final redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-boolean v5, v0, v3

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v1

    .line 7
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v5, v3

    .line 8
    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    .line 9
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean v2, v7, v2

    if-nez v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    add-float v7, v1, v6

    add-float v8, v3, v6

    invoke-virtual {v2, v1, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_5

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v4, v0, v6

    invoke-virtual {v2, v4, v3, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v3, v0, v6

    sub-float v4, v5, v6

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v2, v5, v6

    add-float/2addr v6, v1

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setDither(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updateShaderMatrix()V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/RoundedDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 22
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 25
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 26
    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    .line 27
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    .line 28
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 33
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 35
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 36
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 37
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    cmpl-float v0, v4, v0

    const/4 v4, 0x0

    if-lez v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 39
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_1

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 41
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    .line 42
    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 43
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget v6, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v7, v6, v3

    add-float/2addr v7, v4

    add-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    div-float/2addr v6, v3

    add-float/2addr v6, v2

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    div-float v5, v4, v3

    div-float/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 47
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    invoke-static {v3, v4, v2, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    invoke-static {v4, v5, v2, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 49
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 51
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    return-void
.end method
