.class public final Lcom/google/photos/vision/barhopper/zzi;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xe

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    const/16 p0, 0xc

    return p0

    :pswitch_3
    const/16 p0, 0xb

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_a
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$1;

    .line 2
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    return-object p0
.end method

.method public getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    .line 2
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    return p0
.end method

.method public getRadius(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p0

    .line 2
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    return p0
.end method

.method public setMaxElevation(Landroidx/cardview/widget/CardViewDelegate;F)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->getCardBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Landroidx/cardview/widget/CardView$1;

    .line 3
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v1

    .line 5
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput p2, v0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 7
    iput-boolean v2, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 8
    iput-boolean v1, v0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 2
    iget-object v1, v0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->getMaxElevation(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/photos/vision/barhopper/zzi;->getRadius(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result p0

    .line 6
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result p1

    invoke-static {v1, p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result p1

    float-to-double v2, p1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 8
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView$1;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v1, p0, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double v1, p0

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    .line 10
    invoke-virtual {v0, p1, p0, p1, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    return-void
.end method
