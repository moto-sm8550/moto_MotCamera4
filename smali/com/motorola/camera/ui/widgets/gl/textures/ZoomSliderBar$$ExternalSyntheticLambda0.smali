.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$$ExternalSyntheticLambda0;->f$1:I

    int-to-float p0, p0

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->isZoomRatiosInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_2

    .line 3
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p0, v5

    if-ltz v5, :cond_1

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p0, v5

    if-gtz v5, :cond_1

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_3

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 5
    :cond_3
    :goto_1
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    if-eqz v1, :cond_4

    .line 6
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    if-eq v3, v1, :cond_4

    .line 7
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 9
    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    .line 12
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 14
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v1

    .line 15
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v4

    .line 16
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result p0

    sub-float/2addr p0, v1

    sub-float/2addr v4, v1

    div-float/2addr p0, v4

    .line 17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 18
    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v7, v4

    if-lt v3, v7, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    .line 20
    aget-object v4, v4, v3

    .line 21
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 22
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 23
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ne v3, v8, :cond_6

    add-int/lit8 v4, v4, -0x1

    .line 24
    :cond_6
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v4, :cond_7

    goto :goto_3

    .line 25
    :cond_7
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    const/4 v7, 0x4

    .line 26
    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 27
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 28
    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    .line 29
    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 30
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 31
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 32
    invoke-direct {v8, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    neg-float v9, v3

    .line 33
    invoke-virtual {v8, v9, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    sub-float/2addr v4, v3

    mul-float/2addr v4, p0

    .line 34
    invoke-virtual {v8, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    .line 35
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 36
    invoke-virtual {p0, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move p0, v6

    goto :goto_4

    :cond_8
    :goto_3
    move p0, v2

    :goto_4
    if-eqz p0, :cond_f

    .line 37
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v3, v1, v5

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v3, :cond_9

    .line 39
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    div-float v5, p0, v8

    add-float/2addr v5, v7

    sub-float/2addr v5, v1

    mul-float/2addr v3, v4

    sub-float v1, v5, v3

    cmpg-float v3, v1, p0

    if-gez v3, :cond_c

    cmpl-float v3, v5, p0

    if-ltz v3, :cond_d

    goto :goto_5

    :cond_9
    div-float/2addr p0, v8

    .line 40
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    mul-float/2addr v7, v3

    div-float/2addr v7, v8

    sub-float/2addr p0, v7

    sub-float/2addr p0, v1

    mul-float/2addr v3, v4

    add-float v1, v3, p0

    cmpl-float v3, v1, v5

    if-lez v3, :cond_b

    cmpg-float v3, p0, v5

    if-gez v3, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move v5, p0

    goto :goto_6

    :cond_b
    move v5, p0

    :cond_c
    move v6, v2

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    .line 41
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 42
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    .line 44
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    .line 45
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    goto :goto_7

    .line 46
    :cond_e
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 48
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    :cond_f
    :goto_7
    return-void
.end method
