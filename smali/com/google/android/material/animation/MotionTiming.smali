.class public final Lcom/google/android/material/animation/MotionTiming;
.super Ljava/lang/Object;
.source "MotionTiming.java"


# instance fields
.field public delay:J

.field public duration:J

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public repeatCount:I

.field public repeatMode:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 5
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    const-wide/16 p1, 0x96

    .line 6
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 12
    iput-object p5, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final apply(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 8
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    iget p0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    .line 11
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/animation/MotionTiming;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/material/animation/MotionTiming;

    .line 3
    iget-wide v2, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 4
    iget-wide v4, p1, Lcom/google/android/material/animation/MotionTiming;->delay:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-wide v2, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    iget-wide v4, p1, Lcom/google/android/material/animation/MotionTiming;->duration:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    iget v2, p1, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    if-eq v0, v2, :cond_4

    return v1

    .line 7
    :cond_4
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    iget v2, p1, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    if-eq v0, v2, :cond_5

    return v1

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/animation/MotionTiming;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget p0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroidx/window/core/Version$$ExternalSyntheticOutline0;->m(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/android/material/animation/MotionTiming;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delay: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-wide v1, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-wide v1, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " interpolator: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " repeatCount: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/google/android/material/animation/MotionTiming;->repeatCount:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatMode: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget p0, p0, Lcom/google/android/material/animation/MotionTiming;->repeatMode:I

    const-string/jumbo v1, "}\n"

    .line 18
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
