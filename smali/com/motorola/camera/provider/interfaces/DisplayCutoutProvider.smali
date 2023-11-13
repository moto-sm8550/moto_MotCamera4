.class public interface abstract Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
.super Ljava/lang/Object;
.source "DisplayCutoutProvider.kt"


# virtual methods
.method public abstract getCutoutsCoordinates()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHasCutout()Z
.end method

.method public abstract getRightmostCutoutRect()Landroid/graphics/Rect;
.end method
