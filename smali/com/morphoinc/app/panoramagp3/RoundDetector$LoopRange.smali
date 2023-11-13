.class public Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;
.super Ljava/lang/Object;
.source "RoundDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morphoinc/app/panoramagp3/RoundDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopRange"
.end annotation


# instance fields
.field public mRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRangePassed:[Z

.field public mRangeSecond:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    .line 3
    new-instance v2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    .line 4
    new-instance p1, Landroid/util/Range;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    .line 5
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    aput-boolean v1, p0, v1

    .line 6
    aput-boolean v0, p0, v0

    return-void

    .line 7
    :cond_0
    new-instance v2, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    .line 8
    new-instance p2, Landroid/util/Range;

    const/16 v2, 0x163

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    .line 9
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    aput-boolean v1, p0, v1

    .line 10
    aput-boolean v1, p0, v0

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    const/4 v2, 0x1

    aget-boolean v3, v0, v2

    if-nez v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_2

    .line 6
    aput-boolean v1, p1, v1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangePassed:[Z

    aget-boolean p1, p0, v1

    if-eqz p1, :cond_3

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
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
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRangeSecond:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRange;->mRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s, %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
