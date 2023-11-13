.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/ui/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 2
    iget p2, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-nez p2, :cond_2

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    .line 8
    new-instance p1, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p3, p2

    div-float/2addr p4, p2

    invoke-direct {p1, p0, p3, p4}, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;FF)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
