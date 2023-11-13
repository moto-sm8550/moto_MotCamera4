.class public final Lcom/motorola/camera/ProfileSelector;
.super Ljava/lang/Object;
.source "ProfileSelector.java"


# static fields
.field public static final QUALITIES_HIGH_SPEED:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITIES_NORMAL:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    new-instance v1, Landroid/util/Range;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    .line 4
    new-instance v2, Landroid/util/Range;

    const/16 v3, 0x7d0

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x7d8

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v2, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    .line 7
    new-instance v3, Landroid/util/Range;

    const/16 v5, 0x7d2

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 9
    invoke-direct {v3, v5, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v3, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/VideoFormat;",
            "I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/media/CamcorderProfile;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 1
    iget-object v3, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/VideoFormat;->getArea()I

    move-result v4

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-gt v5, v10, :cond_5

    .line 4
    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5
    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    .line 6
    iget v13, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v14, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v13, v14

    int-to-float v13, v13

    int-to-float v14, v4

    if-ne v2, v11, :cond_1

    cmpg-float v15, v14, v13

    if-gtz v15, :cond_0

    sub-float/2addr v13, v14

    goto :goto_1

    :cond_0
    move v13, v6

    goto :goto_1

    :cond_1
    sub-float/2addr v14, v13

    .line 7
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v13

    :goto_1
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-nez v14, :cond_3

    .line 8
    iget v7, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v3, v7, :cond_2

    move-object v7, v10

    goto :goto_3

    :cond_2
    move-object v7, v10

    move v8, v12

    goto :goto_2

    :cond_3
    cmpg-float v11, v13, v9

    if-gez v11, :cond_4

    if-nez v8, :cond_4

    move-object v7, v10

    move v9, v13

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-nez v7, :cond_6

    if-ne v2, v11, :cond_6

    const-string v2, "ProfileSelector"

    const-string/jumbo v3, "valid media profile not found, trying closest"

    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p2

    .line 10
    invoke-static {v0, v1, v2, v12}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v7

    :cond_6
    return-object v7
.end method

.method public static getValidCameraId(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static selectProfile(II)Landroid/media/CamcorderProfile;
    .locals 6

    mul-int/2addr p0, p1

    .line 1
    sget-object p1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_3

    .line 2
    invoke-static {p1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-static {p1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 4
    iget v4, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, p0

    sub-float/2addr v5, v4

    .line 5
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    cmpl-float v5, v2, v0

    if-eqz v5, :cond_1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    :cond_1
    move-object v1, v3

    move v2, v4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method
