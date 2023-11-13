.class public final Lcom/morphoinc/app/panoramagp3/RightDirectionFunction;
.super Lcom/morphoinc/app/panoramagp3/DirectionFunction;
.source "RightDirectionFunction.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;-><init>(IIIIII)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    return-void
.end method


# virtual methods
.method public final getPreviewSize()Landroid/util/Size;
    .locals 0

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
