.class public final synthetic Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/graphics/PointF;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/PointF;ZLcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$3:F

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$4:F

    iput-boolean p6, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/PointF;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$3:F

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$4:F

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent$$ExternalSyntheticLambda1;->f$5:Z

    const-string/jumbo v5, "this$0"

    .line 1
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 2
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v0, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->setDualCaptureSwapButtonGuideLinePosition(FFZ)V

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->updateRotation(FF)V

    .line 4
    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    .line 5
    :cond_1
    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->shouldHide:Z

    if-nez p0, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->show()V

    :cond_2
    return-void
.end method
