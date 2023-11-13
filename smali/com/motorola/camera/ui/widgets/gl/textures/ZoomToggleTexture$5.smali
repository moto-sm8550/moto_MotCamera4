.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;
.source "ZoomToggleTexture.java"


# instance fields
.field public mTouchDownHandled:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

.field public final synthetic val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

.field public final synthetic val$zoomValue:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/Float;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$zoomValue:Ljava/lang/Float;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->mTouchDownHandled:Z

    return-void
.end method


# virtual methods
.method public final handleSingleTap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 4
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 5
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->toggleSingleTap(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$zoomValue:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 7
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->onPortraitLensSelected(Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)V

    :cond_0
    return-void
.end method

.method public final handleTouchDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mSelected:Z

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCurrentValueX:F

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$zoomValue:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->val$focalSegment:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->getZoomSegment()Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 10
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchDown(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->mTouchDownHandled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->mTouchDownHandled:Z

    :goto_0
    return-void
.end method

.method public final handleTouchUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$ToggleCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;->mTouchDownHandled:Z

    if-eqz p0, :cond_0

    .line 4
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->onTouchUp()V

    :cond_0
    return-void
.end method
