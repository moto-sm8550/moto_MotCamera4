.class public final Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "FadeAnimation.java"


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

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 2
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    .line 3
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    .line 4
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    sub-float/2addr p5, p4

    .line 7
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    .line 8
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 8

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    return v0

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float p1, v3

    .line 7
    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    long-to-float v3, v3

    div-float/2addr p1, v3

    .line 8
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-nez v3, :cond_a

    cmpl-float v3, p1, v6

    if-lez v3, :cond_11

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    .line 10
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    if-le p1, v3, :cond_6

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_5
    return v0

    .line 14
    :cond_6
    :goto_2
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    .line 15
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_3

    .line 18
    :cond_8
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    .line 19
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_10

    .line 20
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    goto :goto_7

    :cond_a
    cmpl-float v3, p1, v6

    if-lez v3, :cond_11

    .line 21
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    .line 22
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    if-le p1, v3, :cond_e

    if-ne v3, v4, :cond_b

    goto :goto_6

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_5

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_d
    return v0

    .line 26
    :cond_e
    :goto_6
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    .line 27
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    .line 28
    :cond_f
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    :cond_10
    :goto_7
    move p1, v5

    .line 29
    :cond_11
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    if-eqz v0, :cond_12

    .line 30
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    goto :goto_8

    .line 31
    :cond_12
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 32
    :goto_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_9

    :cond_13
    return v7
.end method

.method public final startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method
