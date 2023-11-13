.class public final Lcom/motorola/camera/panorama/PanoHelper;
.super Ljava/lang/Object;
.source "PanoHelper.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final PANO_SENSOR_FRAME_DURATION:Ljava/lang/Long;

.field public static sPaddingBottom:F

.field public static sPreviewAreaHeight:I

.field public static sPreviewAreaWidth:I

.field public static sSelfiePreviewHeight:I

.field public static sSurfaceSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->PANO_SENSOR_FRAME_DURATION:Ljava/lang/Long;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static getAspect(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    div-float/2addr p0, p1

    return p0
.end method

.method public static getDisplaySize(II)Landroid/util/Size;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v2, "window"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, p1

    int-to-float v3, v1

    .line 7
    invoke-static {v2, v3}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v3

    int-to-float v4, p0

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 8
    new-instance p0, Landroid/util/Size;

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1, v4}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Landroid/util/Size;

    mul-int/2addr p0, v1

    int-to-float p0, p0

    invoke-static {p0, v2}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {p1, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static getPreviewSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Size;

    .line 4
    invoke-static {v0, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getTargetBasedOnPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "PanoHelper"

    const-string/jumbo v1, "target sizes not supported"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v1, Landroid/util/Size;

    .line 10
    invoke-static {v1, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getTargetBasedOnPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Preview size not supported"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isLowRamDevice()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 16
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSizeBasedOnAspectRatio(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static getPreviewSizeBasedOnAspectRatio(Landroid/util/Size;)Landroid/util/Size;
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getPreviewSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewSize;

    .line 6
    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v3

    .line 7
    invoke-static {v3, v1}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance p0, Landroid/util/Size;

    iget v0, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    :cond_1
    return-object p0
.end method

.method public static getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Size;

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xa20

    const/16 v2, 0x798

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :cond_0
    if-nez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/16 v1, 0x23

    .line 7
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_3

    .line 8
    array-length v1, p0

    if-lez v1, :cond_3

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 10
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 11
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 12
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x33d6bf95

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 13
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 14
    new-instance p0, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/Size;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfieTargetBasedOnPreviewSize(Landroid/util/Size;Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "PanoHelper"

    const-string/jumbo v1, "target sizes not supported"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 9
    check-cast v1, Landroid/util/Size;

    .line 10
    invoke-static {v1, p0, p1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfieTargetBasedOnPreviewSize(Landroid/util/Size;Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Preview size not supported"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x5a0

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSizeBasedOnAspectRatio(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getSelfieTargetBasedOnPreviewSize(Landroid/util/Size;Z[Landroid/util/Size;)Landroid/util/Size;
    .locals 4

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p0, p1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    const/16 p1, 0x258

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x320

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x5a0

    const/16 v0, 0x438

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p1

    const/16 p2, 0x23

    .line 7
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_5

    .line 8
    array-length p1, p2

    if-lez p1, :cond_5

    .line 9
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v1, p2, v0

    .line 10
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 12
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "target sizes not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PanoHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getTargetBasedOnPreviewSize(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-virtual {v0, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p1

    const/16 v0, 0x23

    .line 4
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Lcom/motorola/camera/panorama/PanoHelper;->isTargetInSizes([Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 7
    invoke-static {p1, p0}, Lcom/motorola/camera/panorama/PanoHelper;->isTargetInSizes([Landroid/util/Size;Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "target sizes not supported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PanoHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0
.end method

.method public static getWideSelfiePictureSize(Z)Landroid/util/Size;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static getWideSelfieStitchingRatio(IZ)F
    .locals 3

    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    const v1, 0x3eb33333

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10e

    const v2, 0x3e333333

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    const v2, 0x3e4ccccd

    :cond_4
    return v2
.end method

.method public static isFocusModeAuto()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    const-string v1, "Auto"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowRamDevice()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_KEY_CPU_ABILIST64:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "64"

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "context"

    .line 5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v3

    add-int/lit16 v3, v3, 0x3ff

    div-int/lit16 v3, v3, 0x400

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static isPanoAutoExMode()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_EX_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isRearCamera(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSelfieMirrorSupported()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTargetInSizes([Landroid/util/Size;Landroid/util/Size;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p0

    if-lez v1, :cond_1

    .line 2
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
