.class public Landroidx/constraintlayout/utils/widget/ImageFilterButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


# instance fields
.field public mAltDrawable:Landroid/graphics/drawable/Drawable;

.field public mCrossfade:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field public mLayer:Landroid/graphics/drawable/LayerDrawable;

.field public mLayers:[Landroid/graphics/drawable/Drawable;

.field public mOverlay:Z

.field public mPanX:F

.field public mPanY:F

.field public mPath:Landroid/graphics/Path;

.field public mRect:Landroid/graphics/RectF;

.field public mRotate:F

.field public mRound:F

.field public mRoundPercent:F

.field public mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field public mZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 4
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 11
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 12
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p2, :cond_e

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 16
    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_b

    .line 19
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 20
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    goto/16 :goto_1

    :cond_0
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 21
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setWarmth(F)V

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 22
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setSaturation(F)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 23
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setContrast(F)V

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 24
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V

    goto :goto_1

    :cond_4
    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 25
    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    goto :goto_1

    :cond_5
    const/16 v5, 0x9

    if-ne v4, v5, :cond_6

    .line 26
    iget-boolean v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-direct {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setOverlay(Z)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 27
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanX(F)V

    goto :goto_1

    :cond_7
    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 28
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImagePanY(F)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    .line 29
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageRotate(F)V

    goto :goto_1

    :cond_9
    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    .line 30
    iget v5, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageZoom(F)V

    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 31
    :cond_b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p2, p1, v0

    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 36
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 37
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 38
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    if-nez p1, :cond_c

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    sub-float/2addr p2, v0

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 41
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_e

    .line 42
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p1, p2, v0

    :cond_e
    :goto_2
    return-void
.end method

.method private setOverlay(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getContrast()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    return p0
.end method

.method public getCrossfade()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    return p0
.end method

.method public getImagePanX()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    return p0
.end method

.method public getImagePanY()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    return p0
.end method

.method public getImageRotate()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    return p0
.end method

.method public getImageZoom()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    return p0
.end method

.method public getRound()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    return p0
.end method

.method public getRoundPercent()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    return p0
.end method

.method public getSaturation()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    return p0
.end method

.method public getWarmth()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return p0
.end method

.method public final layout(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setMatrix()V

    return-void
.end method

.method public setAltImageResource(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    aput-object p1, v0, v1

    .line 4
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    return-void
.end method

.method public setBrightness(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setContrast(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCrossfade(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossfade"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mOverlay:Z

    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, p1

    .line 5
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setImagePanX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    return-void
.end method

.method public setImagePanY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mAltDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, p1

    .line 5
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mCrossfade:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setCrossfade(F)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setImageRotate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    return-void
.end method

.method public setImageZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoom"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->updateViewMatrix()V

    return-void
.end method

.method public final setMatrix()V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    .line 6
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 7
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 8
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 9
    :goto_3
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v5, v8

    mul-float v10, v6, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    div-float v9, v7, v5

    goto :goto_4

    :cond_5
    div-float v9, v8, v6

    :goto_4
    mul-float/2addr v3, v9

    .line 15
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v5, v3

    sub-float v9, v7, v5

    mul-float/2addr v9, v0

    add-float/2addr v9, v7

    sub-float/2addr v9, v5

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v9, v0

    mul-float/2addr v3, v6

    sub-float v5, v8, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    sub-float/2addr v5, v3

    mul-float/2addr v5, v0

    .line 16
    invoke-virtual {v4, v9, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v7, v0

    div-float/2addr v8, v0

    .line 17
    invoke-virtual {v4, v1, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 18
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 19
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setRound(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    .line 3
    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 7
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_2

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 10
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 12
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_4

    .line 13
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 15
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRound:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_6
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 10
    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 13
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 14
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_5
    return-void
.end method

.method public setSaturation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturation"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setWarmth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final updateViewMatrix()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mPanY:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mZoom:F

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRotate:F

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setMatrix()V

    return-void
.end method
