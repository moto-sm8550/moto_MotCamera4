.class public final Lcom/motorola/camera/IqConfigManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "IqConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/IqConfigManager$CaliValidation;,
        Lcom/motorola/camera/IqConfigManager$TimeEstimates;,
        Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;,
        Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;,
        Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;,
        Lcom/motorola/camera/IqConfigManager$ZslSetting;,
        Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;,
        Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;,
        Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mCameraTypeSets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

.field public static sInstance:Lcom/motorola/camera/IqConfigManager;


# instance fields
.field public final mAdvancedSceneOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field public final mAutoSlowCapture:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCaliValidations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$CaliValidation;",
            ">;"
        }
    .end annotation
.end field

.field public final mCameraTypeSceneOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/motorola/camera/settings/CameraType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final mEnvironmentInfoMutex:Ljava/lang/Object;

.field public final mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHasSceneOverrides:Z

.field public mLastExposureTime:F

.field public mLastLux:F

.field public mLastLuxIdx:F

.field public mMfnrShutterDelayEnable:Z

.field public final mMtkMfnrSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mQcMfnrSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSceneOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStaticExpScheduleHints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeEstimates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$TimeEstimates;",
            ">;"
        }
    .end annotation
.end field

.field public final mZslSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$ZslSetting;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    .line 2
    new-instance v0, Lcom/motorola/camera/IqConfigManager$1;

    invoke-direct {v0}, Lcom/motorola/camera/IqConfigManager$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    .line 15
    new-instance v0, Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-direct {v0}, Lcom/motorola/camera/LowLightExposureTableTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 17
    new-instance v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/IqConfigManager;)V

    iput-object v0, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 6
    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/Mcf$SceneMode;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;>;)",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "normal_overrides"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "hdr_auto_on_nv_auto_on"

    .line 8
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 10
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_1

    :cond_0
    const-string p0, "hdr_auto_on"

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 12
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 15
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "hdr_auto_off"

    .line 16
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 17
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_1

    :cond_4
    const-string p0, "hdr_on"

    .line 18
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 19
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 21
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 22
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_6
    if-eqz v1, :cond_7

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_7
    const-string p0, "hdr_off"

    .line 23
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 24
    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :goto_1
    if-nez p0, :cond_8

    const-string v0, "hdr_default"

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    :cond_8
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/IqConfigManager;
    .locals 6

    const-class v0, Lcom/motorola/camera/IqConfigManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lcom/motorola/camera/IqConfigManager;

    invoke-direct {v1}, Lcom/motorola/camera/IqConfigManager;-><init>()V

    sput-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    sget-object v5, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    const-string v2, "default_cam_type"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    sget-object v1, Lcom/motorola/camera/IqConfigManager;->sInstance:Lcom/motorola/camera/IqConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const-string v6, "flash"

    const/4 v7, 0x6

    const-string/jumbo v9, "super_portrait"

    const-string/jumbo v10, "super_night"

    const-string v11, "cutout"

    const-string/jumbo v12, "single_bokeh_with_nv"

    const-string/jumbo v13, "ultra_resolution"

    const-string v14, "auto_ultra_resolution"

    const-string/jumbo v15, "single_bokeh"

    const-string v8, "bokeh"

    const-string v2, "auto_super_night"

    if-nez v1, :cond_14

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "default_cam_type"

    if-nez v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object/from16 v1, v16

    .line 5
    :goto_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v3

    const-string v5, "default_mode"

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 9
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 11
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 12
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    .line 13
    :cond_4
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 16
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x12

    .line 17
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 22
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 24
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    .line 25
    :cond_6
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 26
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    .line 27
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 30
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x23

    .line 31
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v2, :cond_9

    .line 34
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "ultra_resolution_hw_remosaic"

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 37
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    .line 38
    :cond_9
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 39
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x10

    .line 40
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    .line 42
    :cond_b
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 43
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto/16 :goto_1

    .line 44
    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 45
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 46
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 47
    iget-object v1, v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_11

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    .line 49
    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 50
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 51
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 52
    iget-object v1, v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_11

    .line 53
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    .line 54
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "filter_effect"

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 58
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto :goto_1

    .line 59
    :cond_f
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 60
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 61
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    goto :goto_1

    :cond_10
    const/4 v8, 0x0

    :cond_11
    :goto_1
    if-nez v8, :cond_12

    .line 62
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_12

    .line 63
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 64
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 65
    invoke-static {v0, v1}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;Ljava/util/HashMap;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v8

    :cond_12
    if-nez v8, :cond_13

    goto :goto_2

    .line 66
    :cond_13
    iget-object v0, v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_2
    return-object v0

    .line 67
    :cond_14
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z

    if-nez v1, :cond_15

    return-object v0

    .line 68
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 69
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v0

    .line 70
    :cond_16
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    :cond_17
    if-eqz p1, :cond_18

    .line 71
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    .line 72
    :cond_18
    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 73
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 74
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    :cond_19
    const/16 v1, 0x12

    .line 75
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 76
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 77
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 78
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 79
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 80
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 81
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    .line 82
    :cond_1a
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    .line 83
    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v1

    const-string v2, "IqConfigManager"

    if-eqz v1, :cond_1e

    .line 84
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 85
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 86
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 87
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 88
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    :cond_1c
    if-nez v3, :cond_1d

    const-string v1, "no valid auto ultra resolution scene override"

    .line 89
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 90
    :cond_1d
    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    :cond_1e
    const/16 v1, 0x23

    .line 91
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 92
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 93
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 95
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 96
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/HashMap;

    :cond_1f
    if-nez v3, :cond_20

    const-string v1, "no valid ultra resolution scene override"

    .line 97
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 98
    :cond_20
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    :cond_21
    const/16 v1, 0x10

    .line 99
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 100
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return-object v0

    .line 101
    :cond_22
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    goto/16 :goto_3

    .line 102
    :cond_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 103
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 104
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v8, :cond_25

    .line 105
    iget-object v1, v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_25

    .line 106
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v1

    if-nez v1, :cond_25

    return-object v0

    :cond_24
    const/4 v8, 0x0

    :cond_25
    if-nez v8, :cond_26

    .line 107
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    goto :goto_3

    :cond_26
    move-object v1, v8

    goto :goto_3

    .line 108
    :cond_27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 109
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 110
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    if-eqz v8, :cond_29

    .line 111
    iget-object v1, v8, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_SUPER_NIGHT_DEDICATED:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_29

    .line 112
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDedicatedRawNvCapable()Z

    move-result v1

    if-nez v1, :cond_29

    return-object v0

    :cond_28
    const/4 v8, 0x0

    :cond_29
    if-nez v8, :cond_26

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    goto :goto_3

    .line 114
    :cond_2a
    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/IqConfigManager;->getFinalSettingAccordingToCamTypeHDR(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_2b

    return-object v0

    .line 115
    :cond_2b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 116
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->frontCameraSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0

    .line 117
    :cond_2c
    iget-object v0, v1, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;->sceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object v0
.end method

.method public static getLuxStdForCaptureResult(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Float;
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    .line 7
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 11
    sget-object v2, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->getLuxStdForIdx(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 13
    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static getMtkMfnrEstimate()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I
    .locals 1

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_NUMBER_OF_FRAMES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "flash"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    :goto_0
    return-object p0
.end method

.method public static getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;",
            ">(",
            "Ljava/util/List<",
            "TT;>;F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    div-float/2addr v3, v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->getManualUwMappingUIZoomX(F)F

    move-result v3

    .line 8
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    .line 9
    invoke-virtual {v1, v3, p1}, Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;->fitsParameters(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastLux:F

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p0

    return-object p0
.end method

.method public static isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z
    .locals 3

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
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->scenes:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getMtkMfnrEstimate()I

    move-result p0

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrSettings(Z)Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 12
    iget-byte p1, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    iget-boolean p0, p0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->mfnrBurstModeEnable:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    .line 13
    :goto_0
    iget p1, v0, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;->timeThreshold:I

    if-lt p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_FPS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureRequestKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mfnrLowLightExposureHint()F
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/IqConfigManager;->mEnvironmentInfoMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v2}, Lcom/motorola/camera/LowLightExposureTableTracker;->supportsCharacteristicsExposureHints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mExposureTableTracker:Lcom/motorola/camera/LowLightExposureTableTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/LowLightExposureTableTracker;->getExpectedExposureTime()F

    move-result v0

    monitor-exit v1

    return v0

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    .line 6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    invoke-static {v2, v3}, Lcom/motorola/camera/IqConfigManager;->getSettingFromList(Ljava/util/List;F)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    if-eqz v2, :cond_1

    .line 8
    iget-boolean v3, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->codeOverride:Z

    if-nez v3, :cond_1

    .line 9
    iget v0, v2, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;->exposureTime:F

    monitor-exit v1

    return v0

    .line 10
    :cond_1
    iget v0, v0, Lcom/motorola/camera/IqConfigManager;->mLastExposureTime:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static mfnrProcessTimeEstimates(IZ)I
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->mfnrLowLightExposureHint()F

    move-result v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v2, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->maxPreviewExp:I

    .line 4
    iget v3, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crSlope:F

    float-to-double v3, v3

    .line 5
    iget v5, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->crIntercept:F

    .line 6
    iget v1, v1, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->defaultCRTime:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    const-wide v3, 0x3ff3851eb851eb85L    # 1.22

    const/high16 v5, 0x430d0000    # 141.0f

    const/16 v1, 0x12c

    :goto_0
    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    float-to-double v1, v0

    mul-double/2addr v1, v3

    float-to-double v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    :cond_1
    add-int/lit8 v2, p0, -0x1

    float-to-int v0, v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates;->timeEstimateCoeff:Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;

    iget v1, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessStaticTime:I

    .line 9
    iget v0, v0, Lcom/motorola/camera/IqConfigManager$TimeEstimates$TimeEstimateCoeff;->mfnrProcessPerFrameTime:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xfa

    const/16 v0, 0x6e

    :goto_1
    mul-int/2addr p0, v0

    add-int/2addr p0, v1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v2, p0

    :goto_2
    return v2
.end method

.method public static mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    const-string v0, "default"

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    .line 5
    iget-byte v1, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->numberOfFrames:B

    if-ne p0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_3

    .line 6
    :cond_4
    iget p0, v0, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;->shuttleThrottleTime:I

    int-to-long p0, p0

    :goto_3
    return-wide p0
.end method

.method public static slurpJson(Lorg/json/JSONObject;)V
    .locals 15

    const-string v0, "mfnr_shutter_delay_enable"

    const-string v1, "scene_selection_overrides"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "IqConfigManager"

    if-eqz v2, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    sget-object v6, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 9
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 11
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 12
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 14
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_0
    iget-object v6, v2, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSceneOverrides:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    iget-object v6, v2, Lcom/motorola/camera/IqConfigManager;->mSceneOverrides:Ljava/util/HashMap;

    .line 17
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    .line 18
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v2, Lcom/motorola/camera/IqConfigManager;->mHasSceneOverrides:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Error parsing array of scene overrides: "

    .line 20
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    const-string v1, "scene_selection_advanced_overrides"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 22
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 25
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 27
    sget-object v6, Lcom/motorola/camera/IqConfigManager;->mCameraTypeSets:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 29
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 31
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 32
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 33
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 34
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 35
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 36
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 37
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 38
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 39
    invoke-static {v14}, Lcom/motorola/camera/IqConfigManager;->slurpScenes(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 40
    :cond_5
    invoke-virtual {v7, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 41
    :cond_6
    iget-object v6, v2, Lcom/motorola/camera/IqConfigManager;->mAdvancedSceneOverrides:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "No scene advanced overrides: "

    .line 42
    invoke-static {v3, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    const-string v1, "qc_mfnr_settings"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 44
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 47
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "exposure_schedule_lowlight"

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 50
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mStaticExpScheduleHints:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 52
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 53
    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 54
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 55
    new-instance v11, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;

    invoke-direct {v11, v10}, Lcom/motorola/camera/IqConfigManager$ExpScheduleHint;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 56
    :cond_8
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 57
    :cond_9
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    goto :goto_6

    .line 59
    :cond_a
    iget-object v7, v2, Lcom/motorola/camera/IqConfigManager;->mQcMfnrSettings:Ljava/util/HashMap;

    .line 60
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 61
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    .line 62
    :goto_8
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 63
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 64
    new-instance v12, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;

    invoke-direct {v12, v11}, Lcom/motorola/camera/IqConfigManager$QcMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 65
    :cond_b
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v1, "Error parsing MFNR Setting array: "

    .line 66
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    const-string v0, "mtk_mfnr_settings"

    .line 67
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 68
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 72
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 73
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 74
    new-instance v7, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    invoke-direct {v7, v6}, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 75
    :cond_d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    const-string v1, "Error parsing MTK MFNR Setting array: "

    .line 76
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_a
    const-string/jumbo v0, "zsl_settings"

    .line 77
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 78
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 79
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 83
    iget-object v6, v1, Lcom/motorola/camera/IqConfigManager;->mZslSettings:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 85
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 86
    :goto_c
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_f

    .line 87
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 88
    new-instance v11, Lcom/motorola/camera/IqConfigManager$ZslSetting;

    invoke-direct {v11, v10}, Lcom/motorola/camera/IqConfigManager$ZslSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 89
    :cond_f
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    const-string v1, "Error parsing ZSL Setting array: "

    .line 90
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    const-string v0, "auto_slow_capture"

    .line 91
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 92
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 95
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    iget-object v6, v1, Lcom/motorola/camera/IqConfigManager;->mAutoSlowCapture:Ljava/util/HashMap;

    sget-object v7, Lcom/motorola/camera/IqConfigManager;->CAMERA_FACING_MAPPING:Lcom/motorola/camera/IqConfigManager$1;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 99
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    .line 100
    :goto_e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_11

    .line 101
    new-instance v10, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/motorola/camera/IqConfigManager$AutoSlowCapture;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 102
    :cond_11
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    const-string v1, "Error parsing auto slow capture array: "

    .line 103
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    const-string/jumbo v0, "time_estimates"

    .line 104
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Error parsing Time Estimates Setting array: "

    if-eqz v1, :cond_14

    .line 105
    :try_start_6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 107
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mTimeEstimates:Ljava/util/ArrayList;

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    .line 109
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 110
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 111
    new-instance v8, Lcom/motorola/camera/IqConfigManager$TimeEstimates;

    invoke-direct {v8, v7}, Lcom/motorola/camera/IqConfigManager$TimeEstimates;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 112
    :cond_13
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    .line 113
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_10
    const-string v0, "cali_validation"

    .line 114
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 115
    :try_start_7
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    .line 116
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 117
    iget-object v1, v1, Lcom/motorola/camera/IqConfigManager;->mCaliValidations:Ljava/util/ArrayList;

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :goto_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_15

    .line 120
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 121
    new-instance v7, Lcom/motorola/camera/IqConfigManager$CaliValidation;

    invoke-direct {v7, v6}, Lcom/motorola/camera/IqConfigManager$CaliValidation;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 122
    :cond_15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    .line 123
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_16
    :goto_12
    sget-object v0, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;->Companion:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore$Companion;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore$Companion;->createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    return-void
.end method

.method public static slurpScenes(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;

    invoke-direct {v3, v2}, Lcom/motorola/camera/IqConfigManager$SceneOverrideSetting;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/IqConfigManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    .line 8
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p1, p0, Lcom/motorola/camera/IqConfigManager;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method
