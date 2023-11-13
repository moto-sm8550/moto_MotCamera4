.class public final Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "TranslateAnimation.java"


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

.field public final mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mDistance:F

.field public final mDuration:J

.field public final mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mStartOrigins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/widgets/gl/Vector3F;",
            ">;"
        }
    .end annotation
.end field

.field public mStartTime:J

.field public final mType:I

.field public final mVelocity:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartOrigins:Ljava/util/ArrayList;

    .line 18
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    .line 19
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 20
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 21
    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    .line 22
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 23
    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 24
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()F

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const-wide/16 p2, 0x0

    .line 26
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    .line 27
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    .line 29
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartOrigins:Ljava/util/ArrayList;

    .line 3
    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    .line 4
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 5
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 6
    invoke-virtual {p4, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 9
    invoke-virtual {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()F

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    .line 14
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 10

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_f

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_6

    .line 4
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float p1, v4

    .line 8
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    long-to-float v4, v4

    div-float/2addr p1, v4

    .line 9
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_4

    cmpl-float v4, p1, v7

    if-lez v4, :cond_a

    .line 10
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    .line 11
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    if-le p1, v4, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    .line 14
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    if-ne p1, v0, :cond_3

    .line 15
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_9

    .line 17
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    goto :goto_4

    :cond_4
    cmpl-float v4, p1, v7

    if-lez v4, :cond_a

    .line 18
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    .line 19
    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    if-le p1, v4, :cond_7

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_6
    :goto_1
    move v0, v1

    goto :goto_7

    .line 21
    :cond_7
    :goto_2
    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    .line 22
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 23
    :cond_8
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    .line 24
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_9

    .line 25
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationRepeat()V

    :cond_9
    :goto_4
    move p1, v6

    .line 26
    :cond_a
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    .line 27
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 28
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 29
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    if-eqz v5, :cond_b

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v2, v6

    :cond_b
    mul-float/2addr v3, p1

    mul-float/2addr v4, p1

    mul-float/2addr v2, p1

    .line 30
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    :goto_5
    invoke-direct {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 31
    iget v5, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v3

    iput v5, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 32
    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v3, v4

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 33
    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v3, v2

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 34
    :goto_6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 35
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 36
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz v2, :cond_d

    invoke-interface {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    return v0

    :cond_f
    const/4 v2, 0x2

    if-ne v2, p1, :cond_16

    .line 37
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_11

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_8

    .line 40
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_a

    .line 41
    :cond_11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 43
    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long/2addr v2, v4

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 45
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 46
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 47
    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 48
    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    mul-float/2addr v7, v9

    mul-float/2addr v8, v9

    mul-float/2addr v6, v9

    long-to-float v9, v2

    mul-float/2addr v7, v9

    mul-float/2addr v8, v9

    mul-float/2addr v6, v9

    .line 49
    iget v9, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v9, v7

    iput v9, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 50
    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v8

    iput v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 51
    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v7, v6

    iput v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 52
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v6

    .line 53
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_13

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move v0, v1

    .line 55
    :cond_13
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 56
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz v4, :cond_12

    invoke-interface {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_9

    :cond_14
    if-nez v0, :cond_15

    .line 57
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p1, :cond_15

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_15
    move v1, v0

    :cond_16
    :goto_a
    return v1
.end method

.method public final startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;->onAnimationStart()V

    :cond_0
    return-void
.end method
