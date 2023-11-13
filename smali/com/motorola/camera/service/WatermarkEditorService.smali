.class public Lcom/motorola/camera/service/WatermarkEditorService;
.super Landroid/app/IntentService;
.source "WatermarkEditorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;,
        Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;,
        Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;,
        Lcom/motorola/camera/service/WatermarkEditorService$Info;
    }
.end annotation


# static fields
.field public static final AREA_RATIO:F

.field public static final SCALE_LINE:F

.field public static final SCALE_LOGO:F

.field public static final SCALE_SHOT_BY:F

.field public static final SCALE_SHOT_BY_BASELINE:F

.field public static final SCALE_SHOT_ON:F

.field public static final SCALE_SHOT_ON_BASELINE:F

.field public static final SCALE_SHOT_ON_SECOND_BASELINE:F

.field public static final SCALE_TS_TEXT:F

.field public static final SCALE_TS_X:F

.field public static final SCALE_TS_Y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/motorola/camera/service/WatermarkEditorService;

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070404

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    .line 6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v3, 0x7f07040c

    .line 9
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LOGO:F

    const v3, 0x7f070409

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LINE:F

    const v3, 0x7f070414

    .line 11
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON:F

    const v3, 0x7f070415

    .line 12
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_BASELINE:F

    const v4, 0x7f070416

    .line 13
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_SECOND_BASELINE:F

    const v4, 0x7f070406

    .line 14
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY:F

    .line 15
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f070407

    .line 16
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY_BASELINE:F

    const v3, 0x7f070418

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v3, v4

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    const v3, 0x7f070419

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v3, v2

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    const v2, 0x7f07041a

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/service/WatermarkEditorService;

    const-string v0, "WatermarkEditorService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static addWatermarkToBitmap(Landroid/graphics/Bitmap;ZZZJ)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "WatermarkEditorService"

    if-nez v0, :cond_0

    const-string v0, "Invalid jpeg bitmap"

    .line 1
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    const-string v6, "front"

    goto :goto_0

    :cond_1
    const-string v6, "rear"

    .line 2
    :goto_0
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v7}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v7

    .line 4
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v8

    .line 5
    new-instance v9, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 6
    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 7
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v12

    .line 8
    invoke-static {v8, v6, v11, v12}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v6, v3}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 12
    invoke-static {v1, v9}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(ZLandroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 14
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark size is unknown! key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 16
    :cond_3
    invoke-static {v11}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 18
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 19
    invoke-static {v6}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v11

    invoke-direct {v9, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 23
    :cond_4
    invoke-static {v2, v1, v9, v10}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    return v3

    .line 24
    :cond_5
    sget-object v6, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    .line 25
    sget-object v6, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    .line 26
    invoke-virtual {v6, v8, v2}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v6, 0x1

    if-eqz p2, :cond_9

    .line 27
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 28
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0603bb

    .line 29
    invoke-virtual {v8, v9, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    int-to-float v1, v1

    .line 30
    sget v10, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v10, v1

    float-to-int v10, v10

    .line 31
    sget v11, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v11, v1

    float-to-int v11, v11

    .line 32
    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    .line 36
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 37
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 38
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v13, 0xff

    .line 40
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, 0x0

    if-eqz p1, :cond_7

    if-eqz v7, :cond_6

    .line 43
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v13, v2, v15, v14, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 44
    :cond_6
    invoke-virtual {v13, v2, v14, v14, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    :cond_7
    :goto_1
    invoke-static/range {p4 .. p5}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 48
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 49
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 51
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v6, v1

    .line 52
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v12, v2, v3, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v6

    .line 57
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v9

    sub-int/2addr v6, v10

    .line 58
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v11

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    move v10, v6

    :goto_2
    int-to-float v6, v10

    int-to-float v9, v9

    .line 59
    invoke-virtual {v13, v2, v6, v9, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    invoke-static {v8, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v13, v2, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v2, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 61
    :cond_9
    :goto_3
    invoke-static {v0, v2, v3, v7}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;IZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return v0

    .line 63
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return v3

    :goto_5
    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    throw v0
.end method

.method public static cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The picture size list is empty, facing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatermarkEditorService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$Info;

    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService$Info;-><init>(Landroid/util/Size;)V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 5
    invoke-static {v0, v1, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/service/WatermarkEditorService$Info;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->layoutDirection:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 8
    invoke-static {v3, p1, v4, v1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static convertProductName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "5G"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 7
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 8
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_ASCII_WATERMARK:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductPrc()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3
    iget v3, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    .line 4
    iget v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    .line 5
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "WatermarkEditorService"

    const-string v1, "create signature bitmap error!"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    return-object v3

    .line 7
    :cond_1
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const v4, 0x7f0603bb

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 10
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 11
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v13, 0x1

    .line 12
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 14
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 15
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    .line 17
    iget v5, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    iget v6, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    move-object/from16 v7, p1

    invoke-static {v7, v5, v6}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 18
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 19
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 21
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget-boolean v8, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v8, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_0

    :cond_2
    move v8, v4

    :goto_0
    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 24
    iget v9, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 25
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 26
    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    const/16 v8, 0xff

    .line 27
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    invoke-virtual {v10, v14, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 30
    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 31
    iget v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    add-int v15, v5, v4

    .line 32
    iget-boolean v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v15

    goto :goto_1

    :cond_3
    move v4, v15

    :goto_1
    const v5, 0x7f07040b

    .line 33
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v9, v5, 0x1

    int-to-float v5, v9

    .line 34
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v7, v4

    .line 35
    iget v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    int-to-float v6, v4

    iget v5, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    add-int/2addr v4, v5

    int-to-float v8, v4

    move-object v4, v10

    move v5, v7

    move/from16 v16, v9

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 36
    iget v4, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    add-int v9, v16, v4

    add-int v4, v9, v15

    .line 37
    iget-boolean v5, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    const/4 v6, 0x0

    .line 38
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 40
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 41
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    const v6, 0x7f110579

    .line 42
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/service/WatermarkEditorService;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 44
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 45
    :goto_3
    iget v7, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    int-to-float v7, v7

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 47
    iget v7, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    .line 48
    iget v11, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    goto :goto_4

    .line 49
    :cond_6
    iget v7, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    .line 50
    :goto_4
    iget-boolean v8, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v8, :cond_7

    .line 51
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 52
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    float-to-int v5, v5

    sub-int/2addr v8, v5

    sub-int v5, v8, v4

    :cond_7
    int-to-float v8, v5

    int-to-float v7, v7

    .line 53
    invoke-virtual {v10, v6, v8, v7, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 54
    iget v9, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    invoke-static {v2, v9}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v2

    .line 55
    invoke-virtual {v10, v6, v8, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 57
    iget v6, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget v6, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-boolean v0, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 60
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    float-to-int v0, v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    :cond_8
    int-to-float v0, v5

    int-to-float v4, v11

    .line 62
    invoke-virtual {v10, v1, v0, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 63
    invoke-virtual {v10, v1, v0, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    :cond_9
    invoke-static {v14}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    return-object v3
.end method

.method public static createWatermarkItem(Lcom/motorola/camera/service/WatermarkEditorService$Info;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2
    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenRatio:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->baseWmSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    div-float/2addr v0, p0

    .line 4
    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    div-float p0, v0, p0

    .line 5
    new-instance v1, Landroid/util/Size;

    float-to-int v0, v0

    float-to-int p0, p0

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->baseWmSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$Info;->screenWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    div-float/2addr v0, p0

    .line 7
    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    div-float p0, v0, p0

    .line 8
    new-instance v1, Landroid/util/Size;

    float-to-int v0, v0

    float-to-int p0, p0

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 9
    :goto_0
    new-instance p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    invoke-direct {p0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;-><init>()V

    .line 10
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    .line 14
    iput-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3e2aaaab

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 16
    invoke-static {p2}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    int-to-float p2, p2

    .line 17
    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    .line 18
    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LOGO:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    .line 20
    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    .line 21
    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LINE:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 22
    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    .line 23
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    .line 24
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    .line 25
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_BASELINE:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    .line 26
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_SECOND_BASELINE:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    .line 27
    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY_BASELINE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    .line 28
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    iget v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    sub-int/2addr p2, v0

    .line 29
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    .line 30
    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-le p2, v0, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    .line 32
    :cond_1
    iget p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-static {p1}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    return-object p0
.end method

.method public static filterPortraitSize(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 3
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, p2}, Lcom/motorola/camera/service/WatermarkEditorService;->saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 5
    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Landroid/util/Size;

    iget p4, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    iget p1, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-direct {p3, p4, p1}, Landroid/util/Size;-><init>(II)V

    .line 8
    invoke-virtual {p3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WatermarkEditorService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static generateWatermarkOnDemand(ZLandroid/util/Size;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "front"

    goto :goto_0

    :cond_1
    const-string p0, "rear"

    .line 4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 6
    :goto_1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getLogoId()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 8
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 10
    new-instance v5, Lcom/motorola/camera/service/WatermarkEditorService$Info;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/motorola/camera/service/WatermarkEditorService$Info;-><init>(Landroid/util/Size;)V

    .line 11
    invoke-static {v5, p1, p0}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/service/WatermarkEditorService$Info;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v0

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/service/WatermarkEditorService$Info;->layoutDirection:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 14
    invoke-static {v5, p0, v6, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v0, v3, v2, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 17
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {v3, v2}, Lcom/motorola/camera/service/WatermarkEditorService;->saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 19
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    iget v0, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 22
    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatermarkEditorService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v1
.end method

.method public static getCameraPictureSizes(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    .line 3
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 10
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 11
    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 18
    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    .line 19
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    .line 21
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 24
    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 25
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 26
    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 29
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 30
    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliUwCamera()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 33
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    .line 34
    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 37
    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getSwapSize(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    new-instance p0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->filterPortraitSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    .line 43
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static getLayoutDirection(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "rtl"

    goto :goto_0

    :cond_0
    const-string p0, "ltr"

    :goto_0
    return-object p0
.end method

.method public static getLogoId()I
    .locals 1

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f080245

    :goto_0
    return v0
.end method

.method public static getMaxSize(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static getSignatureText()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_signature"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "pref_key_signature"

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkOldPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x7f0603bf

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 8
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 9
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 10
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float p0, p1

    .line 11
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v0
.end method

.method public static getSwapSize(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 3
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTimestampString(J)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MMMdyyyyHm"

    goto :goto_0

    :cond_0
    const-string v0, "MMMdyyyyhm"

    .line 3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "MMdyyyyHm"

    .line 5
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MM"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "dd"

    if-eqz v2, :cond_3

    const-string v2, "MMM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "M"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :goto_1
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkFileFolder()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watermarks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public static getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".argb"

    .line 1
    invoke-static {p0, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkOldPref()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x0

    const-string/jumbo v2, "water_mark_pref_name"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getWatermarkPref()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x0

    const-string v2, "com.motorola.camera_watermark"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isSignatureChecked()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_signature"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkOldPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTimestampChecked()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_timestamp"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v3
.end method

.method public static loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "WatermarkEditorService"

    if-nez p0, :cond_0

    const-string/jumbo p0, "the logo drawable is null!"

    .line 1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-lez p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-virtual {p0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p0, "width and height must be > 0"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int p2, p0, p1

    .line 9
    new-array p2, p2, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p2

    move v6, p0

    move v9, p0

    move v10, p1

    .line 10
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_5

    move v3, v1

    :goto_3
    if-ge v3, p0, :cond_4

    mul-int v4, v2, p0

    add-int/2addr v4, v3

    .line 11
    aget v5, p2, v4

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3

    move v6, v1

    goto :goto_4

    :cond_3
    const/16 v6, 0xf0

    :goto_4
    shl-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    .line 12
    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p2

    move v6, p0

    move v9, p0

    move v10, p1

    .line 13
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_5

    :cond_6
    const-string p0, "load watermark logo failed or no logo!"

    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method public static loadPictureSizes(Z)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WatermarkEditorService"

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "supported_front_pic_sizes"

    .line 2
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Can\'t get front supported pic sizes!"

    .line 4
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "supported_rear_pic_sizes"

    .line 6
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "Can\'t get rear supported pic sizes!"

    .line 8
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2
.end method

.method public static loadWatermarkBitmap(Landroid/util/Size;Lcom/motorola/camera/PreviewSize;Landroid/util/SizeF;IZZJ)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rear"

    goto :goto_0

    :cond_0
    const-string v2, "front"

    .line 2
    :goto_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 6
    invoke-static {v3, v2, v5, v6}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "WatermarkEditorService"

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark size is unknown! key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 10
    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v8

    invoke-direct {v5, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 14
    :cond_2
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 16
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 17
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v8, v4

    const/4 v4, 0x0

    .line 18
    invoke-static {v3, v2, v5, v8}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, "Failed to load watermark file!"

    .line 19
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_3
    const v6, 0x3f0ccccd

    if-eqz p5, :cond_9

    .line 20
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 21
    invoke-virtual {v8}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v8

    .line 22
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0603bb

    .line 24
    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    int-to-float v2, v2

    .line 25
    sget v11, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v11, v2

    float-to-int v11, v11

    .line 26
    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v12, v2

    float-to-int v12, v12

    .line 27
    sget v13, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 28
    iget v13, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v14, v0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 29
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    mul-float/2addr v13, v6

    .line 30
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/16 v14, 0x5a

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v14, v1, :cond_5

    const/16 v14, 0x10e

    if-ne v14, v1, :cond_4

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    :goto_2
    mul-float/2addr v1, v15

    div-float/2addr v1, v13

    float-to-int v1, v1

    .line 32
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    .line 33
    invoke-static {v1, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    .line 35
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v15, 0xff

    .line 37
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p4, :cond_7

    if-eqz v8, :cond_6

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v9, v16, v17

    int-to-float v9, v9

    invoke-virtual {v6, v5, v9, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 41
    :cond_6
    invoke-virtual {v6, v5, v15, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    :cond_7
    :goto_3
    invoke-static/range {p6 .. p7}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 45
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 46
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v9, v2

    .line 49
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v13, v5, v4, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 53
    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v7

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v9

    sub-int/2addr v7, v11

    .line 55
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v12

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    move v11, v7

    :goto_4
    int-to-float v7, v11

    int-to-float v8, v9

    .line 56
    invoke-virtual {v6, v5, v7, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-static {v10, v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v6, v5, v7, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object v5, v1

    .line 58
    :cond_9
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 59
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const v1, 0x3f0ccccd

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 60
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 61
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    float-to-int v1, v1

    .line 62
    invoke-static {v5, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v5, :cond_a

    .line 63
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    return-object v0
.end method

.method public static loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;
    .locals 9

    const-string p3, "WatermarkEditorService"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->readIntArrayFromFile(Ljava/io/File;)[I

    move-result-object v2

    .line 2
    array-length p2, v2

    mul-int v1, p0, p1

    if-ge p2, v1, :cond_0

    const-string p0, "Corrupted watermark data!"

    .line 3
    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 4
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p0

    move v7, p0

    move v8, p1

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static migrateFiles()V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    if-lez v1, :cond_0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parsePictureSizes(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getSwapSize(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->filterPortraitSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readIntArrayFromFile(Ljava/io/File;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
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

.method public static saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v6, v7

    .line 3
    new-array v9, v8, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v9

    move v3, v6

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 5
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    mul-int/lit8 v8, v8, 0x4

    .line 6
    :try_start_0
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v9}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.camera.service.action.CREATE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "com.motorola.camera.service.extra.BUNDLE"

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "com.motorola.camera.service.extra.CACHE"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    .line 4
    sget-object p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->migrateFiles()V

    .line 11
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast p1, Landroid/util/Size;

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rear"

    goto :goto_0

    :cond_0
    const-string v0, "front"

    .line 15
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getLogoId()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 19
    invoke-static {v1, v0, v3, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    .line 21
    iget-boolean v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    if-eqz v0, :cond_2

    .line 23
    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    invoke-static {p1, v0, v2, v1, v3}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    .line 25
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    if-eqz v4, :cond_3

    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    iget-boolean v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    invoke-static {v3, v4, v2, v1, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    const-string p1, "com.motorola.camera.service.action.MIGRATE"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 31
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkOldPref()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "pref_key_check_watermark"

    .line 32
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "front"

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    .line 35
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 37
    sget-object v5, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 38
    array-length v5, p1

    if-lez v5, :cond_8

    const-string v5, "^front_(\\d{3,4}x\\d{3,4})"

    .line 39
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "^back_(\\d{3,4}x\\d{3,4})"

    .line 40
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 41
    array-length v7, p1

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, p1, v8

    .line 42
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 44
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 46
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v10, "back"

    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 48
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 50
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 51
    :cond_8
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, p1

    .line 52
    :goto_5
    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 54
    invoke-virtual {p0, v3, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->recreateWatermarkFiles(Ljava/lang/String;Ljava/util/List;)V

    .line 55
    :cond_a
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, p1

    .line 56
    :goto_6
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "rear"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->recreateWatermarkFiles(Ljava/lang/String;Ljava/util/List;)V

    .line 59
    :cond_c
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->migrateFiles()V

    :cond_d
    return-void
.end method

.method public final recreateWatermarkFiles(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getLogoId()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/motorola/camera/service/WatermarkEditorService$Info;

    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/service/WatermarkEditorService$Info;-><init>(Landroid/util/Size;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 6
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/service/WatermarkEditorService$Info;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lcom/motorola/camera/service/WatermarkEditorService$Info;->layoutDirection:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 9
    invoke-static {v4, p1, v5, v2}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 10
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 11
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 13
    invoke-static {v2, v3, v0, p0, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
