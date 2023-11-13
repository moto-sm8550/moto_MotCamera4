.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;
.source "AnimatedButtonTexture.kt"


# instance fields
.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;Z)V

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-void
.end method


# virtual methods
.method public onPreDraw([F[F)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ContinuouslyRenderingAnimationTracker"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationUpdate([F)Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    monitor-enter p0

    .line 4
    monitor-exit p0

    .line 5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->cancelAnimation(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->run()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->run()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAction:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
