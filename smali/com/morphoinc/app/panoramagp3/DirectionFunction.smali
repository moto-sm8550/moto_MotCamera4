.class public Lcom/morphoinc/app/panoramagp3/DirectionFunction;
.super Ljava/lang/Object;
.source "DirectionFunction.java"


# instance fields
.field public final angle:I

.field public direction:I

.field public final inputHeight:I

.field public final inputWidth:I

.field public final maxHeight:I

.field public final maxWidth:I

.field public final scale:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    .line 3
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    .line 4
    iput p2, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    mul-int/lit8 p5, p5, 0x2

    .line 5
    iput p5, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    .line 6
    iput p6, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    .line 7
    iput p3, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxWidth:I

    .line 8
    iput p4, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxWidth:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    :goto_1
    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p0, p0, -0x2

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxHeight:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    :goto_1
    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v0, v0, -0x2

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
