.class public final Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;
.super Ljava/lang/Object;
.source "McfStandAloneSubjectMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Window"
.end annotation


# instance fields
.field public final durationMs:I

.field public endIndex:I

.field public startIndex:I

.field public final wholeDurationMs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->durationMs:I

    .line 3
    iput-wide p2, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->wholeDurationMs:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    .line 5
    iput p1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    return-void
.end method


# virtual methods
.method public final getCloserToMidpointScore()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    iget v1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    if-ge v0, v3, :cond_2

    .line 3
    sget-object v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 5
    iget v3, v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    if-ge v0, v1, :cond_0

    sub-int v4, v1, v0

    :goto_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    move v2, v3

    goto :goto_2

    :cond_0
    if-le v0, v1, :cond_1

    sub-int v4, v0, v1

    goto :goto_1

    :cond_1
    add-float/2addr v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final getRange()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 2
    iget v1, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 3
    iget-wide v1, v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 5
    iget-wide v4, v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    sub-long/2addr v1, v4

    const-wide/32 v4, 0xf4240

    .line 6
    div-long/2addr v1, v4

    .line 7
    iget v6, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 8
    iget-wide v6, v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 10
    iget-wide v8, v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    sub-long/2addr v6, v8

    .line 11
    div-long/2addr v6, v4

    .line 12
    new-instance v0, Landroid/util/Pair;

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->wholeDurationMs:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final increaseEndIfPossible()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    .line 2
    sget-object v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    return v4

    .line 4
    :cond_1
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 5
    iget-wide v5, v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    .line 6
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    .line 7
    iget-wide v0, v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->timestamp:J

    sub-long/2addr v5, v0

    const-wide/32 v0, 0xf4240

    .line 8
    div-long/2addr v5, v0

    .line 9
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->durationMs:I

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_2

    .line 10
    iget v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->endIndex:I

    return v3

    :cond_2
    return v4
.end method
