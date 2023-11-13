.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "BatchDrawTexture.java"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    return-void
.end method


# virtual methods
.method public final onDraw([F[F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw()V

    return-void
.end method

.method public abstract onPostDraw()V
.end method

.method public abstract onPreDraw()Z
.end method

.method public abstract onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
.end method

.method public abstract onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
.end method
