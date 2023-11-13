.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$0:Landroid/util/Size;

    iput p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$2:I

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$3:Lcom/motorola/camera/settings/CameraType;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$6:Ljava/util/List;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$0:Landroid/util/Size;

    iget v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$2:I

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$3:Lcom/motorola/camera/settings/CameraType;

    sget-object v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$6:Ljava/util/List;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;->f$7:Ljava/lang/String;

    move-object/from16 v4, p1

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Lcom/motorola/camera/settings/CameraType;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 3
    invoke-virtual {v4}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v16

    .line 4
    invoke-static {v9, v2, v3, v12}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v4

    .line 5
    iget-object v5, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 6
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v5

    iget-object v6, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 7
    invoke-virtual {v6}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v6

    .line 8
    invoke-virtual {v4, v5, v6}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 9
    iget-object v5, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 11
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    const/16 v17, 0x0

    const/16 v10, 0x23

    move-object v4, v11

    move-object v5, v0

    move-object/from16 v6, v16

    move-object v7, v12

    move-object v15, v11

    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    .line 12
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackZoomBlendingCamera()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getPhotoModeHighResSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 17
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 19
    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v7, v6}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v8, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 20
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v7

    .line 21
    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    .line 22
    invoke-static {v7, v8}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v9, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    move-object v9, v1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 24
    :goto_1
    invoke-static {v9, v2, v3, v12}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    .line 25
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 26
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    .line 27
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 29
    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    .line 31
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    const/4 v11, 0x1

    const/16 v10, 0x23

    move-object v4, v2

    move-object v5, v0

    move-object/from16 v6, v16

    move-object v7, v12

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    .line 32
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
