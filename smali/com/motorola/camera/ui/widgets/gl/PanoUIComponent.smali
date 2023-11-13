.class public final Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "PanoUIComponent.java"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mCaptureColor:I

.field public mCapturing:Z

.field public mDirection:I

.field public mDirectionDeepTrans:F

.field public final mIdleColor:I

.field public mInitPanoCirlce:Z

.field public final mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mPanoCircleExceed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoHasPlayAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

.field public mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPlayTransAnim:Z

.field public mPlayTransForWrongDirection:Z

.field public mPreTrans:F

.field public mProgressPadding:F

.field public mReversing:Z

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mUpdateColor:Z

.field public final mWarningColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 10
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 17
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 19
    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    .line 20
    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 21
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    .line 22
    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060304

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 23
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    .line 25
    invoke-interface {p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0603dc

    .line 26
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 27
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    return-void
.end method


# virtual methods
.method public final animateArrowIcon(I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x4

    .line 2
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 4
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v11, :cond_2

    if-eq v1, v10, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    neg-float v1, v2

    .line 6
    invoke-virtual {v9, v3, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v9, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v9, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_3
    neg-float v1, v2

    .line 9
    invoke-virtual {v9, v1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 10
    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v13, 0x0

    const-wide/16 v14, 0x190

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x2

    const/16 v19, 0x0

    const/16 v18, 0x2

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 11
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 12
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 14
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    invoke-direct {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 15
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 16
    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 17
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    new-array v2, v11, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 18
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v4, v2, v5

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 19
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v3, v11}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 20
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const-wide/16 v14, 0x64

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 21
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 22
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v19, 0x0

    const-wide/16 v20, 0x64

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 24
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 25
    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;

    invoke-direct {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-direct {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 27
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 28
    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 29
    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 30
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 31
    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    new-array v1, v11, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 32
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v2, v1, v5

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 33
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v4, v10}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkExceedBoundary(ILcom/motorola/camera/ui/widgets/gl/RectWrapper;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v2

    const v2, 0x3d4ccccd

    :goto_0
    mul-float/2addr p3, v2

    const/16 v2, 0x10e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_5

    .line 5
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_3

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    if-ne p1, v4, :cond_a

    .line 8
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_8

    if-ne p0, v2, :cond_6

    goto :goto_2

    .line 9
    :cond_6
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_7

    move v3, v4

    :cond_7
    return v3

    .line 10
    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_9

    move v3, v4

    :cond_9
    return v3

    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 11
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_d

    if-ne p0, v2, :cond_b

    goto :goto_3

    .line 12
    :cond_b
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    move v3, v4

    :cond_c
    return v3

    .line 13
    :cond_d
    :goto_3
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_e

    move v3, v4

    :cond_e
    return v3

    :cond_f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 14
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_12

    if-ne p0, v2, :cond_10

    goto :goto_4

    .line 15
    :cond_10
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_11

    move v3, v4

    :cond_11
    return v3

    .line 16
    :cond_12
    :goto_4
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_13

    move v3, v4

    :cond_13
    return v3
.end method

.method public final getPaddingBottom()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBtnHeight()F

    move-result v1

    mul-float/2addr v1, v0

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 6
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    div-float/2addr v1, v4

    sub-float/2addr p0, v1

    const/4 v0, 0x0

    cmpl-float v1, v2, p0

    if-ltz v1, :cond_0

    sub-float v0, v2, p0

    :cond_0
    div-float/2addr v0, v4

    return v0
.end method

.method public final getProgessBarVerHeight()I
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 4
    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isPreviewCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 7
    iget v3, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v3, v0, Lcom/motorola/camera/PreviewSize;->width:I

    .line 8
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    .line 10
    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 11
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 12
    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    move-object v1, v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    .line 14
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    div-float v0, v4, v0

    :cond_1
    const v3, 0x3cf5c28f

    sub-float v3, v0, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    div-float v4, v1, v0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 17
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 20
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v3

    .line 22
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBtnHeight()F

    move-result v4

    mul-float/2addr v4, v3

    .line 23
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 24
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    .line 25
    invoke-interface {v6}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr p0, v5

    div-float/2addr v4, v2

    sub-float/2addr p0, v4

    const/4 v2, 0x0

    cmpl-float v3, v1, p0

    if-ltz v3, :cond_3

    sub-float v2, v1, p0

    :cond_3
    sub-float/2addr v0, v2

    float-to-int p0, v0

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0, p0, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticOutline0;->m([Lcom/motorola/camera/fsm/camera/StateKey;Landroid/util/ArraySet;Landroid/util/ArraySet;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoUIComponent"

    return-object p0
.end method

.method public final getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/16 v2, 0x10e

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 8
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    .line 11
    :cond_5
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 13
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 16
    :cond_8
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 18
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_3

    .line 19
    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    .line 21
    :cond_b
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_4
    return-object v0
.end method

.method public final loadTextures()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    .line 4
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v5, 0x5

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 5
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 6
    monitor-enter v2

    .line 7
    monitor-exit v2

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 9
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v6, 0x1

    .line 13
    iput v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mAlphaChange:I

    .line 14
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 15
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v7, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 17
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v2, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 18
    monitor-enter v2

    .line 19
    monitor-exit v2

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 21
    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 22
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    .line 23
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v3, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    .line 24
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 25
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 26
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 27
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 28
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    .line 29
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 30
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->loadTexture()V

    .line 31
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 32
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v3, 0x7f080155

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 33
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return v6
.end method

.method public final needReversing(FFII)Z
    .locals 3

    const/16 p0, 0x10e

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    const/4 v2, 0x3

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_1

    if-eqz p3, :cond_4

    if-eq p3, p0, :cond_4

    goto :goto_1

    :cond_1
    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    cmpg-float p4, p1, p2

    if-gez p4, :cond_6

    if-eqz p3, :cond_5

    if-ne p3, p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_2

    :cond_6
    cmpl-float p1, p1, p2

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_4

    if-eq p3, p0, :cond_4

    goto :goto_1

    :goto_2
    return v1
.end method

.method public final needUpdateColor(FFIIFI)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    const/16 p6, 0x10e

    if-ne p3, p6, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    :goto_0
    sub-float/2addr p2, p1

    float-to-int p1, p2

    :goto_1
    const/4 p2, 0x0

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f000000    # 0.5f

    if-eqz p4, :cond_5

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, -0x1

    if-le p1, p4, :cond_6

    sub-float/2addr p5, p6

    .line 1
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_4

    goto :goto_3

    :cond_4
    move p0, p2

    goto :goto_3

    :cond_5
    :goto_2
    if-ge p1, p0, :cond_6

    sub-float/2addr p5, p6

    .line 2
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_4

    :cond_6
    :goto_3
    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 5
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 8
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p2, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onPreDraw([F[F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onRotate(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1100c6

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void

    .line 10
    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/room/RoomMasterTable;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final progressCapture(Landroid/os/Bundle;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "status"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "progressX"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "maxWidth"

    .line 4
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "progressY"

    .line 5
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "maxHeight"

    .line 6
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v9, v4

    div-double/2addr v2, v9

    double-to-float v2, v2

    int-to-double v3, v7

    div-double/2addr v5, v3

    double-to-float v3, v5

    .line 7
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/16 v9, 0xb4

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0x10e

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, v9, :cond_2

    sub-float v6, v10, v2

    goto :goto_1

    :cond_2
    if-ne v4, v11, :cond_3

    sub-float v6, v10, v3

    goto :goto_1

    :cond_3
    if-ne v4, v5, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v2

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v9, :cond_6

    sub-float v2, v10, v3

    goto :goto_3

    :cond_6
    if-ne v4, v11, :cond_7

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_8

    sub-float v2, v10, v2

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v3

    :goto_3
    const-string v3, "direction"

    .line 8
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 10
    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v7, 0x42300000    # 44.0f

    mul-float/2addr v4, v7

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v4, v12

    .line 11
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v4}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v15

    .line 12
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 13
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 14
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v14, 0x2

    const/4 v12, 0x3

    const/4 v10, 0x1

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    if-ne v4, v11, :cond_d

    if-ne v3, v10, :cond_a

    goto :goto_6

    :cond_a
    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    if-ne v3, v14, :cond_c

    goto :goto_5

    :cond_c
    if-ne v3, v12, :cond_15

    goto :goto_4

    :cond_d
    if-ne v4, v5, :cond_11

    if-ne v3, v10, :cond_e

    goto :goto_7

    :cond_e
    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    if-ne v3, v14, :cond_10

    goto :goto_4

    :cond_10
    if-ne v3, v12, :cond_15

    goto :goto_5

    :cond_11
    if-ne v4, v9, :cond_15

    if-ne v3, v10, :cond_12

    :goto_4
    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    if-nez v3, :cond_13

    :goto_5
    move v3, v10

    goto :goto_8

    :cond_13
    if-ne v3, v14, :cond_14

    :goto_6
    move v3, v12

    goto :goto_8

    :cond_14
    if-ne v3, v12, :cond_15

    :goto_7
    move v3, v14

    :cond_15
    :goto_8
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 15
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    if-nez v4, :cond_16

    .line 16
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 17
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    .line 18
    iput-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 19
    :cond_16
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v7, v3

    .line 20
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    const/high16 v18, 0x40000000    # 2.0f

    if-nez v3, :cond_1e

    .line 21
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 22
    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v14}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v14

    const/high16 v19, 0x41a00000    # 20.0f

    mul-float v14, v14, v19

    .line 23
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v9}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v20, 0x41000000    # 8.0f

    mul-float v9, v9, v20

    .line 24
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v5}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v21, 0x40800000    # 4.0f

    mul-float v5, v5, v21

    .line 25
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v11}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float v11, v11, v18

    .line 26
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 27
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    if-eqz v3, :cond_18

    if-ne v3, v10, :cond_17

    goto :goto_9

    :cond_17
    const/4 v3, 0x0

    goto :goto_a

    :cond_18
    :goto_9
    move v3, v10

    :goto_a
    const/high16 v4, 0x42200000    # 40.0f

    .line 30
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v10}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float/2addr v10, v4

    const v4, 0x3d4ccccd

    mul-float/2addr v10, v4

    if-eqz v3, :cond_19

    .line 31
    sget v3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    int-to-float v3, v3

    .line 32
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 33
    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v23, 0x41800000    # 16.0f

    goto :goto_b

    .line 34
    :cond_19
    sget v3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v3, v3

    .line 35
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 36
    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v23, 0x42000000    # 32.0f

    :goto_b
    mul-float v4, v4, v23

    sub-float/2addr v3, v4

    add-float/2addr v3, v10

    const/4 v4, 0x0

    .line 37
    :goto_c
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 38
    invoke-interface {v10}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v22, 0x42500000    # 52.0f

    mul-float v10, v10, v22

    div-float v10, v3, v10

    .line 39
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    if-ge v4, v10, :cond_1a

    .line 40
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v23, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move/from16 v24, v8

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-direct {v10, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    .line 41
    monitor-enter v10

    .line 42
    monitor-exit v10

    .line 43
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 44
    iput v3, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 45
    invoke-virtual {v10, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 46
    invoke-virtual {v10, v8, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 48
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v3, v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 50
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    .line 51
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 52
    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 53
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v8}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v8

    mul-float v8, v8, v18

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 55
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v23

    move/from16 v8, v24

    goto :goto_c

    :cond_1a
    move/from16 v24, v8

    const/4 v3, 0x0

    .line 58
    :goto_d
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 59
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v3, :cond_1b

    .line 60
    invoke-virtual {v4, v14, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v8, v14, v18

    .line 61
    iput v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 62
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    goto :goto_e

    .line 63
    :cond_1b
    invoke-virtual {v4, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v8, v9, v18

    .line 64
    iput v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 65
    invoke-virtual {v4, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 66
    :goto_e
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    .line 67
    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 68
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v8, 0x0

    .line 69
    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 70
    :cond_1c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 71
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v5}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float v5, v5, v18

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 73
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_f

    .line 75
    :cond_1d
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 76
    invoke-virtual {v0, v7, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    .line 77
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 78
    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    goto :goto_10

    :cond_1e
    move/from16 v24, v8

    move v4, v10

    .line 79
    :goto_10
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const v5, 0x3d4cccd0

    if-eqz v3, :cond_21

    if-ne v3, v4, :cond_1f

    goto :goto_11

    .line 80
    :cond_1f
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v3

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v12, v16, v3

    .line 81
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_20

    move/from16 v3, v16

    :cond_20
    move v10, v2

    move v9, v3

    goto :goto_12

    :cond_21
    :goto_11
    const/high16 v16, 0x3f000000    # 0.5f

    .line 82
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->updateProgress(F)F

    move-result v2

    sub-float v12, v16, v2

    .line 83
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_22

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_22
    move v10, v2

    move v9, v6

    :goto_12
    const-string v2, "preview"

    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_27

    .line 85
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v2, 0xb4

    if-eqz v1, :cond_24

    if-ne v1, v2, :cond_23

    goto :goto_13

    .line 86
    :cond_23
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_14

    .line 87
    :cond_24
    :goto_13
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_14
    int-to-float v1, v1

    .line 88
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v3, :cond_26

    if-ne v3, v2, :cond_25

    goto :goto_15

    .line 89
    :cond_25
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_16

    .line 90
    :cond_26
    :goto_15
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_16
    int-to-float v2, v2

    move v14, v1

    move v12, v2

    goto :goto_17

    :cond_27
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 91
    :goto_17
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 92
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 93
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 94
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 95
    check-cast v3, Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    if-eqz v1, :cond_29

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    goto :goto_18

    .line 96
    :cond_28
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    .line 97
    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v14

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    move v4, v12

    move v2, v14

    move v3, v2

    goto :goto_19

    .line 98
    :cond_29
    :goto_18
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 99
    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    move v2, v1

    move v1, v12

    move v3, v1

    move v4, v14

    .line 100
    :goto_19
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 101
    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 102
    monitor-enter v5

    .line 103
    :try_start_0
    iput v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    monitor-exit v5

    .line 105
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 106
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    .line 107
    monitor-enter v3

    .line 108
    :try_start_1
    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v3

    .line 110
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 111
    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    .line 112
    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    neg-float v1, v14

    div-float v1, v1, v18

    mul-float v2, v14, v9

    add-float v11, v2, v1

    div-float v23, v14, v18

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v17, v9

    mul-float/2addr v1, v14

    sub-float v6, v23, v1

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float v5, v1, v15

    sub-float v1, v17, v10

    mul-float v2, v12, v1

    div-float v25, v12, v18

    neg-float v3, v12

    mul-float/2addr v3, v1

    add-float v3, v3, v25

    add-float v4, v3, v5

    .line 114
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2b

    if-nez v1, :cond_2a

    goto :goto_1a

    :cond_2a
    move v3, v5

    goto :goto_1b

    :cond_2b
    :goto_1a
    const/high16 v1, 0x437a0000    # 250.0f

    .line 115
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 116
    invoke-interface {v3}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v3

    mul-float/2addr v3, v1

    sub-float v1, v5, v3

    move v3, v1

    .line 117
    :goto_1b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 p1, v3

    int-to-float v3, v1

    sub-float v26, v3, v12

    div-float v26, v26, v18

    div-float v3, v3, v18

    sub-float v3, v3, v26

    mul-float v27, v12, v10

    sub-float v3, v3, v27

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v18

    add-float v1, v1, v26

    add-float/2addr v2, v1

    .line 118
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v26, v4

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move/from16 v27, v5

    if-eqz v1, :cond_35

    const/4 v5, 0x1

    if-eq v1, v5, :cond_32

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2f

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2c

    const/16 v16, 0x0

    goto :goto_22

    :cond_2c
    if-eqz v4, :cond_2e

    const/16 v1, 0x10e

    if-ne v4, v1, :cond_2d

    goto :goto_1c

    :cond_2d
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_38

    goto :goto_20

    :cond_2e
    :goto_1c
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_38

    goto :goto_20

    :cond_2f
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_31

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_30

    goto :goto_1d

    :cond_30
    cmpl-float v1, v10, v1

    if-lez v1, :cond_38

    goto :goto_20

    :cond_31
    :goto_1d
    cmpg-float v1, v10, v1

    if-gtz v1, :cond_38

    goto :goto_20

    :cond_32
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_34

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_33

    goto :goto_1e

    :cond_33
    cmpg-float v1, v9, v1

    if-gez v1, :cond_38

    goto :goto_20

    :cond_34
    :goto_1e
    cmpl-float v1, v9, v1

    if-ltz v1, :cond_38

    goto :goto_20

    :cond_35
    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v4, :cond_37

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_36

    goto :goto_1f

    :cond_36
    cmpl-float v1, v9, v1

    if-lez v1, :cond_38

    goto :goto_20

    :cond_37
    :goto_1f
    cmpg-float v1, v9, v1

    if-gtz v1, :cond_38

    :goto_20
    const/4 v1, 0x1

    goto :goto_21

    :cond_38
    const/4 v1, 0x0

    :goto_21
    move/from16 v16, v1

    .line 119
    :goto_22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v4, :cond_39

    const/16 v28, 0x1

    goto :goto_23

    :cond_39
    const/16 v28, 0x0

    .line 120
    :goto_23
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v4, 0x42500000    # 52.0f

    mul-float v22, v1, v4

    .line 121
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v13

    .line 122
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v1, v13

    .line 123
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v29, v1

    .line 124
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v1, :cond_5d

    move/from16 v30, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_52

    const/4 v4, 0x2

    if-eq v1, v4, :cond_46

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3a

    move/from16 v33, v7

    move-object/from16 p1, v8

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v20, v29

    move v14, v6

    move/from16 v29, v12

    goto/16 :goto_3d

    .line 125
    :cond_3a
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3b

    .line 126
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 127
    :cond_3b
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3c

    .line 128
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 129
    :cond_3c
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 130
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v23, v1

    move/from16 v31, v15

    move/from16 v15, v29

    move-object/from16 v1, p0

    move/from16 v26, v3

    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v34, v8

    move/from16 v8, p1

    move-object/from16 p1, v34

    move/from16 v29, v12

    move/from16 v12, v30

    move/from16 v30, v14

    move v14, v5

    move/from16 v34, v20

    move/from16 v20, v15

    move/from16 v15, v34

    move/from16 v5, v23

    move/from16 v32, v6

    move v6, v9

    move/from16 v33, v7

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 131
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 132
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 133
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 134
    :cond_3d
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_3e

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_3f

    :cond_3e
    if-nez v28, :cond_3f

    goto/16 :goto_37

    .line 135
    :cond_3f
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 136
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_43

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_40

    goto :goto_27

    :cond_40
    const/4 v2, 0x0

    .line 137
    :goto_24
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5c

    if-eqz v1, :cond_41

    .line 138
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_25

    :cond_41
    move v4, v3

    :goto_25
    neg-float v4, v4

    add-float/2addr v4, v8

    sub-float v4, v4, v25

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    mul-float v6, v6, v22

    add-float/2addr v6, v4

    .line 139
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v7, v6, v12

    if-lez v7, :cond_42

    .line 140
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    .line 141
    invoke-virtual {v4, v2, v12, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_26

    .line 142
    :cond_42
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    .line 143
    invoke-virtual {v4, v2, v6, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_26
    move v2, v5

    goto :goto_24

    :cond_43
    :goto_27
    const/4 v2, 0x0

    .line 144
    :goto_28
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5c

    .line 145
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_44

    .line 146
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_29

    :cond_44
    move v5, v3

    :goto_29
    neg-float v5, v5

    add-float/2addr v5, v8

    add-float v5, v5, v25

    rsub-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    mul-float v6, v6, v22

    add-float/2addr v6, v5

    cmpg-float v5, v6, v14

    if-gez v5, :cond_45

    .line 147
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v5, v11

    .line 148
    invoke-virtual {v4, v5, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2a

    .line 149
    :cond_45
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v5, v11

    .line 150
    invoke-virtual {v4, v5, v6, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_46
    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v31, v15

    move/from16 v20, v29

    const/high16 v15, -0x40800000    # -1.0f

    move/from16 v29, v12

    move/from16 v12, v30

    move/from16 v30, v14

    move v14, v5

    move-object/from16 v34, v8

    move/from16 v8, p1

    move-object/from16 p1, v34

    .line 151
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_47

    .line 152
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 153
    :cond_47
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_48

    .line 154
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 155
    :cond_48
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 156
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move v7, v2

    move v2, v3

    move v3, v7

    move v6, v9

    move v15, v7

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 157
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 158
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_49

    .line 159
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 160
    :cond_49
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_4a

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_4b

    :cond_4a
    if-nez v28, :cond_4b

    goto/16 :goto_37

    .line 161
    :cond_4b
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 162
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_4f

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4c

    goto :goto_2e

    :cond_4c
    const/4 v2, 0x0

    .line 163
    :goto_2b
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    if-eqz v1, :cond_4d

    .line 164
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2c

    :cond_4d
    move v3, v15

    :goto_2c
    neg-float v3, v3

    add-float/2addr v3, v8

    add-float v3, v3, v25

    add-int/lit8 v4, v2, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v22

    sub-float/2addr v3, v5

    .line 165
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpg-float v6, v3, v14

    if-gez v6, :cond_4e

    .line 166
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    const/high16 v6, -0x40800000    # -1.0f

    .line 167
    invoke-virtual {v5, v2, v14, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2d

    :cond_4e
    const/high16 v6, -0x40800000    # -1.0f

    .line 168
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    .line 169
    invoke-virtual {v5, v2, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2d
    move v2, v4

    goto :goto_2b

    :cond_4f
    :goto_2e
    const/4 v2, 0x0

    .line 170
    :goto_2f
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    if-eqz v1, :cond_50

    .line 171
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_30

    :cond_50
    move v3, v15

    :goto_30
    neg-float v3, v3

    add-float/2addr v3, v8

    sub-float v3, v3, v25

    add-int/lit8 v4, v2, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v22

    add-float/2addr v5, v3

    .line 172
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v6, v5, v12

    if-lez v6, :cond_51

    .line 173
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    const/high16 v6, -0x40800000    # -1.0f

    .line 174
    invoke-virtual {v3, v2, v12, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_31

    :cond_51
    const/high16 v6, -0x40800000    # -1.0f

    .line 175
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v2, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v2, v11

    .line 176
    invoke-virtual {v3, v2, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_31
    move v2, v4

    goto :goto_2f

    :cond_52
    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 p1, v8

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v20, v29

    move/from16 v29, v12

    .line 177
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_53

    .line 178
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 179
    :cond_53
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_54

    .line 180
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 181
    :cond_54
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v11, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 182
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move v3, v11

    move/from16 v8, v26

    move/from16 v12, v27

    move v6, v10

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 183
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 184
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_55

    .line 185
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 186
    :cond_55
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_56

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_57

    :cond_56
    if-nez v28, :cond_57

    goto :goto_37

    .line 187
    :cond_57
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 188
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_5a

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_58

    goto :goto_34

    :cond_58
    const/4 v2, 0x0

    .line 189
    :goto_32
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 190
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_59

    .line 191
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_33

    :cond_59
    move v4, v11

    :goto_33
    neg-float v4, v4

    add-float v4, v4, v23

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v22

    sub-float/2addr v4, v5

    const/high16 v5, -0x40800000    # -1.0f

    .line 192
    invoke-virtual {v3, v4, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_32

    :cond_5a
    :goto_34
    const/4 v2, 0x0

    .line 193
    :goto_35
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 194
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_5b

    .line 195
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_36

    :cond_5b
    move v4, v11

    :goto_36
    neg-float v4, v4

    sub-float v4, v4, v23

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v22

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 196
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_35

    :cond_5c
    :goto_37
    move/from16 v14, v32

    goto/16 :goto_3d

    :cond_5d
    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 p1, v8

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v8, v26

    move/from16 v20, v29

    move/from16 v29, v12

    move/from16 v12, v27

    .line 197
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    move/from16 v14, v32

    if-nez v2, :cond_5e

    .line 198
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 199
    :cond_5e
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5f

    .line 200
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 201
    :cond_5f
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v14, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 202
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move-object/from16 v1, p0

    move v3, v14

    move v6, v10

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFIIFI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    .line 203
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 204
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    if-nez v1, :cond_60

    .line 205
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 206
    :cond_60
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v2, :cond_61

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v2, :cond_62

    :cond_61
    if-nez v28, :cond_62

    goto :goto_3d

    .line 207
    :cond_62
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 208
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_65

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_63

    goto :goto_3a

    :cond_63
    const/4 v2, 0x0

    .line 209
    :goto_38
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 210
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_64

    .line 211
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_39

    :cond_64
    move v6, v14

    :goto_39
    neg-float v4, v6

    sub-float v4, v4, v23

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    mul-float v5, v5, v22

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 212
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_38

    :cond_65
    :goto_3a
    const/4 v2, 0x0

    .line 213
    :goto_3b
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 214
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_66

    .line 215
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3c

    :cond_66
    move v6, v14

    :goto_3c
    neg-float v4, v6

    add-float v4, v4, v23

    rsub-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v22

    add-float/2addr v5, v4

    const/high16 v4, -0x40800000    # -1.0f

    .line 216
    invoke-virtual {v3, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 217
    :cond_67
    :goto_3d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x4

    .line 218
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 219
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 220
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v1

    mul-float v13, v13, v18

    add-float/2addr v13, v1

    .line 222
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v1

    sub-float/2addr v1, v13

    div-float v1, v1, v18

    .line 223
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v3

    sub-float/2addr v3, v13

    div-float v3, v3, v18

    .line 224
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x10e

    if-eqz v4, :cond_69

    if-ne v4, v5, :cond_68

    goto :goto_3e

    :cond_68
    neg-float v1, v1

    :cond_69
    :goto_3e
    if-eqz v4, :cond_6b

    if-ne v4, v5, :cond_6a

    goto :goto_3f

    :cond_6a
    neg-float v3, v3

    .line 225
    :cond_6b
    :goto_3f
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v4, :cond_6f

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6c

    goto :goto_40

    :cond_6c
    const/4 v5, 0x2

    if-eq v4, v5, :cond_6d

    const/4 v1, 0x3

    if-ne v4, v1, :cond_71

    .line 226
    :cond_6d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v1

    cmpg-float v1, v13, v1

    if-gez v1, :cond_71

    .line 227
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v4, v33

    invoke-virtual {v1, v4, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 228
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6e

    .line 229
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 230
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 231
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 232
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 233
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v5, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 234
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 235
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 236
    invoke-virtual {v1, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_41

    .line 237
    :cond_6e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 238
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 239
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 240
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 241
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v5, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 242
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 243
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 244
    invoke-virtual {v1, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_41

    :cond_6f
    :goto_40
    move/from16 v4, v33

    .line 245
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v3

    cmpg-float v3, v13, v3

    if-gez v3, :cond_71

    .line 246
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v13, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 247
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_70

    .line 248
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 249
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 250
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 251
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 252
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 253
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 254
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 255
    invoke-virtual {v3, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_41

    .line 256
    :cond_70
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 257
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 258
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 259
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 260
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 261
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 262
    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 263
    invoke-virtual {v3, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_71
    :goto_41
    const/4 v1, 0x0

    .line 264
    :goto_42
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_87

    .line 265
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_73

    .line 266
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 267
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 268
    iget-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v6, :cond_72

    .line 269
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_43

    .line 270
    :cond_72
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_43

    .line 271
    :cond_73
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 272
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 273
    :goto_43
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-gt v1, v6, :cond_74

    .line 274
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v6, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_44

    :cond_74
    const/4 v6, 0x0

    .line 275
    :goto_44
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v0, v12, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/ui/widgets/gl/RectWrapper;Z)Z

    move-result v12

    .line 276
    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v7

    invoke-virtual {v0, v13, v7, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/ui/widgets/gl/RectWrapper;Z)Z

    move-result v7

    .line 277
    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v15

    const/4 v8, 0x0

    invoke-virtual {v0, v13, v15, v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/motorola/camera/ui/widgets/gl/RectWrapper;Z)Z

    move-result v13

    if-eqz v12, :cond_75

    .line 278
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    goto :goto_45

    .line 279
    :cond_75
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    :goto_45
    if-eqz v7, :cond_76

    .line 280
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    goto :goto_46

    .line 281
    :cond_76
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 282
    :goto_46
    invoke-virtual {v3, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 283
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    if-ge v1, v8, :cond_77

    .line 284
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v8, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_78

    .line 285
    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v12, :cond_78

    .line 286
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_47

    :cond_77
    const/4 v8, 0x0

    :cond_78
    :goto_47
    if-eqz v8, :cond_7c

    if-eqz v7, :cond_79

    .line 287
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    goto :goto_48

    .line 288
    :cond_79
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    :goto_48
    if-eqz v7, :cond_7a

    .line 289
    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    goto :goto_49

    .line 290
    :cond_7a
    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    .line 291
    :goto_49
    invoke-virtual {v8, v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v7, :cond_7c

    .line 292
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_7b

    .line 293
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4a

    .line 294
    :cond_7b
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_7c
    :goto_4a
    if-eqz v13, :cond_85

    .line 295
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 296
    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 297
    invoke-virtual {v5, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-eqz v8, :cond_7e

    .line 299
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v3, :cond_7d

    .line 300
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4b

    .line 301
    :cond_7d
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    .line 302
    :cond_7e
    :goto_4b
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_84

    if-eqz v1, :cond_7f

    const/4 v3, 0x1

    goto :goto_4c

    :cond_7f
    const/4 v3, 0x0

    :goto_4c
    const-string v4, "PanoUIComponent"

    const-string v7, "enter into scaleAnim"

    .line 303
    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 305
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_80

    move/from16 v7, v18

    goto :goto_4d

    :cond_80
    move/from16 v7, v17

    :goto_4d
    const/high16 v8, 0x40a00000    # 5.0f

    if-eqz v3, :cond_81

    move v12, v8

    goto :goto_4e

    :cond_81
    move/from16 v12, v18

    :goto_4e
    const/4 v13, 0x0

    .line 306
    invoke-direct {v4, v13, v7, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FF)V

    .line 307
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 308
    iput-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 309
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_82

    goto :goto_4f

    :cond_82
    move/from16 v8, v18

    :goto_4f
    const/4 v12, 0x0

    .line 310
    invoke-direct {v7, v13, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FF)V

    .line 311
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 312
    iput-object v3, v7, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 313
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    invoke-direct {v8, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-direct {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 314
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 315
    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    const/4 v4, 0x1

    new-array v7, v4, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v4, 0x0

    aput-object v5, v7, v4

    .line 316
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 317
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v7, 0x3

    invoke-virtual {v4, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    if-eqz v6, :cond_83

    .line 318
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->scaleAnimMovingCircleSecond(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 319
    :cond_83
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_84
    const/4 v7, 0x3

    const/4 v12, 0x0

    goto :goto_50

    :cond_85
    const/4 v7, 0x3

    const/4 v12, 0x0

    .line 320
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_86

    const/4 v4, 0x1

    .line 321
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 322
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_86

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_86
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_42

    .line 323
    :cond_87
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v1, :cond_88

    .line 324
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    goto :goto_51

    .line 325
    :cond_88
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 326
    :goto_51
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v2, v20

    if-eq v2, v1, :cond_89

    const/4 v2, 0x1

    if-ne v1, v2, :cond_89

    const/4 v2, 0x0

    .line 327
    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_89
    if-eqz v1, :cond_8a

    .line 328
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    if-nez v1, :cond_8a

    .line 329
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    .line 330
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    const/4 v1, 0x1

    .line 331
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    .line 332
    :cond_8a
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    if-eqz v1, :cond_8f

    const v1, 0x3f0ccccd

    mul-float v2, v30, v1

    .line 333
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v12, v29, v1

    .line 334
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 335
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v4, 0xb4

    if-eqz v3, :cond_8c

    if-ne v3, v4, :cond_8b

    goto :goto_52

    :cond_8b
    move v5, v1

    goto :goto_53

    :cond_8c
    :goto_52
    move v5, v2

    :goto_53
    if-eqz v3, :cond_8e

    if-ne v3, v4, :cond_8d

    goto :goto_54

    :cond_8d
    move-object/from16 v6, p1

    move v3, v2

    goto :goto_55

    :cond_8e
    :goto_54
    move-object/from16 v6, p1

    move v3, v1

    :goto_55
    const/4 v4, 0x0

    .line 336
    invoke-static {v6, v5, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 337
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    int-to-float v13, v2

    int-to-float v1, v1

    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v4, v24

    move v7, v14

    move v8, v11

    move/from16 v11, v16

    move v14, v1

    move/from16 v1, v31

    move/from16 v16, v1

    invoke-virtual/range {v3 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V

    goto :goto_56

    :cond_8f
    move-object/from16 v6, p1

    move/from16 v1, v31

    .line 338
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget-boolean v15, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v4, v24

    move v7, v14

    move v8, v11

    move/from16 v11, v16

    move/from16 v2, v29

    move/from16 v13, v30

    move v14, v2

    move/from16 v16, v1

    invoke-virtual/range {v3 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V

    :goto_56
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 339
    monitor-exit v3

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 340
    monitor-exit v5

    throw v1
.end method

.method public final resetDirIconPos(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    const/16 v3, 0x10e

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    const/4 v2, 0x2

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x42b40000    # 90.0f

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 8
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 12
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_4

    .line 13
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 17
    invoke-virtual {p0, v6, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 18
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    .line 19
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 20
    invoke-virtual {p1, v6, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    goto :goto_4

    .line 22
    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 25
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 26
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v3, :cond_a

    goto :goto_3

    .line 27
    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_4

    .line 28
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_4
    return-void
.end method

.method public final scaleAnimMovingCircleSecond(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FF)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final setPanoThumbnailTexBackgroundTranslation(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, p2

    .line 4
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/16 v2, 0x10e

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    .line 6
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v0, v3

    add-float/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 7
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_5

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto/16 :goto_5

    .line 13
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 18
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 19
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-nez p1, :cond_9

    .line 20
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 22
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 23
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 24
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 25
    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 27
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_5

    .line 28
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    .line 29
    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_5
    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    add-float/2addr p1, v0

    .line 8
    new-instance v0, Landroid/util/Size;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v6, v2}, Landroid/util/Size;-><init>(II)V

    .line 9
    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    .line 11
    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    const/high16 v0, 0x42a60000    # 83.0f

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    .line 13
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 14
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v2, Landroid/util/Size;

    invoke-direct {v0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 17
    iget v2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, v2

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v2, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/high16 v0, 0x437a0000    # 250.0f

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr p1, v2

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 21
    invoke-interface {v6}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v4

    .line 22
    invoke-virtual {v0, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    .line 24
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 25
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 27
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 28
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 31
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr p1, v2

    invoke-virtual {v0, v3, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 33
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 34
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFLcom/motorola/camera/PreviewSize;Z)V

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    .line 36
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 37
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 39
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 41
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    .line 42
    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    .line 43
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    .line 44
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    goto/16 :goto_6

    .line 45
    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_6

    .line 47
    :cond_5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    goto/16 :goto_6

    .line 49
    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    const v0, 0x3d4ccccd

    mul-float/2addr p1, v0

    .line 51
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v6, 0x43c60000    # 396.0f

    mul-float/2addr v2, v6

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 52
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    .line 53
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    mul-float/2addr p1, v4

    mul-float/2addr p1, v0

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v2, 0x43be0000    # 380.0f

    mul-float/2addr v0, v2

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 55
    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    .line 56
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    .line 57
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    .line 58
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    .line 59
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 60
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 61
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 62
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 63
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_6

    .line 64
    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    .line 65
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 66
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 67
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 68
    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    goto/16 :goto_6

    .line 69
    :cond_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 70
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    .line 71
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 72
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    .line 73
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 74
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->progressCapture(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 76
    :cond_9
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    .line 78
    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    .line 79
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    .line 81
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    .line 82
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    .line 83
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 84
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 85
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_2

    .line 86
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 87
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    .line 88
    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 89
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    .line 90
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 91
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    .line 92
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 93
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 94
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    .line 95
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 96
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 97
    :cond_d
    :goto_6
    monitor-exit p0

    return-void

    .line 98
    :cond_e
    :goto_7
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->unloadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    return-void
.end method

.method public final updateProgress(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-float p0, p1, v1

    goto :goto_0

    :cond_0
    sub-float p0, p1, v1

    :cond_1
    :goto_0
    return p0
.end method
