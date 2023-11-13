.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "DocScanRectTexture.java"


# instance fields
.field public final mBackColor:I

.field public final mDensity:F

.field public mFixedBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public final mLineWidth:I

.field public mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    .line 4
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mDensity:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mLineWidth:I

    .line 6
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f060038

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mBackColor:I

    return-void
.end method


# virtual methods
.method public final onPreDraw([F[F)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateTexture$enumunboxing$(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    if-ne v7, v1, :cond_1

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    if-eq v7, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    .line 3
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    :cond_2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    move v1, v6

    .line 6
    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 8
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mLineWidth:I

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v7, 0x2

    const/4 v13, 0x3

    if-ne v3, v7, :cond_3

    .line 10
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mBackColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 11
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 12
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v1, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 18
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f0600e0

    .line 23
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 25
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    iput v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    .line 28
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_2

    .line 29
    :cond_3
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    if-eq v6, v13, :cond_4

    if-eq v3, v13, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 30
    :cond_5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 31
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f0603d1

    .line 32
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 35
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v3, 0x40800000    # 4.0f

    .line 36
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mDensity:F

    mul-float/2addr v3, v6

    div-float/2addr v3, v1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v14, v3, v7

    const/high16 v7, 0x42400000    # 48.0f

    mul-float/2addr v7, v6

    div-float v15, v7, v1

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v6, v7

    div-float/2addr v6, v1

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    add-float v16, v15, v3

    add-float v17, v16, v6

    move-object v7, v2

    move/from16 v8, v16

    move v9, v15

    move/from16 v10, v17

    move v11, v15

    move-object v12, v4

    .line 38
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v15

    move/from16 v9, v16

    move v10, v15

    move/from16 v11, v17

    .line 39
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v12, v15, v14

    .line 40
    invoke-virtual {v1, v15, v15, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v8, v1

    move v5, v12

    move-object v12, v4

    .line 41
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    int-to-float v7, v7

    sub-float v12, v7, v15

    sub-float v8, v12, v3

    sub-float v10, v8, v6

    move-object v7, v2

    move v9, v15

    move v11, v15

    move/from16 p1, v12

    move-object v12, v4

    .line 43
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v8, p1

    move/from16 v9, v16

    move/from16 v10, p1

    move/from16 v11, v17

    .line 44
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v7, p1

    sub-float v12, v7, v14

    .line 45
    invoke-virtual {v1, v12, v15, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v7, v2

    move-object v8, v1

    move-object v12, v4

    .line 46
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 47
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mWidth:I

    int-to-float v7, v7

    sub-float v12, v7, v15

    sub-float v8, v12, v3

    .line 48
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    int-to-float v7, v7

    sub-float v11, v7, v15

    sub-float v18, v11, v3

    sub-float v10, v8, v6

    move-object v7, v2

    move v9, v11

    move/from16 p1, v11

    move/from16 p2, v12

    move-object v12, v4

    .line 49
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v11, v18, v6

    move/from16 v8, p2

    move/from16 v9, v18

    move/from16 v10, p2

    .line 50
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v7, p2

    sub-float v12, v7, v14

    move/from16 v8, p1

    sub-float v11, v8, v14

    .line 51
    invoke-virtual {v1, v12, v11, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v7, v2

    move-object v8, v1

    move-object v12, v4

    .line 52
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mHeight:I

    int-to-float v7, v7

    sub-float v12, v7, v15

    sub-float v3, v12, v3

    move-object v7, v2

    move/from16 v8, v16

    move v9, v12

    move/from16 v10, v17

    move v11, v12

    move v13, v12

    move-object v12, v4

    .line 54
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v11, v3, v6

    move v8, v15

    move v9, v3

    move v10, v15

    .line 55
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v12, v13, v14

    .line 56
    invoke-virtual {v1, v15, v12, v5, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v8, v1

    move-object v12, v4

    .line 57
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x3

    .line 58
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mState:I

    .line 59
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;->mFixedBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_6
    :goto_2
    return-void
.end method
