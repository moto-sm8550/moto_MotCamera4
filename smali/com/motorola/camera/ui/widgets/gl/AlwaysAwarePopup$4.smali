.class public final Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "AlwaysAwarePopup.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

.field public final synthetic val$dest:F

.field public final synthetic val$dismissWhenDone:Z

.field public final synthetic val$isPortrait:Z

.field public final synthetic val$src:F

.field public final synthetic val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;ZZFF)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$isPortrait:Z

    iput-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dismissWhenDone:Z

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dest:F

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$src:F

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$isPortrait:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 5
    :goto_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dismissWhenDone:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dest:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$src:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    .line 6
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;->mDensity:F

    mul-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dest:F

    sub-float p2, v0, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$src:F

    sub-float/2addr v0, p0

    div-float/2addr p2, v0

    const/4 p0, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->val$dismissWhenDone:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/room/QueryInterceptorStatement$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/AlwaysAwarePopup;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
