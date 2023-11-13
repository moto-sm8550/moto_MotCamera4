.class public final Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;
.super Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;
.source "RoundDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morphoinc/app/panoramagp3/RoundDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopRangeLeft"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;-><init>(II)V

    if-gt p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x163

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    .line 3
    new-instance p1, Landroid/util/Range;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s, %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
