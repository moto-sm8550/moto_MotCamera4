.class public final Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "ScaleAnimation.java"


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
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatCount:I

    const-wide/16 v0, 0x64

    .line 4
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    .line 5
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    .line 6
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    sub-float/2addr p3, p2

    .line 7
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

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

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    invoke-virtual {v2, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

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

    move-result-wide v2

    .line 6
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float p1, v4

    .line 7
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    long-to-float v4, v4

    div-float/2addr p1, v4

    .line 8
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_9

    cmpl-float v4, p1, v1

    if-lez v4, :cond_10

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    .line 10
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatCount:I

    if-le p1, v4, :cond_6

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    invoke-virtual {v2, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

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
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    .line 15
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    invoke-virtual {v0, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_3

    .line 18
    :cond_8
    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    goto :goto_6

    :cond_9
    cmpl-float v4, p1, v1

    if-lez v4, :cond_10

    .line 19
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    .line 20
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatCount:I

    if-le p1, v4, :cond_d

    if-ne v4, v5, :cond_a

    goto :goto_5

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    invoke-virtual {v2, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_4

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_c

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_c
    return v0

    .line 24
    :cond_d
    :goto_5
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    .line 25
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    .line 26
    :cond_e
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    :cond_f
    :goto_6
    move p1, v6

    .line 27
    :cond_10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    if-eqz v0, :cond_11

    .line 28
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    goto :goto_7

    .line 29
    :cond_11
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 30
    :goto_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_8

    :cond_12
    return v7
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method
