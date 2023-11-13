.class public final Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;
.super Landroid/view/ViewOutlineProvider;
.source "AutoFitSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->setSurfaceViewCorner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;->val$radius:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
