.class public final Lcom/motorola/camera/ui/widgets/LevelerView;
.super Ljava/lang/Object;
.source "LevelerView.java"


# instance fields
.field public final mDensity:F

.field public mDeviationValue:I

.field public mLeveled:Z

.field public final mLeveledColor:I

.field public final mLevelerHeight:F

.field public final mLevelerLine:Landroid/widget/ImageView;

.field public mLevelerWidth:F

.field public final mMainLine:Landroid/widget/ImageView;

.field public mMainLineWidth:F

.field public mOrientation:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    .line 4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    const v0, 0x7f0a0261

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    const v0, 0x7f0a024f

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060321

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 10
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    return-void
.end method


# virtual methods
.method public final computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_3

    .line 1
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean p2, p2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p2, :cond_0

    .line 3
    iget p2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    .line 4
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 7
    :goto_0
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast p2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 10
    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    int-to-float p1, p1

    .line 12
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    goto :goto_1

    .line 13
    :cond_2
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    :goto_1
    return-void
.end method

.method public final setDisplayOrientation(ILandroid/view/View;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    iget-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/LevelerView;->computeWidth(Lcom/motorola/camera/PreviewSize;Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateResource()V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_1

    add-float/2addr p1, v1

    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    sub-float/2addr p1, v1

    :cond_2
    add-float/2addr p2, p1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/widgets/LevelerView$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/LevelerView$1;-><init>(Lcom/motorola/camera/ui/widgets/LevelerView;)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final updateMainLineResource()V
    .locals 11

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    int-to-float v0, v0

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    float-to-int v0, v0

    .line 7
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    float-to-int v0, v0

    .line 10
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 12
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 14
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v9, 0x40800000    # 4.0f

    mul-float v2, v1, v9

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v3, v1, v10

    iget v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float/2addr v4, v10

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    div-float v5, v1, v10

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLineWidth:F

    div-float v2, v1, v10

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v3, v10

    add-float/2addr v2, v3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    div-float v4, v3, v10

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    mul-float/2addr v5, v9

    sub-float v5, v1, v5

    div-float v6, v3, v10

    move-object v1, v7

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateResource()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 6
    new-instance v8, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDensity:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v1, v10

    iget v5, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    const/4 v3, 0x0

    move-object v1, v7

    move v2, v4

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    div-float v5, v1, v10

    iget v4, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    const/4 v2, 0x0

    move-object v1, v7

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerWidth:F

    div-float/2addr v1, v10

    iget v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerHeight:F

    div-float/2addr v2, v10

    sub-float v3, v2, v9

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
