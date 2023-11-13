.class public final synthetic Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/ChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 1
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroid/graphics/Point;

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v1, v0

    .line 7
    new-array v3, v2, [I

    .line 8
    new-array v2, v2, [I

    .line 9
    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-static {v5, v5, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->readPixels(IIIILjava/nio/Buffer;)V

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int v6, v4, v1

    sub-int v7, v0, v4

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v7, v1

    move v8, v5

    :goto_1
    if-ge v8, v1, :cond_0

    add-int v9, v6, v8

    .line 12
    aget v9, v3, v9

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v9, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    const v12, -0xff0100

    and-int/2addr v9, v12

    or-int/2addr v9, v11

    or-int/2addr v9, v10

    add-int v10, v7, v8

    .line 13
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "BITMAP"

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method
