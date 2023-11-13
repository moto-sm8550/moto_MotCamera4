.class public abstract Lcom/motorola/camera/analytics/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# static fields
.field public static final CAMERA_USED:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SERVICEMODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SERVICEMODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/LogEvent;->SERVICEMODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "FRNTCAM"

    const-string v2, "false"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/LogEvent;->CAMERA_USED:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getCameraIdForAnalytics(ILjava/lang/String;ZI)I
    .locals 7

    .line 6
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 7
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxBayerCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isAuxMasterCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v2, :cond_10

    .line 8
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_VIDEO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Z

    move-result p0

    const/4 p2, 0x6

    if-eqz p0, :cond_2

    return p2

    .line 9
    :cond_2
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_WIDE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x7

    return p0

    .line 10
    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_TELE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    .line 11
    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_ACTION_MACRO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x9

    return p0

    .line 12
    :cond_5
    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_LOGICAL_TYPE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v3, 0x0

    if-nez p0, :cond_6

    move-object v4, v3

    goto :goto_1

    .line 13
    :cond_6
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    :goto_1
    check-cast v4, Ljava/lang/Byte;

    const/16 v5, 0x22

    const/16 v6, 0x10

    if-eq p3, v0, :cond_7

    if-eq p3, p2, :cond_9

    if-eq p3, v6, :cond_9

    if-ne p3, v5, :cond_8

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p3

    if-eq p3, p2, :cond_9

    if-eq p3, v6, :cond_9

    if-ne p3, v5, :cond_8

    goto :goto_2

    :cond_8
    move p2, v1

    goto :goto_3

    :cond_9
    :goto_2
    move p2, v2

    :goto_3
    if-eqz v4, :cond_a

    .line 16
    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_DEPTH_TYPES:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_4

    .line 17
    :cond_a
    sget-object p3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_LOGICAL_DEPTH_SCENE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_b

    move p3, v2

    goto :goto_4

    :cond_b
    move p3, v1

    :goto_4
    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move v1, v2

    :cond_c
    if-eqz v1, :cond_d

    const/16 p0, 0xa

    return p0

    :cond_d
    if-nez p0, :cond_e

    goto :goto_5

    .line 18
    :cond_e
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    :goto_5
    check-cast v3, Ljava/lang/Byte;

    .line 20
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0xb

    return p0

    :cond_f
    return v2

    :cond_10
    if-nez p0, :cond_12

    if-eqz p2, :cond_11

    const/4 p0, 0x5

    return p0

    :cond_11
    return v1

    :cond_12
    return v0

    :cond_13
    :goto_6
    const/4 p0, 0x2

    return p0
.end method

.method public static getCameraIdForAnalytics(ZI)I
    .locals 2

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

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p0, p1}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(ILjava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public static getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_b

    const/4 p2, 0x6

    if-ne p0, p2, :cond_0

    const-string p0, "SS_DEPTH"

    return-object p0

    :cond_0
    const/16 p2, 0x10

    if-ne p0, p2, :cond_1

    const-string p0, "SS_SEGMENTATION"

    return-object p0

    :cond_1
    const/16 p2, 0x12

    if-ne p0, p2, :cond_2

    const-string p0, "SS_SINGLE_BOKEH"

    return-object p0

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "SS_PRO"

    return-object p0

    :cond_3
    const/16 p2, 0xc

    if-ne p0, p2, :cond_4

    const-string p0, "SS_SPOT_COLOR"

    return-object p0

    :cond_4
    const/16 p2, 0x18

    if-eq p0, p2, :cond_a

    const/16 p2, 0x1f

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p2, 0x1d

    if-eq p0, p2, :cond_9

    const/16 p2, 0x23

    if-ne p0, p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x27

    if-ne p0, p2, :cond_7

    const-string p0, "DOC"

    return-object p0

    :cond_7
    const/16 p2, 0x28

    if-ne p0, p2, :cond_8

    const-string p0, "SLIDE"

    return-object p0

    :cond_8
    const/16 p2, 0x29

    if-ne p0, p2, :cond_14

    const-string p0, "PHOTO_DUAL"

    return-object p0

    :cond_9
    :goto_0
    const-string p0, "SS_HIGH_MP"

    return-object p0

    :cond_a
    :goto_1
    const-string p0, "SS_NIGHT_VISION"

    return-object p0

    .line 4
    :cond_b
    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_c

    .line 5
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "MS_PRO"

    return-object p0

    .line 6
    :cond_c
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne p1, v0, :cond_13

    const/4 p2, 0x3

    if-ne p0, p2, :cond_d

    const-string p0, "CAMCORDER_SLOWMO"

    return-object p0

    :cond_d
    const/16 p2, 0xd

    if-ne p0, p2, :cond_e

    const-string p0, "CAMCORDER_TIMELAPSE"

    return-object p0

    :cond_e
    const/16 p2, 0x22

    if-ne p0, p2, :cond_f

    const-string p0, "CAMCORDER_DEPTH"

    return-object p0

    :cond_f
    const/16 p2, 0x24

    if-ne p0, p2, :cond_10

    const-string p0, "CAMCORDER_SELECT_COLOR"

    return-object p0

    :cond_10
    const/16 p2, 0x25

    if-ne p0, p2, :cond_11

    const-string p0, "VIDEO_FACE"

    return-object p0

    :cond_11
    const/16 p2, 0x2e

    if-ne p0, p2, :cond_12

    const-string p0, "VIDEO_PORTRAIT"

    return-object p0

    :cond_12
    const/16 p2, 0x26

    if-ne p0, p2, :cond_14

    const-string p0, "VIDEO_DUAL"

    return-object p0

    .line 7
    :cond_13
    sget-object p0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne p1, p0, :cond_14

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "SS_GROUP_SELFIE"

    return-object p0

    .line 8
    :cond_14
    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/analytics/LogEvent$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "SINGLESHOT"

    return-object p0

    :pswitch_0
    const-string p0, "CINEMAGRAPH"

    return-object p0

    :pswitch_1
    const-string p0, "UHD"

    return-object p0

    :pswitch_2
    const-string p0, "SLOW_MOTION"

    return-object p0

    :pswitch_3
    const-string p0, "CAMCORDER"

    return-object p0

    :pswitch_4
    const-string p0, "PANORAMA"

    return-object p0

    :pswitch_5
    const-string p0, "MULTISHOT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract getEventType$enumunboxing$()I
.end method

.method public abstract getEventVersion()Ljava/lang/String;
.end method

.method public getSessionSeqId(Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)J
    .locals 0

    const-string p0, "SEQID"

    invoke-virtual {p1, p0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/LogEvent;->getSessionSeqId(Lcom/motorola/camera/analytics/SynchronizedBundle;Ljava/lang/Object;)J

    move-result-wide v1

    const-string v3, "SEQID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "APKVER"

    const v2, 0x55d5e17

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0, p2, v0, p3}, Lcom/motorola/camera/analytics/LogEvent;->addData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventType$enumunboxing$()I

    move-result p2

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/LogEvent;->getEventVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p3, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;

    invoke-direct {p3, p2, p0, v0}, Lcom/motorola/camera/analytics/AnalyticsService$EventRunnable;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-object p0, p1, Lcom/motorola/camera/analytics/AnalyticsService;->mServiceHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
