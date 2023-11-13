.class public final Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "MeterTexture.java"


# static fields
.field public static final METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public static final METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# instance fields
.field public mActiveMeterSegment:I

.field public final mDensity:F

.field public mDirty:Z

.field public final mDotTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mDotVisible:Z

.field public mEGLSurfaceValid:Z

.field public mFboSize:Landroid/graphics/Point;

.field public mInitialized:Z

.field public final mLineTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mMeterSegmentRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mOffScreenProj:[F

.field public final mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mRtl:Z

.field public mStaggeredMeter:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    .line 10
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    .line 12
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    return-void
.end method


# virtual methods
.method public final doLayout()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 2
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-eqz v2, :cond_c

    .line 4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 5
    :goto_0
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getMeterNumOfSegment(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x40c00000    # 6.0f

    .line 7
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float/2addr v3, v5

    .line 8
    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v6, :cond_2

    mul-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x42300000    # 44.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 9
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mFboSize:Landroid/graphics/Point;

    .line 10
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v6, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float v13, v12, v7

    add-float/2addr v13, v5

    iget v5, v6, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    mul-float/2addr v12, v8

    add-float/2addr v12, v5

    invoke-direct {v4, v13, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x41d80000    # 27.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 11
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mFboSize:Landroid/graphics/Point;

    .line 12
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v6, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float v13, v12, v9

    add-float/2addr v13, v5

    iget v5, v6, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    mul-float/2addr v12, v8

    add-float/2addr v12, v5

    invoke-direct {v4, v13, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 13
    :goto_1
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    if-eqz v5, :cond_3

    const/high16 v5, -0x40800000    # -1.0f

    .line 14
    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v6, v5

    iput v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 15
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v5, v9

    iput v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 16
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    mul-float/2addr v5, v9

    iput v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 17
    :cond_3
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mFboSize:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(Landroid/graphics/Point;)V

    .line 18
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    .line 19
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    .line 20
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 21
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v15, v8, v11

    .line 24
    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v11

    .line 25
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-static {v8, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 26
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    const/4 v13, 0x0

    neg-float v14, v15

    neg-float v8, v5

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, 0x41a00000    # 20.0f

    move/from16 v16, v8

    move/from16 v17, v5

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 27
    :goto_2
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 28
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 29
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move v8, v2

    .line 30
    :goto_3
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v13, v12

    const/4 v14, 0x4

    if-ge v8, v13, :cond_9

    .line 31
    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    if-eqz v12, :cond_6

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    if-ne v8, v12, :cond_5

    const/high16 v12, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_5
    const/high16 v12, 0x41000000    # 8.0f

    goto :goto_4

    :cond_6
    const/high16 v12, 0x42000000    # 32.0f

    .line 32
    :goto_4
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v15, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v16, v12, v11

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float v16, v16, v2

    add-float v2, v16, v15

    invoke-direct {v13, v5, v2, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x0

    .line 33
    :goto_5
    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getMeterNumOfSegment(I)I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 34
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v5, v15, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 35
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 36
    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float/2addr v15, v9

    invoke-virtual {v5, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    .line 37
    sget-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v5, v15, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 38
    invoke-virtual {v5, v14, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 39
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float/2addr v6, v12

    div-float/2addr v6, v11

    invoke-virtual {v5, v9, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 40
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    if-eqz v5, :cond_7

    .line 42
    invoke-virtual {v13, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    goto :goto_6

    .line 43
    :cond_7
    invoke-virtual {v13, v3, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object v5, v13

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_3

    .line 44
    :cond_9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x40400000    # 3.0f

    .line 45
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    mul-float/2addr v1, v2

    .line 46
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 47
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mFboSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v11

    mul-float/2addr v2, v7

    sub-float/2addr v5, v2

    .line 48
    array-length v2, v12

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_b

    aget-object v7, v12, v6

    .line 49
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    div-float v13, v1, v11

    .line 50
    invoke-virtual {v8, v13, v13, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 51
    iget-boolean v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    if-eqz v13, :cond_a

    .line 52
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 53
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float v7, v4, v7

    invoke-direct {v13, v7, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_8

    .line 54
    :cond_a
    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 55
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v4

    invoke-direct {v13, v7, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 56
    :goto_8
    invoke-virtual {v8, v14, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 57
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    .line 59
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    :cond_c
    :goto_9
    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getMeterNumOfSegment(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    .line 3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->onDrawFboContents([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFboContents([F[F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v0, 0x4100

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort()V

    .line 6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 10
    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
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

.method public final unloadTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
