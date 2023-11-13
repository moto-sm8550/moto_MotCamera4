.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "CameraPreview.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$deltaHeight:F

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$deltaWidth:F

.field public final synthetic val$endScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$needScale:Z

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$targetScale:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaWidth:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaHeight:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    iput-boolean p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    iput p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    iput-object p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaWidth:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, p2, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, p2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, p2

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 16
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 17
    invoke-virtual {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderSurface()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    .line 4
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    mul-float/2addr v3, v4

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
