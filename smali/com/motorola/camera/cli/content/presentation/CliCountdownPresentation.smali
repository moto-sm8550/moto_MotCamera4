.class public final Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "CliCountdownPresentation.kt"

# interfaces
.implements Lcom/motorola/camera/countdown/TimerCountdownCallback;


# instance fields
.field public cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public cliCountdownTextCounter:Landroid/widget/TextView;

.field public final countdownAnim:Landroid/view/animation/AlphaAnimation;

.field public final timer:I


# direct methods
.method public constructor <init>(ILcom/motorola/camera/cli/CliEventListener;)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    .line 2
    iput p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timer:I

    .line 3
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->countdownAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x3e8

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    new-instance p2, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final onCountDownCancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onCountDownFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    const-string v2, "backgroundColor"

    .line 4
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$showBlinkAnimationAndClose$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x1
        -0x1000000
    .end array-data
.end method

.method public final onCountdown(II)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method public final onViewAdded()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->acquireCliWakeLock()V

    .line 2
    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->registerCallback(Lcom/motorola/camera/countdown/TimerCountdownCallback;)V

    .line 3
    iget p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->timer:I

    invoke-virtual {v0, p0}, Lcom/motorola/camera/countdown/TimerCountdownManager;->start(I)V

    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a00fc

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a00fb

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountDownContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    return-void
.end method

.method public final onViewRemoved()V
    .locals 0

    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0038

    return p0
.end method
