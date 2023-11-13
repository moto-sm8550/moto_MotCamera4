.class public final Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "GeneralAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
    }
.end annotation

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
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 2
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatMode:I

    .line 3
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatCount:I

    .line 4
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDuration:J

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStart:F

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    sub-float/2addr p5, p4

    .line 7
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDelta:F

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

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callApplyValue(F)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callAnimationEnd()V

    return v0

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float p1, v3

    .line 7
    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDuration:J

    long-to-float v3, v3

    div-float/2addr p1, v3

    .line 8
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-nez v3, :cond_6

    cmpl-float v3, p1, v6

    if-lez v3, :cond_b

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    .line 10
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatCount:I

    if-le p1, v3, :cond_3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callApplyValue(F)V

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callAnimationEnd()V

    return v0

    .line 13
    :cond_3
    :goto_0
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    .line 14
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v7, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callApplyValue(F)V

    goto :goto_1

    .line 16
    :cond_5
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    goto :goto_3

    :cond_6
    cmpl-float v3, p1, v6

    if-lez v3, :cond_b

    .line 18
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    .line 19
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatCount:I

    if-le p1, v3, :cond_8

    if-ne v3, v4, :cond_7

    goto :goto_2

    .line 20
    :cond_7
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStart:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callApplyValue(F)V

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callAnimationEnd()V

    return v0

    .line 22
    :cond_8
    :goto_2
    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    .line 23
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    :cond_a
    :goto_3
    move p1, v5

    .line 25
    :cond_b
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    if-eqz v0, :cond_c

    .line 26
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDelta:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    goto :goto_4

    .line 27
    :cond_c
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStart:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDelta:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 28
    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->callApplyValue(F)V

    return v7
.end method

.method public final callAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return-void
.end method

.method public final callApplyValue(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    :cond_0
    return-void
.end method

.method public final startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method
