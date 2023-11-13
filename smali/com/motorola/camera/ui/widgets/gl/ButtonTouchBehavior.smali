.class public Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;
.super Ljava/lang/Object;
.source "ButtonTouchBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;,
        Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;
    }
.end annotation


# static fields
.field public static final mPressedStateDuration:I

.field public static final mTapTimeout:I


# instance fields
.field public final mDragOrigin:Landroid/graphics/PointF;

.field public mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;

.field public mEventTime:J

.field public mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasPerformedDrag:Z

.field public mHasPerformedLongPress:Z

.field public mInitialTouchSlop:F

.field public final mLastRawTouchLoc:Landroid/graphics/PointF;

.field public mLongPressTimeout:I

.field public mOnDownTime:J

.field public mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

.field public mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

.field public mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;

.field public mPressedState:I

.field public final mRawTouchLoc:Landroid/graphics/PointF;

.field public final mTouchOffset:Landroid/graphics/PointF;

.field public final mTouchSlop:F

.field public mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final mTouchUp:Landroid/graphics/PointF;

.field public mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

.field public performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;

.field public performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTapTimeout:I

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedStateDuration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    .line 4
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchOffset:Landroid/graphics/PointF;

    .line 6
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    .line 7
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    .line 12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method public onChangePosition(Landroid/graphics/PointF;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onLongPress(ZLandroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/lit8 v3, v2, 0x1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2

    move v3, v10

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v4, v10

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    const/4 v6, 0x4

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_4

    move v2, v10

    goto :goto_2

    :cond_4
    move v2, v1

    .line 5
    :goto_2
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v8, v7, 0x1

    if-ne v8, v10, :cond_5

    move v8, v10

    goto :goto_3

    :cond_5
    move v8, v1

    :goto_3
    and-int/2addr v7, v5

    if-ne v7, v5, :cond_6

    move v7, v10

    goto :goto_4

    :cond_6
    move v7, v1

    :goto_4
    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    return v1

    .line 6
    :cond_7
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v0, :cond_1f

    if-eq v0, v10, :cond_13

    if-eq v0, v5, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    return v1

    .line 7
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    .line 8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    :cond_9
    if-nez v7, :cond_a

    if-eqz v8, :cond_b

    .line 10
    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postTouchUpRunnable(J)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    if-nez v0, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 14
    :cond_d
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchSlop:F

    .line 15
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v5

    neg-float v0, v0

    .line 16
    invoke-virtual {v5, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    .line 17
    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v8, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_f

    .line 18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    if-eqz v7, :cond_e

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeLongPressCallback()V

    .line 20
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 21
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->updateDrawableState()V

    .line 22
    :cond_e
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    or-int/2addr v0, v6

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    :cond_f
    if-eqz v2, :cond_24

    .line 23
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-nez v0, :cond_12

    if-nez v3, :cond_10

    if-eqz v4, :cond_12

    .line 24
    :cond_10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    .line 25
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v2, v0

    float-to-double v2, v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchSlop:F

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_11

    move v1, v10

    :cond_11
    if-eqz v1, :cond_24

    .line 27
    :cond_12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 28
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 30
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 31
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    invoke-direct {v4, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchOffset:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 33
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    .line 34
    iput-boolean v10, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    goto/16 :goto_9

    .line 35
    :cond_13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    if-nez v0, :cond_14

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    :cond_14
    if-nez v7, :cond_17

    if-eqz v8, :cond_15

    goto :goto_6

    .line 36
    :cond_15
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_1c

    .line 37
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_16

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    goto :goto_5

    .line 39
    :cond_16
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeLongPressCallback()V

    .line 40
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 41
    :cond_17
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    .line 42
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-nez v0, :cond_19

    .line 43
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeLongPressCallback()V

    if-eqz v3, :cond_1a

    .line 44
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-nez v0, :cond_1a

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;

    if-nez v2, :cond_18

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;

    .line 47
    :cond_18
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 48
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformSingleTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 49
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    :cond_1a
    :goto_7
    if-eqz v8, :cond_1b

    .line 50
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 51
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->updateDrawableState()V

    .line 52
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedStateDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 53
    :cond_1b
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_1c
    :goto_8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-eqz v0, :cond_1e

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v2, :cond_1d

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    .line 58
    :cond_1d
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 59
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_1e
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postTouchUpRunnable(J)V

    .line 62
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_24

    .line 63
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 64
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    const-string v1, "Touch Up"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 65
    :cond_1f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$UnsetPressedState;

    if-eqz v0, :cond_20

    .line 66
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    :cond_20
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    .line 68
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v3

    neg-float v0, v0

    .line 69
    invoke-virtual {v3, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->inset(FF)V

    .line 70
    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v4, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 71
    :cond_21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 73
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;

    if-nez v0, :cond_22

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;

    .line 74
    :cond_22
    iput-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    .line 75
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchDown;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

    if-nez v0, :cond_23

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

    .line 77
    :cond_23
    iput v10, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 78
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    .line 79
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    .line 80
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTapTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v2, :cond_24

    .line 81
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 82
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 83
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchOffset:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerX()F

    move-result v2

    iget v3, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/RectWrapper;->centerY()F

    move-result v0

    iget v3, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_24
    :goto_9
    return v10
.end method

.method public onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouchUp(Landroid/graphics/PointF;JJ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final postEndLongPressRunnable(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndLongPress;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postTouchUpRunnable(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$PerformTouchUp;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeLongPressCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeTapCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "mFlags:"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPressedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasPerformedLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHasPerformedDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDrawableState()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
