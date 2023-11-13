.class public final Lcom/motorola/camera/SensorTime;
.super Ljava/lang/Object;
.source "SensorTime.java"


# static fields
.field public static sTimebaseDelta:J


# direct methods
.method public static convertTime(J)J
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SensorTime"

    const-string/jumbo v2, "timestamp source characteristic value is null"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/32 v2, 0xf4240

    if-ne v1, v0, :cond_1

    .line 5
    sget-wide v0, Lcom/motorola/camera/SensorTime;->sTimebaseDelta:J

    add-long/2addr p0, v0

    mul-long/2addr p0, v2

    return-wide p0

    :cond_1
    mul-long/2addr p0, v2

    return-wide p0
.end method
