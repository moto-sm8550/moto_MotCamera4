.class public final Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "RotateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/ui/widgets/gl/animations/Animation<",
        "Lcom/motorola/camera/ui/widgets/gl/textures/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public mCurrentCount:I

.field public mDelta:F

.field public mDuration:J

.field public mEnd:F

.field public mPeakValue:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public mStart:F

.field public mStartTime:J

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 2
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    .line 3
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    .line 4
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    sub-float/2addr p5, p4

    .line 7
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    .line 9
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 8

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_12

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_b

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_6

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 7
    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float p1, v5

    .line 8
    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    long-to-float v5, v5

    div-float/2addr p1, v5

    .line 9
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_8

    cmpl-float v5, p1, v7

    if-lez v5, :cond_e

    .line 10
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    .line 11
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    if-le p1, v5, :cond_4

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_b

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_6

    .line 15
    :cond_4
    :goto_2
    iput-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    .line 16
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_3

    .line 19
    :cond_6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    .line 20
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_f

    .line 21
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    goto :goto_9

    :cond_8
    cmpl-float v5, p1, v7

    if-lez v5, :cond_e

    .line 22
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    .line 23
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    if-le p1, v5, :cond_c

    if-ne v5, v6, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_5

    .line 26
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_b

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_b
    :goto_6
    move v0, v2

    goto :goto_c

    .line 27
    :cond_c
    :goto_7
    iput-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    .line 28
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    .line 29
    :cond_d
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    .line 30
    :goto_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_f

    .line 31
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    goto :goto_9

    :cond_e
    move v1, p1

    .line 32
    :cond_f
    :goto_9
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    if-eqz p1, :cond_10

    .line 33
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    goto :goto_a

    .line 34
    :cond_10
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 35
    :goto_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, p1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_b

    :cond_11
    :goto_c
    return v0

    :cond_12
    const/4 v3, 0x2

    if-ne v3, p1, :cond_1b

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 38
    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long/2addr v3, v5

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    long-to-float v5, v3

    mul-float/2addr p1, v5

    mul-long/2addr v3, v3

    long-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr p1, v3

    .line 40
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    cmpl-float v3, v3, p1

    if-lez v3, :cond_13

    .line 41
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_18

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_e

    .line 42
    :cond_13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    .line 43
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, p1

    .line 44
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    cmpg-float v4, p1, v1

    const/high16 v5, -0x40800000    # -1.0f

    if-gez v4, :cond_14

    add-float v4, p1, v3

    cmpl-float v4, v4, v1

    if-gtz v4, :cond_16

    :cond_14
    cmpl-float v4, p1, v1

    if-lez v4, :cond_15

    add-float/2addr p1, v3

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_16

    :cond_15
    if-nez v4, :cond_19

    .line 45
    :cond_16
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_d

    .line 47
    :cond_17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_18

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_18
    :goto_e
    move v0, v2

    goto :goto_10

    .line 48
    :cond_19
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_f

    :cond_1a
    :goto_10
    return v0

    :cond_1b
    return v2
.end method

.method public final cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return-void
.end method

.method public final startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method
