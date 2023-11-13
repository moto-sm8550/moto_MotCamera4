.class public final Lcom/motorola/camera/LowLightExposureTableTracker;
.super Ljava/lang/Object;
.source "LowLightExposureTableTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/LowLightExposureTableTracker$LLSLuxTableEntry;
    }
.end annotation


# instance fields
.field public mCurrentLuxIdx:F

.field public mCurrentMasterSensorName:Ljava/lang/String;

.field public mIsOnLLSTableRegion:Z

.field public final mLLSTableSupportPerCameraId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mLastExposureTime:F

.field public final mPerCameraExposureHints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSensorNameToCameraIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mPerCameraExposureHints:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mSensorNameToCameraIdMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLLSTableSupportPerCameraId:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentLuxIdx:F

    .line 7
    iput v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLastExposureTime:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mIsOnLLSTableRegion:Z

    return-void
.end method


# virtual methods
.method public final getExpectedExposureTime()F
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mPerCameraExposureHints:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mPerCameraExposureHints:Ljava/util/HashMap;

    .line 4
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_TABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    new-instance v4, Lcom/motorola/camera/LowLightExposureTableTracker$LLSLuxTableEntry;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/LowLightExposureTableTracker$LLSLuxTableEntry;-><init>(FI)V

    .line 10
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-wide v6, v4, Lcom/motorola/camera/LowLightExposureTableTracker$LLSLuxTableEntry;->exposureTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 11
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mPerCameraExposureHints:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_6

    .line 14
    iget-boolean v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mIsOnLLSTableRegion:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 17
    iget v3, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentLuxIdx:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    long-to-float p0, v0

    goto :goto_4

    .line 20
    :cond_6
    :goto_3
    iget p0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLastExposureTime:F

    :goto_4
    return p0
.end method

.method public final getSATCurrentMasterCameraId()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mSensorNameToCameraIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mSensorNameToCameraIdMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mSensorNameToCameraIdMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4
    return-object v0
.end method

.method public final supportsCharacteristicsExposureHints()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLLSTableSupportPerCameraId:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLLSTableSupportPerCameraId:Ljava/util/HashMap;

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_TABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 5
    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->isKeySupported(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_HYSTERESIS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 6
    invoke-virtual {v4, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->isKeySupported(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLLSTableSupportPerCameraId:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    return v2
.end method

.method public final updateEnvironmentInfo(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentLuxIdx:F

    .line 4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mLastExposureTime:F

    .line 7
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentMasterSensorName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/LowLightExposureTableTracker;->supportsCharacteristicsExposureHints()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getSATCurrentMasterCameraId()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_LLS_LUX_HYSTERESIS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 13
    iget v2, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mCurrentLuxIdx:F

    aget v3, p1, v0

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2

    aget p1, p1, v1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mIsOnLLSTableRegion:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/LowLightExposureTableTracker;->mIsOnLLSTableRegion:Z

    :goto_1
    return-void
.end method
