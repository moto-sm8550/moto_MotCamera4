.class public final Landroidx/core/view/animation/PathInterpolatorCompat$Api21Impl;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method public static createPathInterpolator(FF)Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    return-object v0
.end method

.method public static createPathInterpolator(FFFF)Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 3
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public static createPathInterpolator(Landroid/graphics/Path;)Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
