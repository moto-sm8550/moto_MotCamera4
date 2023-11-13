.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;
.super Ljava/lang/Object;
.source "FaceUiComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->onFaceDetected([Landroid/hardware/camera2/params/Face;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

.field public final synthetic val$data:[Landroid/hardware/camera2/params/Face;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-eqz v1, :cond_4

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    .line 13
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v2

    .line 14
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    if-ne v3, v1, :cond_1

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    if-eq v3, v2, :cond_2

    .line 15
    :cond_1
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    .line 16
    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    .line 17
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;

    .line 20
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$FacePolicyLargest;->handleFaceData([Landroid/hardware/camera2/params/Face;)V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$1;->val$data:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected(Z)V

    .line 23
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
