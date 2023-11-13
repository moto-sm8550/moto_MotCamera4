.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;
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
    name = "CheckForTap"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, -0x2

    const/4 v2, 0x2

    or-int/2addr v1, v2

    .line 3
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->updateDrawableState()V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForTap;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    .line 6
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$CheckForLongPress;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
