.class public final Lcom/motorola/camera/settings/PictureSizeHelper;
.super Ljava/lang/Object;
.source "PictureSizeHelper.java"


# direct methods
.method public static getHalfPictureSize(Ljava/util/List;Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    invoke-static {p0, p2, v0, v2}, Lcom/motorola/camera/settings/PictureSizeHelper;->getPictureSize(Ljava/util/List;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v0

    div-int/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v2}, Lcom/motorola/camera/settings/PictureSizeHelper;->getPictureSize(Ljava/util/List;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getPictureSize(Ljava/util/List;ILcom/motorola/camera/PreviewSize$AspectRatio;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 8
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 9
    invoke-static {v1, p2}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPictureSize(Ljava/util/List;Lcom/motorola/camera/PreviewSize$AspectRatio;II)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Lcom/motorola/camera/PreviewSize$AspectRatio;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    const/4 v4, 0x2

    if-ne v4, p3, :cond_2

    .line 2
    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    if-gt p2, v4, :cond_1

    .line 3
    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    sub-int/2addr v4, p2

    goto :goto_1

    :cond_1
    move v4, v0

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 5
    :goto_1
    new-instance v5, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v5, v3}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-static {v5, p1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ge v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 6
    new-instance v1, Landroid/util/Size;

    const/4 p0, 0x0

    invoke-direct {v1, p0, p0}, Landroid/util/Size;-><init>(II)V

    :cond_4
    return-object v1
.end method

.method public static getRatioText(Lcom/motorola/camera/PreviewSize;)Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->FULL:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->getPreviewSizesForAspect(Lcom/motorola/camera/PreviewSize$AspectRatioType;)Ljava/util/Collection;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v2

    .line 6
    invoke-static {v1, v2}, Lcom/motorola/camera/PreviewSize;->hasAspectRatio(Ljava/util/Collection;F)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f1102fe

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 8
    iget v3, p0, Lcom/motorola/camera/PreviewSize;->width:I

    const/16 v4, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-long v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 10
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-long v7, p0

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget v3, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v3}, Lcom/motorola/camera/settings/PictureSizeHelper;->trimToDecimal(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 12
    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {p0}, Lcom/motorola/camera/settings/PictureSizeHelper;->trimToDecimal(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    :goto_1
    const p0, 0x7f1101d6

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v3, v2, v6

    aput-object v3, v1, v6

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sortPictureSizeByRatio(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x4

    .line 2
    invoke-static {v1, p0}, Lcom/motorola/camera/Util;->getSplitList(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 6
    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-static {v6}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 8
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    if-le v3, v4, :cond_3

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 13
    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 14
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public static sortPictureSizeByTrueRatio(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;II)V"
        }
    .end annotation

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    move v1, p1

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 2
    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-direct {v2, v4}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    const/4 v4, 0x0

    move v5, p1

    :goto_1
    if-gt v5, v1, :cond_2

    .line 3
    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-direct {v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v7

    .line 5
    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v6

    .line 6
    invoke-static {v7, v6}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_2
    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_3

    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 8
    invoke-interface {p0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v1, v3

    .line 9
    invoke-static {p0, v1, p2}, Lcom/motorola/camera/settings/PictureSizeHelper;->sortPictureSizeByTrueRatio(Ljava/util/List;II)V

    return-void
.end method

.method public static trimToDecimal(I)Ljava/lang/String;
    .locals 3

    .line 1
    rem-int/lit8 v0, p0, 0xa

    if-nez v0, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 p0, p0, 0xa

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-float p0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
