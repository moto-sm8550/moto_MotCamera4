.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;
.super Ljava/lang/Object;
.source "ParentAnimatedButtonTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    .line 3
    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    .line 6
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimFade:I

    .line 7
    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    .line 8
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mFadeAnimation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;

    invoke-direct {v5, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;)V

    const-wide/16 v6, 0x12c

    .line 10
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    invoke-virtual {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    .line 13
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mAnimFade:I

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
