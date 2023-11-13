.class public interface abstract Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
.super Ljava/lang/Object;
.source "ILayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;
    }
.end annotation


# virtual methods
.method public abstract getCaptureBarGuideLine()F
.end method

.method public abstract getControlBarGuideline()F
.end method

.method public abstract getDualCapturePIPVerticalGuideline()F
.end method

.method public abstract getFilterToggleBarOffset()F
.end method

.method public abstract getIndicatorBarHeight()F
.end method

.method public abstract getIndicatorBarMarginHeight()F
.end method

.method public abstract getModeCarouselY()F
.end method

.method public abstract getModeSliderY()F
.end method

.method public abstract getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager$PreviewFitTransform;
.end method

.method public abstract getToggleBarGuideLine()F
.end method

.method public abstract getTsbMarginHeight()F
.end method

.method public abstract getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
.end method

.method public abstract isLargerDisplay()Z
.end method

.method public abstract shouldTranslateForCutout(Landroid/graphics/Rect;)Z
.end method

.method public abstract updateInsets(Landroid/view/WindowInsets;)Z
.end method

.method public abstract updateSurface(Lcom/motorola/camera/PreviewSize;F)V
.end method
