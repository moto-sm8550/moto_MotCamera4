.class public final Lcom/motorola/camera/slidedoc/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field public a:F

.field public final angle:F

.field public c:F

.field public final h:I

.field public final height:I

.field public k:F

.field public final length:D

.field public n:F

.field public start:Landroid/graphics/PointF;

.field public final w:I

.field public final width:I

.field public x1:I

.field public x2:I

.field public y1:I

.field public y2:I


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/slidedoc/Edge;->start:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    .line 5
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    .line 6
    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/motorola/camera/slidedoc/Edge;->x2:I

    .line 7
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/motorola/camera/slidedoc/Edge;->y2:I

    if-gt v1, v2, :cond_0

    if-ne v1, v2, :cond_1

    if-le p1, p2, :cond_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/slidedoc/Edge;->start:Landroid/graphics/PointF;

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/slidedoc/Edge;->start:Landroid/graphics/PointF;

    .line 10
    iget p2, v0, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    .line 11
    iget p2, v0, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    .line 12
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/slidedoc/Edge;->x2:I

    .line 13
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->y2:I

    .line 14
    :cond_1
    iget p1, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    iget p2, p0, Lcom/motorola/camera/slidedoc/Edge;->x2:I

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    .line 15
    iget v0, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    iget v1, p0, Lcom/motorola/camera/slidedoc/Edge;->y2:I

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, p1

    .line 16
    iput p2, p0, Lcom/motorola/camera/slidedoc/Edge;->w:I

    sub-int/2addr v1, v0

    .line 17
    iput v1, p0, Lcom/motorola/camera/slidedoc/Edge;->h:I

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->width:I

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/slidedoc/Edge;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x461c4000    # 10000.0f

    if-eqz p2, :cond_2

    int-to-float v4, v1

    mul-float/2addr v4, v2

    int-to-float v5, p2

    div-float/2addr v4, v5

    .line 20
    iput v4, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    .line 21
    iget v5, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/motorola/camera/slidedoc/Edge;->c:F

    .line 22
    invoke-virtual {p0, v4}, Lcom/motorola/camera/slidedoc/Edge;->clipRate(F)F

    move-result v4

    iput v4, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    goto :goto_0

    .line 23
    :cond_2
    iput v3, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    .line 24
    iget v4, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    int-to-float v4, v4

    iput v4, p0, Lcom/motorola/camera/slidedoc/Edge;->c:F

    :goto_0
    if-eqz v1, :cond_3

    int-to-float v4, p2

    mul-float/2addr v4, v2

    int-to-float v2, v1

    div-float/2addr v4, v2

    .line 25
    iput v4, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    .line 26
    iget v2, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    int-to-float v2, v2

    iget v5, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/motorola/camera/slidedoc/Edge;->n:F

    .line 27
    invoke-virtual {p0, v4}, Lcom/motorola/camera/slidedoc/Edge;->clipRate(F)F

    move-result v2

    iput v2, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    goto :goto_1

    .line 28
    :cond_3
    iput v3, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    .line 29
    iget v2, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/slidedoc/Edge;->n:F

    .line 30
    :goto_1
    iget v2, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v6

    :goto_3
    if-eqz v2, :cond_6

    const/high16 p1, 0x42b40000    # 90.0f

    .line 31
    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    int-to-double p1, v0

    .line 32
    iput-wide p1, p0, Lcom/motorola/camera/slidedoc/Edge;->length:D

    goto :goto_4

    .line 33
    :cond_6
    iget v0, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    if-eqz v5, :cond_9

    .line 34
    iput v4, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    int-to-double p1, p1

    .line 35
    iput-wide p1, p0, Lcom/motorola/camera/slidedoc/Edge;->length:D

    goto :goto_4

    :cond_9
    int-to-double p1, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v4, p1, v2

    mul-double/2addr v4, p1

    int-to-double v0, v1

    mul-double/2addr v2, v0

    mul-double v6, v2, v0

    add-double/2addr v6, v4

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/slidedoc/Edge;->length:D

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const-wide v7, 0x4066800000000000L    # 180.0

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    if-eqz v6, :cond_a

    div-double/2addr v2, p1

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    div-double/2addr p1, v9

    mul-double/2addr p1, v7

    double-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    goto :goto_4

    :cond_a
    div-double/2addr v0, v4

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    div-double/2addr p1, v9

    mul-double/2addr p1, v7

    double-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    :goto_4
    return-void
.end method


# virtual methods
.method public final clipRate(F)F
    .locals 2

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const v1, 0x461c4000    # 10000.0f

    if-lez v0, :cond_1

    const v0, 0x38d1b717

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    move p1, p0

    :cond_0
    cmpl-float p0, p1, v1

    if-lez p0, :cond_3

    move p0, v1

    goto :goto_0

    :cond_1
    const v0, -0x39e3c000    # -10000.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    move p1, v0

    :cond_2
    const v0, -0x472e48e9

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    return p0
.end method

.method public final intersectionAngle(Lcom/motorola/camera/slidedoc/Edge;)D
    .locals 0

    .line 1
    iget p1, p1, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    iget p0, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    sub-float/2addr p1, p0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x42b40000    # 90.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    rem-float/2addr p0, p1

    sub-float p0, p1, p0

    :cond_0
    float-to-double p0, p0

    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->x1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->y1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->x2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->y2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string/jumbo v3, "start: (%d, %d), end: (%d, %d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/motorola/camera/slidedoc/Edge;->length:D

    .line 2
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->angle:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v7

    const-string/jumbo v3, "{d=%.2f, w=%d, h=%d, angle=%.2f}"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    .line 3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    iget v3, p0, Lcom/motorola/camera/slidedoc/Edge;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v5

    const-string/jumbo v3, "{y = %.6f*x + %.6f}"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget p0, p0, Lcom/motorola/camera/slidedoc/Edge;->n:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v5

    const-string/jumbo p0, "{x = %.6f*y + %.6f}"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(D)D
    .locals 2

    iget v0, p0, Lcom/motorola/camera/slidedoc/Edge;->k:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    iget p0, p0, Lcom/motorola/camera/slidedoc/Edge;->n:F

    float-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public final y(D)D
    .locals 2

    iget v0, p0, Lcom/motorola/camera/slidedoc/Edge;->a:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    iget p0, p0, Lcom/motorola/camera/slidedoc/Edge;->c:F

    float-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method
