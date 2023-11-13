.class public interface abstract Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;
.super Ljava/lang/Object;
.source "RoiTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RoiCallback"
.end annotation


# virtual methods
.method public barTouchDown()V
    .locals 0

    return-void
.end method

.method public barTouchUp(I)V
    .locals 0

    return-void
.end method

.method public abstract dragUpdate(I)V
.end method

.method public abstract getTouchBoundaryRect()Lcom/motorola/camera/ui/widgets/gl/RectWrapper;
.end method

.method public abstract onDown()V
.end method

.method public abstract onDrag(Z)V
.end method

.method public abstract onLongPress(ZLandroid/graphics/PointF;)V
.end method

.method public abstract onRoiUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
.end method

.method public abstract onSingleTap(Landroid/graphics/PointF;)V
.end method

.method public abstract startRoiTiming(Z)V
.end method
