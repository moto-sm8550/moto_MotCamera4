.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    .line 3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 4
    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v2

    .line 7
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mBuffer:Ljava/nio/Buffer;

    .line 8
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v2

    .line 9
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mSize:Landroid/graphics/Point;

    .line 10
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 11
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mOrientation:I

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 13
    iput v0, v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;->mMode:I

    .line 14
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    .line 15
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/ui/widgets/gl/PostCapture$PreviewFrame;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
