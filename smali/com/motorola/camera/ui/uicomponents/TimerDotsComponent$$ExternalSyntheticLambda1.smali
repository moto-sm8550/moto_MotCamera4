.class public final synthetic Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/TimerDotsComponent$$ExternalSyntheticLambda1;->f$3:F

    const-string/jumbo v3, "this$0"

    .line 1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$coordinates"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$cameraIndex"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, p0

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method
