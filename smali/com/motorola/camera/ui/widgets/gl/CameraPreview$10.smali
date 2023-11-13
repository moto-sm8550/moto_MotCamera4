.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$begin:F

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$end:F

.field public final synthetic val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    div-float/2addr v0, p2

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    sub-float p2, p1, v0

    add-float/2addr v0, p1

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, v0, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 9
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v1, p2

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, p1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 8
    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 10
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 9
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 11
    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
