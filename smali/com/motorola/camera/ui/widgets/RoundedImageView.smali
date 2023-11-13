.class public Lcom/motorola/camera/ui/widgets/RoundedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundedImageView.java"


# static fields
.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field public static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field public mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public mBackgroundResource:I

.field public mBorderColor:Landroid/content/res/ColorStateList;

.field public mBorderWidth:F

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mColorMod:Z

.field public final mCornerRadii:[F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mHasColorFilter:Z

.field public mIsOval:Z

.field public mMutateBackground:Z

.field public mResource:I

.field public mScaleType:Landroid/widget/ImageView$ScaleType;

.field public mTileModeX:Landroid/graphics/Shader$TileMode;

.field public mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/RoundedImageView;

    .line 2
    const-class v0, Lcom/motorola/camera/ui/widgets/RoundedImageView;

    .line 3
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x4

    new-array v2, v1, [F

    .line 2
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    const/high16 v3, -0x1000000

    .line 3
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    .line 4
    iput v4, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    const/4 v5, 0x0

    .line 5
    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorMod:Z

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mHasColorFilter:Z

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mIsOval:Z

    .line 9
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mMutateBackground:Z

    .line 10
    sget-object v5, Lcom/motorola/camera/ui/widgets/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 11
    iput-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 12
    sget-object v5, Lcom/motorola/camera/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ltz v5, :cond_0

    .line 14
    sget-object v6, Lcom/motorola/camera/ui/widgets/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v6, v5

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/4 v5, 0x3

    .line 16
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x6

    .line 17
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    aput v7, v2, v0

    const/4 v7, 0x7

    .line 18
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v2, v8

    const/4 v7, 0x5

    .line 19
    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x2

    aput v7, v2, v9

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    aput v7, v2, v5

    move v2, v0

    move v5, v2

    :goto_1
    if-ge v2, v1, :cond_2

    .line 21
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    aget v10, v7, v2

    cmpg-float v10, v10, v4

    if-gez v10, :cond_1

    .line 22
    aput v4, v7, v2

    goto :goto_2

    :cond_1
    move v5, v8

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    cmpg-float v1, v6, v4

    if-gez v1, :cond_3

    move v6, v4

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    array-length v1, v1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 24
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {p1, v9, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    cmpg-float p2, p2, v4

    if-gez p2, :cond_5

    .line 26
    iput v4, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    .line 27
    :cond_5
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    .line 28
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_6
    const/16 p2, 0x8

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mMutateBackground:Z

    const/16 p2, 0x9

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mIsOval:Z

    const/16 p2, 0xa

    const/4 v0, -0x2

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_7

    .line 32
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 33
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_7
    const/16 p2, 0xb

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_8

    .line 35
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_8
    const/16 p2, 0xc

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_9

    .line 37
    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 38
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    .line 39
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 40
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mMutateBackground:Z

    if-eqz p2, :cond_a

    .line 41
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method


# virtual methods
.method public final applyColorMod()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorMod:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mHasColorFilter:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->getMaxCornerRadius()F

    move-result p0

    return p0
.end method

.method public getMaxCornerRadius()F
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    .line 2
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundResource:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundResource:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundResource:I

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to find resource: "

    .line 6
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoundedImageView"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundResource:I

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mHasColorFilter:Z

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mColorMod:Z

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->applyColorMod()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public final setCornerRadius(FFFF)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    aput p1, v0, v1

    .line 4
    aput p2, v0, v5

    .line 5
    aput p3, v0, v4

    .line 6
    aput p4, v0, v3

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    .line 8
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    .line 2
    sget v0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->$r8$clinit:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/widgets/RoundedDrawable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to find resource: "

    .line 6
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget v2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoundedImageView"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mResource:I

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mIsOval:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateDrawableAttrs()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;

    if-nez p2, :cond_1

    .line 3
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p2, :cond_2

    .line 5
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->updateShaderMatrix()V

    .line 7
    :cond_2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderWidth:F

    .line 8
    iput p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderWidth:F

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mIsOval:Z

    .line 14
    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mOval:Z

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    .line 17
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 18
    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 21
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v0, p2, :cond_5

    .line 22
    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 23
    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mRebuildShader:Z

    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    :cond_5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mCornerRadii:[F

    if-eqz p2, :cond_d

    .line 26
    aget v0, p2, v1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    const/4 v6, 0x3

    aget p2, p2, v6

    .line 27
    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 32
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v9

    if-gt v9, v2, :cond_c

    .line 34
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 35
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 36
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_6

    cmpg-float v9, v7, v8

    if-ltz v9, :cond_6

    .line 37
    iput v7, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    goto :goto_1

    .line 38
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid radius value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_7
    iput v8, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornerRadius:F

    .line 40
    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->mCornersRounded:[Z

    cmpl-float v0, v0, v8

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    aput-boolean v0, p1, v1

    cmpl-float v0, v3, v8

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    .line 41
    :goto_3
    aput-boolean v0, p1, v2

    cmpl-float v0, v5, v8

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    .line 42
    :goto_4
    aput-boolean v0, p1, v4

    cmpl-float p2, p2, v8

    if-lez p2, :cond_b

    move v1, v2

    .line 43
    :cond_b
    aput-boolean v1, p1, v6

    goto :goto_5

    .line 44
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->applyColorMod()V

    goto :goto_7

    .line 46
    :cond_e
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_f

    .line 47
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_f

    .line 49
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    return-void
.end method

.method public final updateBackgroundDrawableAttrs(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mMutateBackground:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final updateDrawableAttrs()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
