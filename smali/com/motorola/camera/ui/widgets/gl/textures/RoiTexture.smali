.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "RoiTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;
    }
.end annotation


# instance fields
.field public mActiveDrag:Z

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mDensity:F

.field public mEnableDrag:Z

.field public mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mLocked:Z

.field public mRectRoi:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

.field public mRoiActive:Z

.field public mRoiCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSupportsExposureComp:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 7
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    .line 8
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 9
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 v0, 0x9

    invoke-direct {p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 10
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;

    invoke-direct {p3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    invoke-direct {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressCallback;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    return-void
.end method


# virtual methods
.method public final applyActiveBarAnimation(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;Z)V

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz p1, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0xc8

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyCenterRoiAnimation(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getShowAnimation()Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    const-wide/16 v2, 0x1f4

    .line 3
    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getHideAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 4
    :goto_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$9;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$9;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 5
    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 7
    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    aput-object v0, p1, v4

    invoke-virtual {v2, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p1, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyLockedAnimation(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v1, v0

    const/high16 v2, 0x42b40000    # 90.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    :goto_0
    move v7, v1

    if-eqz p1, :cond_1

    int-to-float p1, v0

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_1
    int-to-float p1, v0

    :goto_1
    move v8, p1

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$7;

    invoke-direct {v4, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;F)V

    const-wide/16 v5, 0x1f4

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyShowAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getShowAnimation()Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyShowBarAnimation()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 3
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    .line 2
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    return-void
.end method

.method public final getHideAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$5;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 3
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    iput-object p0, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v8
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 5
    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x42480000    # 50.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 6
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 5
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Landroid/graphics/PointF;->x:F

    :goto_1
    div-float/2addr v3, v5

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    :goto_2
    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_3
    div-float/2addr p0, v5

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v4, v2, v3

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v5, v0, p0

    add-float/2addr v2, v3

    sub-float/2addr v0, p0

    invoke-direct {v1, v4, v5, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    return-object v1
.end method

.method public final getShowAnimation()Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
    .locals 9

    .line 1
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 2
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 3
    iput-object p0, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v8
.end method

.method public final loadTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->loadTexture()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    move-result-object p0

    const/16 v0, 0x3e8

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    return-void
.end method

.method public final onChangePosition(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setRoiActive(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object p3

    .line 3
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object p3

    .line 5
    :goto_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    xor-int/lit8 p4, p1, 0x1

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyShowBarAnimation()V

    :cond_2
    if-nez p1, :cond_3

    .line 8
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p2, :cond_5

    :cond_3
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    invoke-interface {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->onDrag(Z)V

    .line 11
    :cond_4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    :cond_5
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    .line 3
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    const/16 v0, 0xc11

    .line 6
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 9
    invoke-static {v1, v2, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->scissor(IIII)V

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->disable(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onLongPress$1(ZLandroid/graphics/PointF;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->onLongPress(ZLandroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->onSingleTap(Landroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method public final onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->onDown()V

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setFocusExposeLocked(ZZ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 4
    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x439d8000    # 315.0f

    float-to-double v3, v3

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 6
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iget v6, v0, Landroid/graphics/PointF;->x:F

    float-to-double v7, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-float v2, v9

    add-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    double-to-float v2, v2

    sub-float/2addr v0, v2

    .line 9
    invoke-virtual {v5, v6, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 13
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p0, p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setRoiActive(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setTouchable(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->unloadTexture()V

    :cond_2
    return-void
.end method

.method public final updateNewRect(FF)Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    .line 4
    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 5
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    .line 6
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    sub-float v5, p1, v2

    add-float v6, p2, v1

    add-float/2addr p1, v2

    sub-float/2addr p2, v1

    invoke-direct {v4, v5, v6, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;-><init>(FFFF)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->getTouchBoundaryRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 10
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v5

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v2

    iget-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 12
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->width()F

    move-result v5

    :goto_0
    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    goto :goto_1

    :cond_3
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 13
    :goto_1
    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v6, v5

    if-gez v5, :cond_4

    .line 14
    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v6

    goto :goto_2

    .line 15
    :cond_4
    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    .line 16
    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->height()F

    move-result v6

    :goto_2
    div-float/2addr v6, v3

    add-float/2addr v6, v5

    goto :goto_3

    :cond_5
    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 17
    :goto_3
    iget-object v3, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 18
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v4, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 19
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 20
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {v3, v5, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 21
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 22
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->mRectF:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_6

    move p2, v0

    .line 23
    :cond_6
    :goto_4
    monitor-enter p0

    .line 24
    :try_start_0
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    .line 25
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p1, :cond_7

    .line 27
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result v3

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v5

    invoke-direct {v2, v3, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-interface {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;->onRoiUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_7
    monitor-exit p0

    .line 29
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x2

    .line 30
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    .line 31
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-static {v0}, Landroidx/window/core/Version$$ExternalSyntheticOutline0;->getMX(I)F

    move-result v0

    mul-float/2addr v0, p0

    invoke-direct {p2, v0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p0, 0x4

    .line 32
    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_9
    return-object v4

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    throw p1
.end method
