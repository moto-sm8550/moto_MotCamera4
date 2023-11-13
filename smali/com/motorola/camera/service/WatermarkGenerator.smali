.class public final Lcom/motorola/camera/service/WatermarkGenerator;
.super Ljava/lang/Object;
.source "WatermarkGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;
    }
.end annotation


# instance fields
.field public mAreaHeight:I

.field public mAreaWidth:I

.field public mByTxtSize:I

.field public mIsRtl:Z

.field public mIsSignPresent:Z

.field public mIsSignatureOn:Z

.field public mIsTimestampOn:Z

.field public mLeftPreviewTemplate:Landroid/graphics/Bitmap;

.field public mLeftSignTemplate:Landroid/graphics/Bitmap;

.field public final mLineColor:I

.field public mLineHeight:I

.field public mLineTop:I

.field public mLineWidth:I

.field public mLogoBitmap:Landroid/graphics/Bitmap;

.field public mLogoHeight:I

.field public mLogoMarginH:I

.field public mLogoMarginV:I

.field public mLogoWidth:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public final mResource:Landroid/content/res/Resources;

.field public mRightPreviewTemplate:Landroid/graphics/Bitmap;

.field public final mShotOnText:Ljava/lang/String;

.field public mShotOnTxtSize:I

.field public mSignText:Ljava/lang/String;

.field public mSignXOffset:I

.field public mTimestampTemplate:Landroid/graphics/Bitmap;

.field public mTsTxtSize:I

.field public mTsTxtXStart:I

.field public mTsTxtYStart:I

.field public mTsXMargin:I

.field public mTsYMargin:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0603bb

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    .line 5
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f110579

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    return-void
.end method

.method public static isBitmapValid(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final createPreviewBitmap(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    move-object v0, v4

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsTimestampOn:Z

    if-eqz v5, :cond_4

    .line 5
    iget-object v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v7, v4

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    .line 6
    invoke-static {v5, v6}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 8
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget v7, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget v7, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v7, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 12
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    iget v9, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtXStart:I

    int-to-float v9, v9

    iget v10, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTsTxtYStart:I

    int-to-float v10, v10

    invoke-virtual {v8, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v6, v8

    .line 15
    invoke-static {v7, v5, v6}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 16
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 17
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    iget-boolean v8, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez v8, :cond_3

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 22
    invoke-virtual {v7, v5, v8, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 24
    invoke-virtual {v7, v5, v1, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 25
    :goto_2
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    :cond_4
    iget-boolean v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v5, :cond_6

    .line 27
    iget-object v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v4

    goto :goto_3

    .line 28
    :cond_5
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 29
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 31
    invoke-virtual {p0, v5, v3}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignature(Landroid/graphics/Bitmap;Z)V

    :goto_3
    if-eqz v5, :cond_6

    .line 32
    iget v6, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    int-to-float v6, v6

    const v7, 0x3e4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 33
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-float v7, v7

    mul-float/2addr v7, v2

    .line 34
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 35
    invoke-static {v5, v7, v6}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 36
    invoke-virtual {p0, v0, v5}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 37
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_4
    if-eqz p1, :cond_c

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_6

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mRightPreviewTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_6

    .line 41
    :cond_8
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v4, :cond_b

    .line 42
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 43
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 47
    iget-boolean v5, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    if-eqz v5, :cond_9

    .line 48
    iget v1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 50
    :cond_9
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 51
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    add-int/2addr v3, v1

    iget v1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v3, v1

    invoke-static {v3}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v1

    .line 52
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mAreaHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/motorola/camera/service/WatermarkGenerator;->preDraw(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0, v1, v3}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignature(Landroid/graphics/Bitmap;Z)V

    .line 55
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 56
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v5, v3, :cond_a

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    int-to-float v2, v5

    mul-float/2addr v4, v2

    int-to-float v2, v3

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_5

    :cond_a
    mul-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v2, v4

    div-float/2addr v3, v2

    float-to-int v5, v3

    .line 59
    :goto_5
    invoke-static {v1, v5, v4}, Lcom/motorola/camera/service/WatermarkGenerator;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/service/WatermarkGenerator;->drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 61
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkGenerator;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    move-object v4, p1

    .line 62
    :cond_c
    :goto_6
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v0, :cond_d

    .line 63
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v4, :cond_e

    .line 64
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object p0
.end method

.method public final drawSignToPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 6
    invoke-virtual {v1, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr p0, v2

    int-to-float p0, p0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 9
    invoke-virtual {v1, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final drawSignature(Landroid/graphics/Bitmap;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f070415

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f070407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, p1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f070416

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    move v2, v0

    .line 9
    :goto_0
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnTxtSize:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    .line 12
    iget-boolean v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v4, :cond_2

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int v3, v4, v3

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mShotOnText:Ljava/lang/String;

    int-to-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v1, v4, v3, p1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    iget-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    if-eqz p1, :cond_5

    .line 17
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mByTxtSize:I

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 20
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mPreviewHeight:I

    int-to-float p1, p1

    const p2, 0x3e4ccccd

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 21
    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mTimestampTemplate:Landroid/graphics/Bitmap;

    .line 24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLeftSignTemplate:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v4, p1

    sub-float/2addr v3, v4

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v7, v3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 27
    :cond_3
    iget p2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    .line 28
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v3, :cond_4

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 30
    invoke-virtual {v7, p1, v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iget p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignXOffset:I

    sub-int p2, v0, p0

    :cond_4
    const/4 v3, 0x0

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v5, p2

    int-to-float v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final preDraw(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkGenerator;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 7
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-nez v3, :cond_1

    .line 12
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 14
    :goto_0
    iget v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginV:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 15
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 16
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 18
    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    iget-object v2, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLogoMarginH:I

    add-int/2addr v2, v0

    .line 19
    iget-boolean v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int v2, p1, v2

    .line 21
    :cond_2
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineWidth:I

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineColor:I

    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v2

    .line 23
    iget p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineTop:I

    int-to-float v3, p1

    iget p0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mLineHeight:I

    add-int/2addr p1, p0

    int-to-float v5, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setSignText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mSignText:Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignatureOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/service/WatermarkGenerator;->mIsSignPresent:Z

    return-void
.end method
