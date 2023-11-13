.class public final Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;
.source "ModeMenuComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateShow(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/AnimationCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x4

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 13
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 15
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 16
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setDraggable(Z)V

    .line 17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 19
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 21
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 22
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateTalkback()V

    .line 23
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setDraggable(Z)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 9
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 11
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setVisibility(Z)V

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    .line 15
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method
