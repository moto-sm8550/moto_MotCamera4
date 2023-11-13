.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "GridTexture.java"


# static fields
.field public static final GOLDEN_RATIO:F


# instance fields
.field public final mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mGridType:I

.field public mLineWidth:F

.field public mPadding:F

.field public mRect:Landroid/graphics/RectF;

.field public final mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 5
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 6
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->setGridType(I)V

    return-void
.end method


# virtual methods
.method public final buildGrid()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createTE42Grid()V

    goto/16 :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sget v5, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 6
    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v6, v4

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    sub-float/2addr v7, v6

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 9
    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v4

    cmpl-float v4, v6, v5

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 13
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 14
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 15
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 16
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v9, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v7

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v10

    .line 17
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 18
    :try_start_1
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 v12, 0x0

    aput v9, v10, v12

    const/4 v9, 0x1

    .line 19
    aput v11, v10, v9

    .line 20
    aput v5, v10, v2

    .line 21
    aput v8, v10, v3

    .line 22
    aput v11, v10, v1

    const/4 v8, 0x5

    .line 23
    aput v5, v10, v8

    .line 24
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_1

    invoke-virtual {v11, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 25
    :cond_1
    :try_start_2
    monitor-exit v6

    .line 26
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 28
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 29
    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 30
    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 31
    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v13, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v11, v13

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v7

    iget v7, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v13

    .line 32
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 33
    :try_start_3
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v11, v10, v12

    .line 34
    aput v14, v10, v9

    .line 35
    aput v5, v10, v2

    .line 36
    aput v7, v10, v3

    .line 37
    aput v14, v10, v1

    .line 38
    aput v5, v10, v8

    .line 39
    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    :cond_2
    :try_start_4
    monitor-exit v6

    .line 41
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 43
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 44
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 45
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 46
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    iget v11, v7, Landroid/graphics/RectF;->top:F

    iget v13, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v11, v13

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v13

    .line 47
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 48
    :try_start_5
    iget-object v13, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v13, v12

    .line 49
    aput v11, v13, v9

    .line 50
    aput v5, v13, v2

    .line 51
    aput v10, v13, v3

    .line 52
    aput v7, v13, v1

    .line 53
    aput v5, v13, v8

    .line 54
    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    :cond_3
    :try_start_6
    monitor-exit v6

    .line 56
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 58
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 59
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 60
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 61
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v0, v11

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v11

    .line 62
    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 63
    :try_start_7
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v11, v12

    .line 64
    aput v0, v11, v9

    .line 65
    aput v5, v11, v2

    .line 66
    aput v10, v11, v3

    .line 67
    aput v7, v11, v1

    .line 68
    aput v5, v11, v8

    .line 69
    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 70
    :cond_4
    :try_start_8
    monitor-exit v6

    .line 71
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 73
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 74
    :try_start_9
    monitor-exit v6

    throw v0

    :catchall_1
    move-exception v0

    .line 75
    monitor-exit v6

    throw v0

    :catchall_2
    move-exception v0

    .line 76
    monitor-exit v6

    throw v0

    :catchall_3
    move-exception v0

    .line 77
    monitor-exit v6

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 78
    :cond_5
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :pswitch_4
    invoke-virtual {p0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto :goto_1

    .line 80
    :pswitch_5
    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto :goto_1

    .line 81
    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized createGrid(II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 2
    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    cmpl-float v3, v5, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    if-ge v2, v3, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 6
    iget v7, v6, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v6

    int-to-float v6, v0

    div-float/2addr v7, v6

    const/4 v6, 0x1

    move v8, v6

    :goto_0
    const/4 v12, 0x0

    if-ge v8, v0, :cond_2

    .line 7
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 8
    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 9
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 10
    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v15, v9

    iget v10, v14, Landroid/graphics/RectF;->top:F

    int-to-float v11, v8

    mul-float/2addr v11, v7

    sub-float v16, v10, v11

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v9

    sub-float/2addr v10, v11

    .line 12
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    iget-object v9, v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v9, v12

    .line 14
    aput v16, v9, v6

    .line 15
    aput v4, v9, v3

    const/4 v11, 0x3

    .line 16
    aput v14, v9, v11

    const/4 v11, 0x4

    .line 17
    aput v10, v9, v11

    const/4 v10, 0x5

    .line 18
    aput v4, v9, v10

    .line 19
    iget-object v10, v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_1

    invoke-virtual {v10, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_1
    :try_start_2
    monitor-exit v13

    .line 21
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v13

    throw v0

    .line 23
    :cond_2
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v7, v2

    div-float/2addr v0, v7

    move v7, v6

    :goto_1
    if-ge v7, v2, :cond_4

    .line 24
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 25
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 26
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 27
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 28
    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    int-to-float v11, v7

    mul-float/2addr v11, v0

    add-float v13, v10, v11

    iget v14, v9, Landroid/graphics/RectF;->top:F

    iget v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v14, v15

    add-float/2addr v10, v11

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v15

    .line 29
    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :try_start_3
    iget-object v11, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v11, v12

    .line 31
    aput v14, v11, v6

    .line 32
    aput v4, v11, v3

    const/4 v13, 0x3

    .line 33
    aput v10, v11, v13

    const/4 v10, 0x4

    .line 34
    aput v9, v11, v10

    const/4 v9, 0x5

    .line 35
    aput v4, v11, v9

    .line 36
    iget-object v14, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_3

    invoke-virtual {v14, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :cond_3
    :try_start_4
    monitor-exit v8

    .line 38
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 39
    monitor-exit v8

    throw v0

    .line 40
    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized createTE42Grid()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 2
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    cmpl-float v0, v3, v2

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 7
    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v4

    .line 8
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 9
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 10
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 11
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 12
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float v9, v8, v6

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v6

    .line 13
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 14
    :try_start_1
    iget-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 v11, 0x0

    aput v7, v10, v11

    const/4 v7, 0x1

    .line 15
    aput v9, v10, v7

    const/4 v9, 0x2

    .line 16
    aput v2, v10, v9

    const/4 v12, 0x3

    .line 17
    aput v5, v10, v12

    const/4 v5, 0x4

    .line 18
    aput v8, v10, v5

    const/4 v8, 0x5

    .line 19
    aput v2, v10, v8

    .line 20
    iget-object v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v13, :cond_1

    invoke-virtual {v13, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 21
    :cond_1
    :try_start_2
    monitor-exit v4

    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v10, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 24
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 25
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 26
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 27
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v10, Landroid/graphics/RectF;->left:F

    add-float v14, v13, v3

    iget v15, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v3

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    .line 28
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    .line 29
    :try_start_3
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v14, v8, v11

    .line 30
    aput v15, v8, v7

    .line 31
    aput v2, v8, v9

    .line 32
    aput v13, v8, v12

    .line 33
    aput v10, v8, v5

    const/4 v10, 0x5

    .line 34
    aput v2, v8, v10

    .line 35
    iget-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_2

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    .line 36
    :cond_2
    :try_start_4
    monitor-exit v4

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x3e425ed1

    .line 38
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v4

    const v4, 0x3e171c72

    .line 39
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 40
    iget v13, v10, Landroid/graphics/RectF;->top:F

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v10

    mul-float/2addr v13, v4

    .line 41
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v10, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 42
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 43
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 44
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 45
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v14, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v8

    iget v15, v10, Landroid/graphics/RectF;->top:F

    sub-float v16, v15, v13

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v8

    sub-float/2addr v15, v13

    .line 46
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    .line 47
    :try_start_5
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v14, v5, v11

    .line 48
    aput v16, v5, v7

    .line 49
    aput v2, v5, v9

    .line 50
    aput v10, v5, v12

    const/4 v10, 0x4

    .line 51
    aput v15, v5, v10

    const/4 v10, 0x5

    .line 52
    aput v2, v5, v10

    .line 53
    iget-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_3

    invoke-virtual {v10, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 54
    :cond_3
    :try_start_6
    monitor-exit v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 57
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 58
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 59
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 60
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v8

    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    add-float v15, v14, v13

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v8

    add-float/2addr v14, v13

    .line 61
    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    .line 62
    :try_start_7
    iget-object v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v12, v11

    .line 63
    aput v15, v12, v7

    .line 64
    aput v2, v12, v9

    const/4 v10, 0x3

    .line 65
    aput v5, v12, v10

    const/4 v5, 0x4

    .line 66
    aput v14, v12, v5

    const/4 v5, 0x5

    .line 67
    aput v2, v12, v5

    .line 68
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 69
    :cond_4
    :try_start_8
    monitor-exit v4

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 72
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 73
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 74
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 75
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    add-float v12, v10, v8

    iget v14, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v13

    add-float/2addr v10, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v13

    .line 76
    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    .line 77
    :try_start_9
    iget-object v15, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v12, v15, v11

    .line 78
    aput v14, v15, v7

    .line 79
    aput v2, v15, v9

    const/4 v12, 0x3

    .line 80
    aput v10, v15, v12

    const/4 v10, 0x4

    .line 81
    aput v5, v15, v10

    const/4 v5, 0x5

    .line 82
    aput v2, v15, v5

    .line 83
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 84
    :cond_5
    :try_start_a
    monitor-exit v4

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 87
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 88
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 89
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 90
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->right:F

    sub-float v12, v10, v8

    iget v14, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v13

    sub-float/2addr v10, v8

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v13

    .line 91
    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    .line 92
    :try_start_b
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v12, v8, v11

    .line 93
    aput v14, v8, v7

    .line 94
    aput v2, v8, v9

    const/4 v12, 0x3

    .line 95
    aput v10, v8, v12

    const/4 v10, 0x4

    .line 96
    aput v5, v8, v10

    const/4 v5, 0x5

    .line 97
    aput v2, v8, v5

    .line 98
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 99
    :cond_6
    :try_start_c
    monitor-exit v4

    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x3df01ac5

    .line 101
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v4

    const v4, 0x3db41414

    .line 102
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 103
    iget v10, v8, Landroid/graphics/RectF;->top:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v8

    mul-float/2addr v10, v4

    .line 104
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 105
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 106
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 107
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 108
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v8, Landroid/graphics/RectF;->top:F

    sub-float v14, v13, v10

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v5

    sub-float/2addr v13, v10

    .line 109
    monitor-enter v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    .line 110
    :try_start_d
    iget-object v15, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v12, v15, v11

    .line 111
    aput v14, v15, v7

    .line 112
    aput v2, v15, v9

    const/4 v12, 0x3

    .line 113
    aput v8, v15, v12

    const/4 v8, 0x4

    .line 114
    aput v13, v15, v8

    const/4 v8, 0x5

    .line 115
    aput v2, v15, v8

    .line 116
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 117
    :cond_7
    :try_start_e
    monitor-exit v4

    .line 118
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 120
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 121
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 122
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 123
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v5

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    add-float v14, v13, v10

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v5

    add-float/2addr v13, v10

    .line 124
    monitor-enter v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    .line 125
    :try_start_f
    iget-object v15, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v12, v15, v11

    .line 126
    aput v14, v15, v7

    .line 127
    aput v2, v15, v9

    const/4 v12, 0x3

    .line 128
    aput v8, v15, v12

    const/4 v8, 0x4

    .line 129
    aput v13, v15, v8

    const/4 v8, 0x5

    .line 130
    aput v2, v15, v8

    .line 131
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 132
    :cond_8
    :try_start_10
    monitor-exit v4

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 135
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 136
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 137
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 138
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->left:F

    add-float v13, v12, v5

    iget v14, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v10

    add-float/2addr v12, v5

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v10

    .line 139
    monitor-enter v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 140
    :try_start_11
    iget-object v15, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v15, v11

    .line 141
    aput v14, v15, v7

    .line 142
    aput v2, v15, v9

    const/4 v13, 0x3

    .line 143
    aput v12, v15, v13

    const/4 v12, 0x4

    .line 144
    aput v8, v15, v12

    const/4 v8, 0x5

    .line 145
    aput v2, v15, v8

    .line 146
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 147
    :cond_9
    :try_start_12
    monitor-exit v4

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 150
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 151
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 152
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 153
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->right:F

    sub-float v13, v12, v5

    iget v14, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v10

    sub-float/2addr v12, v5

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v10

    .line 154
    monitor-enter v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    .line 155
    :try_start_13
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v8, v11

    .line 156
    aput v14, v8, v7

    .line 157
    aput v2, v8, v9

    const/4 v10, 0x3

    .line 158
    aput v12, v8, v10

    const/4 v10, 0x4

    .line 159
    aput v5, v8, v10

    const/4 v5, 0x5

    .line 160
    aput v2, v8, v5

    .line 161
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 162
    :cond_a
    :try_start_14
    monitor-exit v4

    .line 163
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    double-to-float v8, v12

    mul-float/2addr v8, v3

    .line 166
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v6

    .line 167
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_b

    neg-float v8, v8

    neg-float v4, v4

    .line 168
    :cond_b
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 169
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 170
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 171
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 172
    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v12, v10, Landroid/graphics/RectF;->left:F

    iget v13, v10, Landroid/graphics/RectF;->top:F

    sub-float v14, v13, v6

    sub-float/2addr v14, v8

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v6

    add-float/2addr v13, v8

    .line 173
    monitor-enter v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 174
    :try_start_15
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v12, v6, v11

    .line 175
    aput v14, v6, v7

    .line 176
    aput v2, v6, v9

    const/4 v8, 0x3

    .line 177
    aput v10, v6, v8

    const/4 v8, 0x4

    .line 178
    aput v13, v6, v8

    const/4 v8, 0x5

    .line 179
    aput v2, v6, v8

    .line 180
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 181
    :cond_c
    :try_start_16
    monitor-exit v5

    .line 182
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 184
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 185
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 186
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 187
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float v10, v8, v3

    sub-float/2addr v10, v4

    iget v12, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v3

    add-float/2addr v8, v4

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    .line 188
    monitor-enter v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    .line 189
    :try_start_17
    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v4, v11

    .line 190
    aput v12, v4, v7

    .line 191
    aput v2, v4, v9

    const/4 v6, 0x3

    .line 192
    aput v8, v4, v6

    const/4 v6, 0x4

    .line 193
    aput v3, v4, v6

    const/4 v3, 0x5

    .line 194
    aput v2, v4, v3

    .line 195
    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 196
    :cond_d
    :try_start_18
    monitor-exit v5

    .line 197
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x3e904104

    .line 198
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v3

    const v3, 0x3ead5555

    .line 199
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    .line 200
    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v3

    .line 201
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 202
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 203
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 204
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 205
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v4

    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float v12, v10, v6

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    sub-float/2addr v10, v6

    .line 206
    monitor-enter v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    .line 207
    :try_start_19
    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v13, v11

    .line 208
    aput v12, v13, v7

    .line 209
    aput v2, v13, v9

    const/4 v8, 0x3

    .line 210
    aput v5, v13, v8

    const/4 v5, 0x4

    .line 211
    aput v10, v13, v5

    const/4 v5, 0x5

    .line 212
    aput v2, v13, v5

    .line 213
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_e

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 214
    :cond_e
    :try_start_1a
    monitor-exit v3

    .line 215
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 217
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 218
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 219
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 220
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v4

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    add-float v12, v10, v6

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    add-float/2addr v10, v6

    .line 221
    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    .line 222
    :try_start_1b
    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v13, v11

    .line 223
    aput v12, v13, v7

    .line 224
    aput v2, v13, v9

    const/4 v8, 0x3

    .line 225
    aput v5, v13, v8

    const/4 v5, 0x4

    .line 226
    aput v10, v13, v5

    const/4 v5, 0x5

    .line 227
    aput v2, v13, v5

    .line 228
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_f

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 229
    :cond_f
    :try_start_1c
    monitor-exit v3

    .line 230
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 232
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 233
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 234
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 235
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float v10, v8, v4

    iget v12, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v6

    add-float/2addr v8, v4

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    .line 236
    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 237
    :try_start_1d
    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v13, v11

    .line 238
    aput v12, v13, v7

    .line 239
    aput v2, v13, v9

    const/4 v10, 0x3

    .line 240
    aput v8, v13, v10

    const/4 v8, 0x4

    .line 241
    aput v5, v13, v8

    const/4 v5, 0x5

    .line 242
    aput v2, v13, v5

    .line 243
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_10

    invoke-virtual {v5, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 244
    :cond_10
    :try_start_1e
    monitor-exit v3

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 247
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 248
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 249
    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 250
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->right:F

    sub-float v10, v8, v4

    iget v12, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v6

    sub-float/2addr v8, v4

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v6

    .line 251
    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 252
    :try_start_1f
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v5, v11

    .line 253
    aput v12, v5, v7

    .line 254
    aput v2, v5, v9

    const/4 v6, 0x3

    .line 255
    aput v8, v5, v6

    const/4 v6, 0x4

    .line 256
    aput v4, v5, v6

    const/4 v4, 0x5

    .line 257
    aput v2, v5, v4

    .line 258
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 259
    :cond_11
    :try_start_20
    monitor-exit v3

    .line 260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 263
    :try_start_21
    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    .line 264
    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    .line 265
    monitor-exit v3

    throw v0

    :catchall_3
    move-exception v0

    .line 266
    monitor-exit v3

    throw v0

    :catchall_4
    move-exception v0

    .line 267
    monitor-exit v5

    throw v0

    :catchall_5
    move-exception v0

    .line 268
    monitor-exit v5

    throw v0

    :catchall_6
    move-exception v0

    .line 269
    monitor-exit v4

    throw v0

    :catchall_7
    move-exception v0

    .line 270
    monitor-exit v4

    throw v0

    :catchall_8
    move-exception v0

    .line 271
    monitor-exit v4

    throw v0

    :catchall_9
    move-exception v0

    .line 272
    monitor-exit v4

    throw v0

    :catchall_a
    move-exception v0

    .line 273
    monitor-exit v4

    throw v0

    :catchall_b
    move-exception v0

    .line 274
    monitor-exit v4

    throw v0

    :catchall_c
    move-exception v0

    .line 275
    monitor-exit v4

    throw v0

    :catchall_d
    move-exception v0

    .line 276
    monitor-exit v4

    throw v0

    :catchall_e
    move-exception v0

    .line 277
    monitor-exit v4

    throw v0

    :catchall_f
    move-exception v0

    .line 278
    monitor-exit v4

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    .line 279
    :cond_12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->batchDraw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->getDrawList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setGridType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->buildGrid()V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    return-void
.end method
