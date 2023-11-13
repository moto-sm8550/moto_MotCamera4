.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "ScrollableListExTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    const v1, 0x3dcccccd

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showLimitingGlow(ZF)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onDragEnd(F)V
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;)V

    const v2, 0x4185999a

    mul-float v6, p1, v2

    const/4 v8, 0x2

    const-wide/16 v4, 0x3e8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_0
    return-void
.end method

.method public final onDragStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    return-void
.end method
