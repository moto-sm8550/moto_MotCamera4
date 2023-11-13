.class public final Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent$setupModes$1$smoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SmallScreenModesMenuComponent.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 1
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int/2addr p2, p1

    .line 2
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4
.end method

.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, p0

    return p1
.end method
