.class public final Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$1;
.super Ljava/lang/Object;
.source "TimerCountdown.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;I)V

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a

    const/4 v8, 0x2

    div-int/lit16 p1, p1, 0x3e8

    add-int/lit8 v9, p1, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 6
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3ecccccd

    invoke-direct {p1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 7
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x2

    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    .line 12
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mIsTimerRunning:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    :goto_0
    return v1
.end method
