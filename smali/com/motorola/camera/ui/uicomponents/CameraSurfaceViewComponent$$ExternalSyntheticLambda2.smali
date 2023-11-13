.class public final synthetic Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    .line 1
    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mBlurState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/QuickBlur;->with(Landroid/content/Context;)Lcom/motorola/camera/utility/QuickBlur;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 4
    new-instance v2, Lcom/motorola/camera/utility/QuickBlur$Builder;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/utility/QuickBlur$Builder;-><init>(Lcom/motorola/camera/utility/QuickBlur;Landroid/graphics/Bitmap;)V

    :cond_1
    const/16 v0, 0xa

    .line 5
    iget-object v1, v2, Lcom/motorola/camera/utility/QuickBlur$Builder;->this$0:Lcom/motorola/camera/utility/QuickBlur;

    .line 6
    iput v0, v1, Lcom/motorola/camera/utility/QuickBlur;->mRadius:I

    .line 7
    invoke-virtual {v2}, Lcom/motorola/camera/utility/QuickBlur$Builder;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    :cond_2
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/QuickBlur;->with(Landroid/content/Context;)Lcom/motorola/camera/utility/QuickBlur;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_4

    .line 15
    new-instance v2, Lcom/motorola/camera/utility/QuickBlur$Builder;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/utility/QuickBlur$Builder;-><init>(Lcom/motorola/camera/utility/QuickBlur;Landroid/graphics/Bitmap;)V

    .line 16
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/camera/utility/QuickBlur$Builder;->blur()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p0, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    :cond_5
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mModeSwitchBlurView:Lcom/motorola/camera/ui/widgets/RoundedImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p0, p1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
