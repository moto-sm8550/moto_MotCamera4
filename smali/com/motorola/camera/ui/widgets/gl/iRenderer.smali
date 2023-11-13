.class public interface abstract Lcom/motorola/camera/ui/widgets/gl/iRenderer;
.super Ljava/lang/Object;
.source "iRenderer.java"

# interfaces
.implements Lcom/motorola/camera/EventListener;


# virtual methods
.method public abstract getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;
.end method

.method public abstract getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;
.end method

.method public abstract getFontScale()F
.end method

.method public abstract getInsetTop()F
.end method

.method public abstract getMaxSurfaceSize()Landroid/graphics/Point;
.end method

.method public abstract getNavBarSize()Landroid/graphics/PointF;
.end method

.method public abstract getScreenBrightness()F
.end method

.method public abstract getShader(Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;)Lcom/motorola/camera/ui/widgets/gl/Shader;
.end method

.method public abstract getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
.end method

.method public abstract getSurfaceDensity()F
.end method

.method public abstract getSurfaceDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;
.end method

.method public abstract getSurfaceSize()Landroid/graphics/Point;
.end method

.method public abstract getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;
.end method

.method public abstract getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;
.end method

.method public abstract getUiContext()Landroid/content/Context;
.end method

.method public abstract getVboManager()Lcom/motorola/camera/ui/widgets/gl/VboManager;
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract onUiShow()V
.end method

.method public abstract requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
.end method

.method public abstract requestRenderSurface()V
.end method

.method public abstract requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
.end method

.method public abstract resetBlendFunc()V
.end method

.method public abstract runOnGlThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setScreenBrightness(F)V
.end method

.method public abstract setSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;)V
.end method
