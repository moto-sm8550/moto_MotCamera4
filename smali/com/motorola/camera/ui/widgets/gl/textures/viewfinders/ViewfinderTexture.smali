.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "ViewfinderTexture.java"


# instance fields
.field public mIsLoaded:Z

.field public mPreviewRotation:I

.field public mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mSTMatrix:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mSTMatrix:[F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/ViewfinderTexture;->mPreviewRotation:I

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public setRadius(F)V
    .locals 0

    return-void
.end method

.method public abstract unloadTexture()V
.end method
