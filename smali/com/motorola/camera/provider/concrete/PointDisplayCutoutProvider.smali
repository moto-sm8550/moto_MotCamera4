.class public final Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;
.super Ljava/lang/Object;
.source "PointDisplayCutoutProvider.kt"

# interfaces
.implements Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;


# instance fields
.field public final cutoutsCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;->cutoutsCoordinates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCutoutsCoordinates()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;->cutoutsCoordinates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getHasCutout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getRightmostCutoutRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/provider/concrete/PointDisplayCutoutProvider;->cutoutsCoordinates:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 6
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 7
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 8
    :cond_1
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 9
    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    .line 11
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v4, v1, v0

    float-to-int v4, v4

    add-float/2addr v2, v0

    float-to-int v2, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 12
    invoke-direct {p0, v3, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method
