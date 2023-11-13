.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;
.super Ljava/lang/Object;
.source "ButtonTouchBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForLongPress"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 5
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 6
    iget-wide v10, v5, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    .line 7
    iget-wide v8, v5, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    sub-long v0, v10, v8

    .line 8
    iget v3, v5, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    const/4 v6, 0x1

    .line 9
    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    .line 10
    invoke-virtual/range {v5 .. v11}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onLongPress(ZLandroid/graphics/PointF;JJ)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 12
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    :cond_1
    return-void
.end method
