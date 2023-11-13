.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;
.super Ljava/lang/Object;
.source "CameraModeSwitch.java"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McfStartConfigHolderImpl"
.end annotation


# instance fields
.field public final mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

.field public final mAllCameraIds:[Ljava/lang/String;

.field public final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public final mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

.field public final mCameraId:Ljava/lang/String;

.field public final mLogicalCameraInfo:Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;

.field public final mMcfSensorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 9
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    .line 12
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 13
    aget-object v2, v3, v2

    goto :goto_1

    .line 14
    :cond_2
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    .line 15
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 18
    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mMcfSensorName:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isLogicalCamera(Ljava/lang/String;)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 21
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    move-object v2, p1

    goto :goto_4

    :cond_6
    move-object v1, v2

    goto :goto_4

    :cond_7
    move-object v0, v2

    move-object v1, v0

    .line 22
    :goto_4
    new-instance p1, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;

    invoke-direct {p1, v0, v2, v1}, Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mLogicalCameraInfo:Lcom/motorola/camera/mcf/McfParameters$McfLogicalCamera;

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 24
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    new-array v0, p1, [Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_8

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 28
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method
