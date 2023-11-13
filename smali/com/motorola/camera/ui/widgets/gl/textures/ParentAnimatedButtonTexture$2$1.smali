.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "ParentAnimatedButtonTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    .line 1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mFadeAnimation:I

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture;->mFadeAnimation:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method
