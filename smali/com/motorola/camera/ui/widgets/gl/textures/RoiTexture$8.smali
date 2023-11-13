.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "RoiTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyActiveBarAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

.field public final synthetic val$active:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->val$active:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 5
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    .line 6
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    const/high16 v1, 0x42f00000    # 120.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42980000    # 76.0f

    mul-float/2addr v0, v2

    invoke-static {v1, v0, p2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p2

    .line 7
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    .line 8
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    return-void
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->val$active:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 3
    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
