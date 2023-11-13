.class public final Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;
.super Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;
.source "CliAnimationPresentation.kt"


# instance fields
.field public animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

.field public animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;-><init>(Lcom/motorola/camera/cli/CliEventListener;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation$onViewAdded$1;-><init>(Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;)V

    .line 2
    new-instance p0, Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p0, v0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    new-instance p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$init$1;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method public final onViewInflated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f0a006b

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationContainer:Lcom/motorola/camera/ui/widgets/OrientedFrameLayout;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a006c

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    return-void
.end method

.method public final onViewRemoved()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliAnimationPresentation;->animationPlayerView:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;->prepareStartFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 5
    new-instance v1, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public final presentationLayoutRes()I
    .locals 0

    const p0, 0x7f0d0036

    return p0
.end method
