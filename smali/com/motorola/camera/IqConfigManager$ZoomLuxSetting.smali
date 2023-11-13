.class public abstract Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
.super Ljava/lang/Object;
.source "IqConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/IqConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ZoomLuxSetting"
.end annotation


# instance fields
.field public maxLux:F

.field public maxZoom:F

.field public minLux:F

.field public minZoom:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lux_range"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "lux_idx_range"

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->readJson(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static isWithinThreshold(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    cmpg-float p0, p0, p2

    if-lez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public fitsParameters(FF)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    iget v1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    iget p0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F

    .line 2
    invoke-static {p2, p1, p0}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->isWithinThreshold(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final readJson(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "zoom_range"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minZoom:F

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxZoom:F

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->minLux:F

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->maxLux:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    sget-object p1, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    const-string p1, "IqConfigManager"

    const-string p2, "Error parsing Zoom/Lux Configuration: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
