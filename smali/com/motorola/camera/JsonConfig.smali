.class public final Lcom/motorola/camera/JsonConfig;
.super Ljava/lang/Object;
.source "JsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;,
        Lcom/motorola/camera/JsonConfig$CameraMapping;,
        Lcom/motorola/camera/JsonConfig$ZoomOverride;
    }
.end annotation


# static fields
.field public static mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

.field public static final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/JsonConfig;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static get3ATimeoutFrames(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "3a-timeout-frames"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAnalogGainThreshold(Lorg/json/JSONObject;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "analog-gain-threshold"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 5
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 4
    throw p1

    :catch_0
    move-object p0, v0

    .line 5
    :catch_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 6
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_0

    .line 7
    :try_start_2
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p0, p1

    :catch_2
    :cond_0
    return-object p0
.end method

.method public static getBarcodeDetectionBackoff(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "barcode-detection"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "backoff"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 4
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBarcodeDetectionEnabled(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "barcode-detection"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "enabled"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for enabled on barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBarcodeTimeBetweenScans(Lorg/json/JSONObject;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "barcode-detection"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "time-between-scans"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for time-between-scans on barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No config found for barcode-detection"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p2, :cond_8

    add-int/lit8 p2, p2, -0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    goto :goto_1

    .line 2
    :cond_1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    goto :goto_1

    .line 4
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    .line 5
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    goto :goto_1

    .line 6
    :cond_5
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    goto :goto_1

    :cond_6
    if-eqz p0, :cond_7

    .line 7
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    goto :goto_1

    .line 8
    :cond_7
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    .line 9
    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_8
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static getBufferCounts(Lorg/json/JSONObject;II)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    if-eqz p1, :cond_7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "buffer-config"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "zsl-depth-dual-buffer-config"

    goto :goto_0

    :cond_1
    const-string v0, "depth-dual-buffer-config"

    goto :goto_0

    :cond_2
    const-string v0, "dual-buffer-config"

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, " path:"

    if-eqz p0, :cond_6

    if-ne p2, v1, :cond_3

    const-string v1, "inputBufferCnt"

    goto :goto_1

    :cond_3
    const-string v1, "outputBufferCnt"

    .line 2
    :goto_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 6
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    .line 7
    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse buffer count array for mode:"

    .line 8
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$Mode$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/motorola/camera/JsonConfig$Path$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_6
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse buffer count for mode:"

    .line 11
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$Mode$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/motorola/camera/JsonConfig$Path$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public static getCameraMappings(Lorg/json/JSONObject;)[Lcom/motorola/camera/JsonConfig$CameraMapping;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "camera-mapping"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v0, "Error: parse Camera Mapping array"

    if-eqz p0, :cond_6

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/motorola/camera/JsonConfig$CameraMapping;

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "sensor-name"

    .line 6
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move v7, v2

    .line 9
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 10
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v7, "sensor-name-override"

    .line 11
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v9, v5, :cond_1

    .line 13
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move v9, v2

    .line 14
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 15
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object v5, v8

    :cond_2
    const-string v7, "physical-role"

    .line 16
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 17
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 18
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->values()[Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    .line 20
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v7, "virtual"

    .line 21
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 22
    new-instance v7, Lcom/motorola/camera/JsonConfig$CameraMapping;

    invoke-direct {v7, v6, v5, v8, v4}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Z)V

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 23
    :cond_4
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v1

    .line 24
    :cond_6
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCameraTypes(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "camera-type"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/motorola/camera/settings/CameraType;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Camera Type array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCctFlashColorTableString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, "cct-color"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDepthSysteMCalibrationDevices(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "depth-system-calibration"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "camera-type"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [Lcom/motorola/camera/settings/CameraType;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    aput-object v2, p0, v1

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    aput-object v2, p0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 11
    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse depth calibration devices failed"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisableAppZSLScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "disable-app-zsl-on-scenes"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable App Zsl On Scenes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisableHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "disable-hal-zsl-on-modes"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 7
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable Hal Zsl On Modes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDisplayCutoutConfigs(Lorg/json/JSONObject;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "display-cutout-configs"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get display cutout alphas, use default value"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0

    :array_0
    .array-data 4
        0x42dc0000    # 110.0f
        0x429a0000    # 77.0f
        0x3ecccccd
        0x3e4ccccd
    .end array-data
.end method

.method public static getDisplayCutoutsCoordinates(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "display-cutouts-coordinates"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDisplayScaleFactor(Lorg/json/JSONObject;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "display-scale-factor"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getEngineMfnrEstimate(Lorg/json/JSONObject;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "engine-mfnr-estimate"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getExtraFreeMemSizeVals(Lorg/json/JSONObject;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "extra-free-mem-size-mb"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse extra-free-mem-size-mb array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFastCaptureUITimeoutMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fast-capture-ui-timeout-detection"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "scene-modes"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "timeout-configs"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFlashAlpha(Lorg/json/JSONObject;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashAlpha: can\'t find software flash tag"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "alpha"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    return v0
.end method

.method public static getFlashAwbSpeed(Lorg/json/JSONObject;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "awb-convspeed"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFlashColor(Lorg/json/JSONObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashColor: can\'t find software flash tag"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "color"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getFlashDelay(Lorg/json/JSONObject;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v2, "getFlashAlpha: can\'t find software flash tag"

    .line 2
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "delay_time"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    return-wide v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static getFlashLuxRange(Lorg/json/JSONObject;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string/jumbo v1, "software_flash"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v1, "getFlashLuxRange: can\'t find software flash tag"

    .line 3
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "lux_range"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 9
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public static getFlashTorchEnable(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "software_flash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "JsonConfig"

    const-string v0, "getFlashTorchEnable: can\'t find software flash tag"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "flash_torch_enable"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getFlashTurnOffLux()F
    .locals 2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getFlashTurnOnLux()F
    .locals 2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getFocusTimeoutDurationFlash(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "focus-timeout-dur-flash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFullFrameConfig(Lorg/json/JSONObject;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "fullframe-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "skipPattern"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse full frame config skip pattern"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse full frame config"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGainOnlyQcfaDecision(Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "gain-only-qcfa-decision"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse analog gain threshold"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getGestureRemoveDelay(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "gesture-remove-delay"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getGrallocUsageFlags(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "gralloc-usage-flags"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse gralloc usage flags"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getJobCount(Lorg/json/JSONObject;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "max-concurrent-jobs"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    if-eqz p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "dual-depth-cam-mode"

    goto :goto_0

    :cond_1
    const-string p1, "dual-cam-mode"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "single-cam-mode-slip"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "single-special-override"

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "single-normal-override"

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "single-cam-mode"

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-object p1

    .line 9
    :cond_7
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse "

    .line 10
    invoke-static {v0, p1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: wrong job mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const/4 p0, 0x0

    .line 13
    throw p0

    .line 14
    :cond_a
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: parse max-concurrent-jobs"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonIndex: cameraType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " falling back to 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "JsonConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getLowMemKillSizeVals(Lorg/json/JSONObject;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "lowmem-kill-size-mb"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse lowmem-kill-size-mb array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxAllowedJobs(Ljava/lang/String;ILcom/motorola/camera/settings/CameraType;Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p3, :cond_0

    const-string p0, "HIGH_RESOLUTION"

    .line 1
    :cond_0
    sget-object p3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p3, p3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxConcurrentJobsBySceneMap:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p3, :cond_2

    :cond_1
    move-object p0, v0

    goto :goto_0

    .line 2
    :cond_2
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobCntMap:Ljava/util/Map;

    if-eqz p0, :cond_4

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    :cond_4
    return-object v0
.end method

.method public static getMaxConcurrentJobsByMode(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "max-concurrent-jobs-by-mode"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-mode"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "max-concurrent-jobs-by-scene"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene, expected integer for job count"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene, job count array is empty"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-jobs-by-scene"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public static getMaxJobsCnt(I)I
    .locals 4

    if-eqz p0, :cond_a

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 5
    :cond_1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 6
    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_3

    div-float/2addr v2, p0

    .line 9
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/util/List;

    if-eqz p0, :cond_6

    .line 10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 11
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_6

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/JsonConfig$ZoomOverride;

    .line 13
    iget v3, v1, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMin:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    iget v3, v1, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mMax:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_5

    move v3, v0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 14
    iget p0, v1, Lcom/motorola/camera/JsonConfig$ZoomOverride;->mJob:I

    return p0

    .line 15
    :cond_6
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 16
    :cond_7
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 17
    :cond_8
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    .line 18
    :cond_9
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt([I)I

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static getMaxJobsCnt([I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    if-eqz p0, :cond_0

    if-ltz v0, :cond_0

    .line 2
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static getMaxMultishotRates(Lorg/json/JSONObject;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "max-multishot-rate"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max multishot rate array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxMultishotRatesLvl1(Lorg/json/JSONObject;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    const-string v0, "max-multishot-rate-lvl-1"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "max-multishot-rate"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max multishot rate lvl1 array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxSlipMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "max-concurrent-slip"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse max-concurrent-slip"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getMcfSlowCaptureModes(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "mcf-slow-capture-modes"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 7
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Disable Zsl On Scenes Config array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMotoFlashTuningEnable(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    const-string v0, "motoflash-tuning-enable"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse MotoFlash Tuning Enable array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :cond_1
    return-object v0
.end method

.method public static getNonSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "non-single-session-remosaic-estimate"

    const-wide/16 v1, 0x1388

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOfflineReprocEnabled(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "offline-reproc-enabled"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse offline reproc enabled"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPanoDistortions(Lorg/json/JSONObject;)[D
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [D

    .line 1
    fill-array-data v1, :array_0

    new-array v2, v0, [D

    const-string v3, "panorama"

    .line 2
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "distortions"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-lt v3, v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    return-object v1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Warning: failed to get panorama distortion value, use default:0.0"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_4
    :goto_3
    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getPanoExpAdjustment(Lorg/json/JSONObject;)F
    .locals 4

    const-string v0, "Failed to get panorama exposure adjustment, use default: 0.0f"

    const-string v1, "JsonConfig"

    const-string v2, "panorama"

    .line 1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "pano_exp_adjustment"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getPanoNoiseReductionLevel(Lorg/json/JSONObject;)I
    .locals 4

    const-string v0, "Failed to get panorama noise reduction level, use default: 0"

    const-string v1, "JsonConfig"

    const-string v2, "panorama"

    .line 1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "pano_noise_reduction_level"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getPhysicalCameraCount(Lorg/json/JSONObject;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "physical-camera-count"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Error: physical camera count "

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v2}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    invoke-direct {p0, v2}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLens(Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "portrait-lens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPortraitLensBlurLevel(Lorg/json/JSONObject;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "portrait-lens"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-string p0, "blur-level"

    .line 3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get blur level, use default value"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    .line 9
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for blur-level on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLensCameraType(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "portrait-lens"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/motorola/camera/settings/CameraType;

    return-object p0

    :cond_0
    const-string p0, "camera-type"

    .line 3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/motorola/camera/settings/CameraType;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    :goto_1
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 9
    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for camera-type on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPortraitLensZoomValue(Lorg/json/JSONObject;)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "portrait-lens"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [F

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo p0, "zoom-value"

    .line 3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "Failed to get zoom ratio, use default value"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    .line 9
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "No valid config found for zoom-value on portrait-lens"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPreviewFps(ILcom/motorola/camera/settings/CameraType;)I
    .locals 1

    if-eqz p0, :cond_4

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    goto :goto_0

    .line 4
    :cond_3
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_4
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static getPreviewFps(Lorg/json/JSONObject;IZ)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string p1, "preview-rate-depth"

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Invalid previewLimiter:"

    .line 8
    invoke-static {p2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-static {p1}, Lcom/motorola/camera/JsonConfig$PreviewLimiter$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "preview-rate-limit-lvl-2"

    goto :goto_0

    :cond_2
    const-string p1, "preview-rate-limit-lvl-1"

    goto :goto_0

    :cond_3
    const-string p1, "preview-rate-limit-default"

    :goto_0
    const-string v1, "feature-limiter-config"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 11
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 14
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 15
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    if-nez p2, :cond_7

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No preview frame limit settings found for: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JsonConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 17
    :cond_7
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p2, "Error: parse failure for "

    .line 18
    invoke-static {p2, p1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_8
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string p1, "Error: unable to locate feature-limiter-config"

    invoke-direct {p0, p1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_9
    throw v0
.end method

.method public static getQcfaFastCaptureUITimeout(Lorg/json/JSONObject;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "qcfa-fast-capture-ui-timeout"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method public static getQuickCaptureVibrationConfigs(Lorg/json/JSONObject;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "qc-vibration-configs"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0xc8
        0x190
    .end array-data
.end method

.method public static getSceneDetectionPlatform(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "scene-detection"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "platform"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "none"

    :goto_0
    return-object p0
.end method

.method public static getSetRepeatingSendErrorDelay(Lorg/json/JSONObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string/jumbo v0, "set-repeating-send-error-delay"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v0, "single-session-remosaic-estimate"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse single session remosaic estimate array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse single session remosaic estimate"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSkinToneDetectionEnabled(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "skin-tone-detection"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "enabled"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/SkinToneDetection$SkinTone;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "skin-tone-detection"

    .line 2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "str"

    .line 10
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {v3}, Lcom/motorola/camera/SkinToneDetection$SkinTone;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/SkinToneDetection$SkinTone;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v0

    :goto_1
    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getSlideScanConfigs(Lorg/json/JSONObject;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x42960000    # 75.0f

    aput v2, v0, v1

    const-string/jumbo v2, "slide-scan-configs"

    .line 1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get slide scan config, use default value"

    .line 6
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method public static getSnapshotMinInterval(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v1

    return p0

    .line 5
    :cond_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v1

    return p0
.end method

.method public static getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v1, "snapshot-min-interval"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 14
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v5, v6, :cond_0

    .line 16
    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :catch_0
    :try_start_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval, expected integer for interval"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_0
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval, is empty"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v1, "Error: parse snapshot-min-interval"

    invoke-direct {p0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public static getSuperRemosaicDefaultValues()[F
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static getSuperRemosaicSettings(Lorg/json/JSONObject;)[F
    .locals 5

    :try_start_0
    const-string/jumbo v0, "super-remosaic"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getSuperRemosaicDefaultValues()[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v2

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "JsonConfig"

    const-string v0, "bad read of \'super-remosaic\' in config_devices."

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getSuperRemosaicDefaultValues()[F

    move-result-object p0

    return-object p0
.end method

.method public static getSuperSlowMotionLib(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "super-slow-motion-lib"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSuperSlowMotionLowLightThreshold(Lorg/json/JSONObject;)I
    .locals 2

    const-string/jumbo v0, "super-slow-motion-low-light-threshold"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getToHighResRgThreshold(Lorg/json/JSONObject;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "to-high-res-rg-threshold"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x40000000    # 2.0f

    :goto_1
    return p0
.end method

.method public static getToNormalResRgThreshold(Lorg/json/JSONObject;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "to-normal-res-rg-threshold"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x40c00000    # 6.0f

    :goto_1
    return p0
.end method

.method public static getTorchControlEnable(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string/jumbo v0, "torch-control-enable"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse torch control enable array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUltraResReminderRgThreshold(Lorg/json/JSONObject;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "remosaic-config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "ultra-res-reminder-rg-threshold"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x40c00000    # 6.0f

    :goto_1
    return p0
.end method

.method public static getUseAppShutterControl(Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string/jumbo v0, "use-app-shutter-control"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getUseCustomNoiseReduction(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "custom-noise-reduction"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Custom Noise Reduction array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUseHQPreview(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "hq-preview"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Use HQ-Preview array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUseHighResolutionOutput(Lorg/json/JSONObject;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "high-resolution-output"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse Use High Resolution Output array"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVideoPortraitConifgs(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/MalformedJsonException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "video-portrait-configs"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-wide v1, 0x4033e147a0000000L    # 19.8799991607666

    const-string v3, "bokeh_max_radius_factor"

    .line 4
    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    const-string v2, "intensity"

    .line 7
    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 8
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    const-string v5, "light_factor"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-virtual {p0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 11
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    const-string v9, "bg_light_factor"

    .line 13
    invoke-virtual {p0, v9, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 14
    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v10

    .line 15
    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    const-string v11, "max_light_threshold"

    .line 16
    invoke-virtual {p0, v11, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 17
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    const-wide/16 v12, 0x0

    const-string v7, "min_light_threshold"

    .line 19
    invoke-virtual {p0, v7, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 20
    invoke-static {v12, v13}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static getZoomBlendingManualX(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    :try_start_0
    const-string/jumbo v2, "zoom-blending-manual-ratio-x"

    .line 1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 4
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2

    :catch_1
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get zoom blending manual ratio, use default value"

    .line 6
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getZoomBlendingSegments()[F
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    return-object v0
.end method

.method public static getZoomBlendingSegments(Lorg/json/JSONObject;)[F
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    :try_start_0
    const-string/jumbo v2, "zoom-blending-segments"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    .line 5
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v2, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2

    :catch_1
    const-string p0, "JsonConfig"

    const-string v1, "Warning: failed to get zoom blending segments, use default value"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getZoomOverrideJobCount(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/motorola/camera/JsonConfig$ZoomOverride;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string v0, "max-concurrent-jobs"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "zoom-override-single-slip"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    move v5, v1

    .line 11
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 12
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    new-instance v7, Lcom/motorola/camera/JsonConfig$ZoomOverride;

    .line 15
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x1

    .line 16
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    double-to-float v9, v9

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lcom/motorola/camera/JsonConfig$ZoomOverride;-><init>(FFI)V

    .line 17
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 19
    :cond_4
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse zoom-override-single-slip"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_5
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Error: parse max-concurrent-jobs"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0x18

    if-eq p0, v0, :cond_e

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_d

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_c

    const/16 v0, 0x23

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_9

    const/16 v0, 0xa

    if-eq p0, v0, :cond_8

    const/16 v0, 0xc

    if-eq p0, v0, :cond_7

    const/16 v0, 0xd

    if-eq p0, v0, :cond_6

    const/16 v0, 0x12

    if-eq p0, v0, :cond_5

    const/16 v0, 0x13

    if-eq p0, v0, :cond_4

    const/16 v0, 0x27

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const-string p0, "MODE_OTHER"

    goto :goto_0

    :cond_0
    const-string p0, "MODE_JG_SUPER_NIGHT"

    goto :goto_0

    :cond_1
    const-string p0, "MODE_RAW_SUPER_NIGHT"

    goto :goto_0

    :cond_2
    const-string p0, "MODE_SLIDE_SCAN"

    goto :goto_0

    :cond_3
    const-string p0, "MODE_DOC_SCAN"

    goto :goto_0

    :cond_4
    const-string p0, "MODE_CINEMAGRAPH"

    goto :goto_0

    :cond_5
    const-string p0, "MODE_SINGLE_BOKEH"

    goto :goto_0

    :cond_6
    const-string p0, "MODE_VIDEO_TIMELAPSE"

    goto :goto_0

    :cond_7
    const-string p0, "MODE_SELECT_COLOR"

    goto :goto_0

    :cond_8
    const-string p0, "MODE_LIVE_STREAMING"

    goto :goto_0

    :cond_9
    const-string p0, "MODE_LENOVO_SELFIE"

    goto :goto_0

    :cond_a
    const-string p0, "MODE_AS_AUTO_SUPER_NIGHT"

    goto :goto_0

    :cond_b
    const-string p0, "MODE_PHOTO_SINGLE_SESSION_REMOSAIC"

    goto :goto_0

    :cond_c
    const-string p0, "MODE_SUPER_PORTRAIT"

    goto :goto_0

    :cond_d
    const-string p0, "MODE_PHOTO_HIGH_MP_REMOSAIC"

    goto :goto_0

    :cond_e
    const-string p0, "MODE_SUPER_NIGHT"

    goto :goto_0

    :cond_f
    const-string p0, "MODE_PHOTO_SEGMENTATION"

    goto :goto_0

    :cond_10
    const-string p0, "MODE_PHOTO_DEPTH"

    goto :goto_0

    :cond_11
    const-string p0, "MODE_PHOTO_PRO"

    goto :goto_0

    :cond_12
    const-string p0, "MODE_VIDEO_SLOW_MO"

    goto :goto_0

    :cond_13
    const-string p0, "MODE_PANORAMA"

    goto :goto_0

    :cond_14
    const-string p0, "MODE_VIDEO"

    goto :goto_0

    :cond_15
    const-string p0, "MODE_PHOTO"

    :goto_0
    return-object p0
.end method

.method public static parseJson(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 5
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->readDeviceConfig(Landroid/content/Context;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    .line 7
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "JsonConfig"

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseJson dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_3
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 10
    new-instance v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;

    invoke-direct {v1}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;-><init>()V

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    .line 11
    throw p0

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public static readDeviceConfig(Landroid/content/Context;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/util/MalformedJsonException;
        }
    .end annotation

    const-string/jumbo v0, "torch-control"

    .line 1
    new-instance v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;

    invoke-direct {v1}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;-><init>()V

    .line 2
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/motorola/camera/Util;->combineDeviceWithRAM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/motorola/camera/Util;->LOW_DEVICES:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config_devices_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "JsonConfig"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v3, v6}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v7

    .line 10
    iput-object v7, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigMaxJobCnt:[I

    const/4 v7, 0x2

    .line 11
    invoke-static {v3, v7}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v8

    .line 12
    iput-object v8, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigNormalOverrideJobCnt:[I

    const/4 v8, 0x3

    .line 13
    invoke-static {v3, v8}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v9

    .line 14
    iput-object v9, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigSpecialOverrideJobCnt:[I

    const/4 v9, 0x4

    .line 15
    invoke-static {v3, v9}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v10

    .line 16
    iput-object v10, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSlipConfigMaxJobCnt:[I

    const/4 v10, 0x5

    .line 17
    invoke-static {v3, v10}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v10

    .line 18
    iput-object v10, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigMaxJobCnt:[I

    const/4 v10, 0x6

    .line 19
    invoke-static {v3, v10}, Lcom/motorola/camera/JsonConfig;->getJobCount(Lorg/json/JSONObject;I)[I

    move-result-object v10

    .line 20
    iput-object v10, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualDepthConfigMaxJobCnt:[I

    .line 21
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getZoomOverrideJobCount(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/List;)V

    .line 22
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByMode(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 23
    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setMaxJobCountMap(Ljava/util/Map;)V

    .line 24
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMaxConcurrentJobsByScene(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 25
    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setMaxConcurrentJobsMap(Ljava/util/Map;)V

    .line 26
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMaxSlipMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 27
    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setMaxJobSlipMap(Ljava/util/Map;)V

    .line 28
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 29
    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V

    .line 30
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getUseAppShutterControl(Lorg/json/JSONObject;)Z

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V

    .line 31
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getEngineMfnrEstimate(Lorg/json/JSONObject;)J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V

    .line 32
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getPhysicalCameraCount(Lorg/json/JSONObject;)I

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;I)V

    .line 33
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->get3ATimeoutFrames(Lorg/json/JSONObject;)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->set3ATimeoutFrames(I)V

    .line 34
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getFocusTimeoutDurationFlash(Lorg/json/JSONObject;)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setFocusTimeoutDurationFlash(I)V

    .line 35
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSetRepeatingSendErrorDelay(Lorg/json/JSONObject;)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setSetRepeatingSendErrorDelay(I)V

    .line 36
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getGainOnlyQcfaDecision(Lorg/json/JSONObject;)Z

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V

    .line 37
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getAnalogGainThreshold(Lorg/json/JSONObject;)F

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V

    .line 38
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getToHighResRgThreshold(Lorg/json/JSONObject;)F

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V

    .line 39
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getToNormalResRgThreshold(Lorg/json/JSONObject;)F

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V

    .line 40
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getUltraResReminderRgThreshold(Lorg/json/JSONObject;)F

    move-result v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$1900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V

    .line 41
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)[J

    move-result-object v10

    .line 42
    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[J)V

    .line 43
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getNonSingleSessionRemosaicEstimate(Lorg/json/JSONObject;)J

    move-result-wide v10

    .line 44
    invoke-static {v1, v10, v11}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V

    .line 45
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getQcfaFastCaptureUITimeout(Lorg/json/JSONObject;)J

    move-result-wide v10

    .line 46
    invoke-static {v1, v10, v11}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V

    .line 47
    invoke-static {v3, v7, v6}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 48
    invoke-static {v1, v7, v6, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 49
    invoke-static {v3, v7, v7}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 50
    invoke-static {v1, v7, v7, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 51
    invoke-static {v3, v8, v6}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 52
    invoke-static {v1, v8, v6, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 53
    invoke-static {v3, v8, v7}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 54
    invoke-static {v1, v8, v7, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 55
    invoke-static {v3, v9, v6}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 56
    invoke-static {v1, v9, v6, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 57
    invoke-static {v3, v9, v7}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 58
    invoke-static {v1, v9, v7, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 59
    invoke-static {v3, v6, v6}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 60
    invoke-static {v1, v6, v6, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 61
    invoke-static {v3, v6, v7}, Lcom/motorola/camera/JsonConfig;->getBufferCounts(Lorg/json/JSONObject;II)[I

    move-result-object v10

    .line 62
    invoke-static {v1, v6, v7, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V

    .line 63
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getGrallocUsageFlags(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Ljava/lang/String;)V

    .line 64
    invoke-static {v3, v6, v5}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v10

    invoke-static {v1, v10}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 65
    invoke-static {v3, v7, v6}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v7

    .line 66
    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 67
    invoke-static {v3, v8, v6}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v7

    .line 68
    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 69
    invoke-static {v3, v9, v6}, Lcom/motorola/camera/JsonConfig;->getPreviewFps(Lorg/json/JSONObject;IZ)[I

    move-result-object v7

    .line 70
    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 71
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getFullFrameConfig(Lorg/json/JSONObject;)[I

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$2900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 72
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMaxMultishotRates(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V

    .line 73
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMaxMultishotRatesLvl1(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V

    .line 74
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getLowMemKillSizeVals(Lorg/json/JSONObject;)[I

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 75
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getExtraFreeMemSizeVals(Lorg/json/JSONObject;)[I

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V

    .line 76
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V

    .line 77
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingManualX(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V

    .line 78
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getUseHighResolutionOutput(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 79
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getUseHQPreview(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 80
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSceneDetectionPlatform(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/lang/String;)V

    .line 81
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionEnabled(Lorg/json/JSONObject;)Z

    move-result v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$3900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V

    const-string v7, "country-mapping"

    .line 82
    invoke-static {v7, v3}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    .line 83
    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4000(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V

    const-string/jumbo v7, "sku-mapping"

    .line 84
    invoke-static {v7, v3}, Lcom/motorola/camera/JsonConfig;->getSkinToneDetectionMapping(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4100(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/Map;)V

    .line 85
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMotoFlashTuningEnable(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4200(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 86
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getUseCustomNoiseReduction(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 87
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSuperRemosaicSettings(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4400(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V

    .line 88
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getOfflineReprocEnabled(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4500(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 89
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDepthSysteMCalibrationDevices(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4600(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Lcom/motorola/camera/settings/CameraType;)V

    .line 90
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDisplayScaleFactor(Lorg/json/JSONObject;)F

    move-result v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4700(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V

    .line 91
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getCameraTypes(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setCameraTypes([Lcom/motorola/camera/settings/CameraType;)V

    .line 92
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getCameraMappings(Lorg/json/JSONObject;)[Lcom/motorola/camera/JsonConfig$CameraMapping;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setCameraMappings([Lcom/motorola/camera/JsonConfig$CameraMapping;)V

    .line 93
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getMcfSlowCaptureModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setMcfSlowCaptureModes(Ljava/util/HashSet;)V

    .line 94
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDisableAppZSLScenes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setDisableAppZslScenes(Ljava/util/HashSet;)V

    .line 95
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDisableHalZSLModes(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setDisableHalZslModes(Ljava/util/HashSet;)V

    .line 96
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDisplayCutoutsCoordinates(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setDisplayCutoutsCoordinates(Lorg/json/JSONArray;)V

    .line 97
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getDisplayCutoutConfigs(Lorg/json/JSONObject;)[F

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setDisplayCutoutConfigs([F)V

    .line 98
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getQuickCaptureVibrationConfigs(Lorg/json/JSONObject;)[I

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setQuickCaptureVibrationConfigs([I)V

    const-string/jumbo v7, "torch-control-enable"

    .line 99
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getTorchControlEnable(Lorg/json/JSONObject;)[Z

    move-result-object v7

    invoke-static {v1, v7}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4800(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V

    .line 101
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->slurpJson(Lorg/json/JSONObject;)V

    .line 103
    :cond_2
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getBarcodeDetectionEnabled(Lorg/json/JSONObject;)[Z

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setBarcodeDetectionEnabled([Z)V

    .line 104
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getBarcodeTimeBetweenScans(Lorg/json/JSONObject;)[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setBarcodeTimeBetweenScans([I)V

    .line 105
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getBarcodeDetectionBackoff(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setBarcodeDetectionBackoff(Z)V

    .line 106
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getGestureRemoveDelay(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$4900(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V

    .line 107
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSuperSlowMotionLowLightThreshold(Lorg/json/JSONObject;)I

    move-result v0

    .line 108
    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setSuperSlowMotionLowLightThreshold(I)V

    .line 109
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSuperSlowMotionLib(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setSuperSlowMotionLib(Ljava/lang/String;)V

    .line 110
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getSlideScanConfigs(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setSlideScanConfigs([F)V

    .line 111
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getPortraitLens(Lorg/json/JSONObject;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setPortraitLens(Z)V

    .line 112
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getPortraitLensCameraType(Lorg/json/JSONObject;)[Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setPortraitLensCameraType([Lcom/motorola/camera/settings/CameraType;)V

    .line 113
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getPortraitLensZoomValue(Lorg/json/JSONObject;)[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setPortraitLensZoomValue([F)V

    .line 114
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getPortraitLensBlurLevel(Lorg/json/JSONObject;)[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setPortraitLensBlurLevel([I)V

    .line 115
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getFastCaptureUITimeoutMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setFastCaptureUITimeoutMap(Ljava/util/Map;)V

    .line 116
    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getVideoPortraitConifgs(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setVideoPortraitConfigs(Ljava/util/Map;)V

    goto :goto_0

    .line 117
    :cond_3
    new-instance p0, Landroid/util/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: get JSON object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v1, "Parse json file(config_devices) for %s failed"

    .line 118
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    throw p0

    .line 120
    :cond_4
    :goto_0
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iq_config_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/motorola/camera/JsonConfig;->getAssetConfig(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 123
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "Can\'t find Software config for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 124
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashColor(Lorg/json/JSONObject;)I

    move-result v2

    .line 126
    iput v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:I

    .line 127
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashAlpha(Lorg/json/JSONObject;)F

    move-result v2

    .line 128
    iput v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    .line 129
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashDelay(Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 130
    iput-wide v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashDelay:J

    .line 131
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashTorchEnable(Lorg/json/JSONObject;)Z

    move-result v2

    .line 132
    iput-boolean v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    .line 133
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashLuxRange(Lorg/json/JSONObject;)[F

    move-result-object v2

    .line 134
    iput-object v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    .line 135
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoDistortions(Lorg/json/JSONObject;)[D

    move-result-object v2

    .line 136
    iput-object v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoDistortions:[D

    .line 137
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoExpAdjustment(Lorg/json/JSONObject;)F

    move-result v2

    .line 138
    iput v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoExpAdj:F

    .line 139
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getPanoNoiseReductionLevel(Lorg/json/JSONObject;)I

    move-result v2

    .line 140
    iput v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoNoiseReductionLevel:I

    .line 141
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->slurpJson(Lorg/json/JSONObject;)V

    .line 142
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getCctFlashColorTableString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 143
    iput-object v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getFlashAwbSpeed(Lorg/json/JSONObject;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->setFlashAwbSpeed(F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array p0, v6, [Ljava/lang/Object;

    aput-object v0, p0, v5

    const-string v0, "Parse json file(iq_config) for %s failed"

    .line 145
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6
    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->access$300(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-result-object p0

    return-object p0
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 3
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 6
    throw p0

    :catch_0
    move-object v1, v0

    .line 7
    :catch_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_1
    return-object v0
.end method
