.class public Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;
.super Landroid/view/SurfaceView;
.source "AutoFitSurfaceView.java"


# instance fields
.field public mRatioHeight:I

.field public mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioWidth:I

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioHeight:I

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 4
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioWidth:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v2, p2, v0

    .line 5
    div-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    mul-int/2addr v1, p1

    .line 6
    div-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    mul-int/2addr v0, p2

    .line 7
    div-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setSurfaceViewCorner(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
