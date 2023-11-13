.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;
.super Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.source "ZoomPortraitEntity.kt"


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;-><init>(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;Lcom/motorola/camera/settings/CameraType;Z)V

    return-void
.end method


# virtual methods
.method public final setVideoRecording(Z)V
    .locals 0

    return-void
.end method

.method public final setupZoomConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    const-string v1, "mZoomSegment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F

    move-result v1

    .line 3
    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    .line 4
    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    return-void
.end method
