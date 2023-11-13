.class public final synthetic Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$3:I

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;->f$4:I

    const-string/jumbo v4, "this$0"

    .line 1
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v4, :cond_0

    int-to-float v5, v1

    .line 3
    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    int-to-float v5, v2

    .line 4
    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    sub-int/2addr v3, v1

    sub-int/2addr p0, v2

    int-to-float v1, v3

    const/high16 v2, 0x40400000    # 3.0f

    div-float v3, v1, v2

    int-to-float p0, p0

    div-float v2, p0, v2

    .line 5
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    .line 6
    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    .line 7
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float/2addr v7, v5

    invoke-direct {v6, v5, v5, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 10
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v6, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    sub-float v5, v1, v5

    iget v6, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float/2addr v5, v6

    .line 12
    new-instance v7, Landroid/graphics/RectF;

    iget v9, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float v10, v5, v9

    add-float/2addr v9, v6

    invoke-direct {v7, v5, v6, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float v9, v6, v3

    iget v10, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual {v5, v7, v10, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 15
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float v7, v1, v7

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    .line 17
    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    sub-float v7, p0, v7

    sub-float/2addr v7, v5

    .line 18
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float v12, v5, v11

    add-float/2addr v11, v7

    invoke-direct {v10, v5, v7, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 19
    iget-object v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float v7, p0, v7

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    iget-object v3, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v10, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 21
    iget-object v3, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    mul-float/2addr v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    iget v2, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    sub-float v3, v1, v2

    iget v5, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float/2addr v3, v5

    sub-float v2, p0, v2

    sub-float/2addr v2, v5

    .line 23
    new-instance v5, Landroid/graphics/RectF;

    iget v7, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mRadius:F

    add-float v10, v3, v7

    add-float/2addr v7, v2

    invoke-direct {v5, v3, v2, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    iget-object v2, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v3, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget-object v1, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 26
    iget-object v1, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mPath:Landroid/graphics/Path;

    iget v2, v4, Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;->mStrokeWidth:F

    sub-float/2addr p0, v2

    invoke-virtual {v1, v9, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 28
    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_0
    iget-boolean p0, v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPanelOpened:Z

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    :cond_2
    return-void
.end method
