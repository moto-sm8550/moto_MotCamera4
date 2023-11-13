.class public final Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "BlurPreviewTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurTexture"
.end annotation


# instance fields
.field public final mBlurDirection:[F

.field public final mFboSize:[F

.field public mTextureId:I

.field public mVboId:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mBlurDirection:[F

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mFboSize:[F

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->RGB_BLUR:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getShader(Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    const p2, 0x84c5

    .line 3
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    .line 4
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mTextureId:I

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    .line 5
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mVboId:I

    const/4 v1, 0x3

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    .line 7
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mVboId:I

    const/4 v1, 0x2

    const/16 v4, 0xc

    .line 8
    invoke-virtual {p2, v1, v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    .line 9
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    .line 10
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIRECTION:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mBlurDirection:[F

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 11
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mFboSize:[F

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    .line 12
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 p2, 0x5

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const/4 p0, 0x4

    .line 13
    invoke-static {p2, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    .line 14
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
