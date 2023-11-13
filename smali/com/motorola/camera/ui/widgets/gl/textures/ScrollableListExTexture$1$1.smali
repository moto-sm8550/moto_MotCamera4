.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "ScrollableListExTexture.java"


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    const p0, 0x3dcccccd

    cmpl-float v0, v0, p0

    if-gtz v0, :cond_0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->cancelAnimation()V

    :cond_1
    return-void
.end method
