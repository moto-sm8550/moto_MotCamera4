.class public final Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "McfMlSettingManager.java"

# interfaces
.implements Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;
    }
.end annotation


# instance fields
.field public mIsCameraInit:Z

.field public mIsCliDisplay:Z

.field public mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

.field public final mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

.field public final mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    invoke-direct {v0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    .line 4
    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;)V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    return-void
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_CAMERA_OPEN:Ljava/util/List;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_TEARDOWN:Ljava/util/List;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final handleGestureAutoCapture()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v2, "McfMlSettingManager"

    if-nez v1, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 6
    invoke-static {v1, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "Mcf is not GestureMV1 capable"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    goto :goto_3

    .line 12
    :cond_5
    :goto_2
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 13
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "GESTURE_AUTO_CAPTURE does not have any resources"

    .line 15
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-array v2, v5, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 16
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v3, v2, v4

    .line 17
    iget-boolean v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 18
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_7

    .line 19
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-static {v1, v5, v3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 21
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    :goto_3
    return-void
.end method

.method public final handleSceneDetection()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v3, "McfMlSettingManager"

    if-nez v2, :cond_0

    const-string p0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    return-void

    .line 8
    :cond_2
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 11
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v4, :cond_6

    .line 12
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v4, :cond_4

    .line 13
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-static {v0, v6, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 19
    :cond_4
    invoke-static {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "SCENE_DETECTION does not have any resources"

    .line 21
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-array v2, v6, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v0, v2, v5

    .line 23
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_2

    .line 24
    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :goto_2
    return-void
.end method

.method public final handleSmileDetection()V
    .locals 8

    .line 1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v1, :cond_0

    const-string p0, "McfMlSettingManager"

    const-string v0, "mMcfMlStateMachine is null"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 7
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 8
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMlModelSmileDetectionEnabledOnMcfConfig(Z)Z

    move-result v4

    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 9
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    .line 10
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    .line 12
    invoke-static {v1, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_4

    .line 13
    array-length v4, v1

    if-ge v4, v2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    aget v1, v1, v3

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_3

    :cond_4
    :goto_1
    const-string v1, "SettingsHelper"

    const-string v4, "Smile DSP modes is null or empty"

    .line 15
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_6

    .line 16
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION_QUANT:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    goto :goto_4

    .line 17
    :cond_6
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 18
    :goto_4
    iget-boolean v4, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 19
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v4

    if-nez v4, :cond_a

    .line 20
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I

    move-result v4

    .line 21
    new-instance v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v5}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 22
    iput-object v1, v5, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v6, 0x7f1100d9

    .line 23
    iput v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    .line 24
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v7, 0x3

    if-eq v6, v7, :cond_9

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    const-string v5, "Error - modelState: "

    .line 25
    invoke-static {v5}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 26
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->stringValueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in checkModelStateUpdateForMotSmileDetect was not associated to any of the available switch cases."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ModelUpdateDialogHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    const v4, 0x7f11011c

    .line 27
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 28
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 29
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 31
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const v4, 0x7f110135

    .line 32
    sget-object v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

    .line 33
    iput-object v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 34
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const v4, 0x7f110115

    .line 35
    sget-object v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda1;

    .line 36
    iput-object v6, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 37
    iput v4, v5, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 38
    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 39
    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v6, v5}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_5
    move v4, v2

    goto :goto_7

    .line 41
    :cond_9
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->MOT_SMILE_DETECT_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_a
    :goto_6
    move v4, v3

    :goto_7
    if-nez v4, :cond_c

    .line 42
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-array v2, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v2, v3

    .line 45
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_8

    .line 46
    :cond_b
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final onAllModelsLoaded()V
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfiePreviewEnabled(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 5
    invoke-static {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-array v5, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 7
    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_PREVIEW_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_PREVIEW_MODEL;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v3, v5, v4

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v3, v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 10
    :cond_1
    :goto_0
    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v3, :cond_2

    const-string v2, "McfMlSettingManager"

    const-string v3, "mMcfMlStateMachine is null"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 12
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCudPreviewSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 16
    :goto_1
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 17
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v3, Lcom/motorola/camera/PreviewSize$AspectRatio;

    .line 19
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_FULL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_FULL_MODEL;

    .line 20
    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v3, v6, :cond_4

    .line 21
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_STANDARD_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_STANDARD_MODEL;

    goto :goto_2

    .line 22
    :cond_4
    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    if-ne v3, v6, :cond_5

    .line 23
    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD_PREVIEW_WIDESCREEN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD_PREVIEW_WIDESCREEN_MODEL;

    .line 24
    :cond_5
    :goto_2
    iget-object v3, v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 25
    invoke-static {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    new-array v6, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 27
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v3, v6, v4

    .line 28
    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v3, v2, v6}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_3

    .line 29
    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 30
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleGestureAutoCapture()V

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSceneDetection()V

    .line 32
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->handleSmileDetection()V

    .line 33
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 34
    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    new-array v3, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 36
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v2, v3, v4

    .line 37
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2, v5, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    .line 38
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 39
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 40
    iget-boolean v6, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v6, :cond_9

    .line 41
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 42
    invoke-static {v3, v0, v6}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_9
    if-eqz v2, :cond_a

    .line 43
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 44
    :cond_a
    invoke-static {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v2, "McfMlSettingManager"

    const-string v3, "DOC_SCAN does not have any resources"

    .line 46
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    new-array v3, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 47
    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v2, v3, v4

    .line 48
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v2, v5, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_4

    .line 49
    :cond_c
    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 50
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 51
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 52
    iget-boolean v5, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v5, :cond_d

    .line 53
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 54
    invoke-static {v2, v0, v5}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    :cond_d
    if-eqz v1, :cond_e

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 56
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-static {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 59
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "McfMlSettingManager"

    const-string v2, "SLIDE_SCAN does not have any resources"

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 61
    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 62
    new-array v5, v2, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 63
    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v6, v5, v4

    const/4 v6, 0x2

    if-lt v2, v6, :cond_10

    .line 64
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_AUTO_CAPTURE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v5, v0

    .line 65
    :cond_10
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v1, v3, v5}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_5

    .line 66
    :cond_11
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    .line 67
    :goto_5
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v2, "McfMlSettingManager"

    if-nez v1, :cond_12

    const-string v1, "mMcfMlStateMachine is null"

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 69
    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMotAiLowLightSelfieSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    goto :goto_6

    :cond_13
    move v1, v4

    :goto_6
    if-eqz v1, :cond_14

    .line 71
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAiLowLightSelfieEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_7

    :cond_14
    move v1, v4

    :goto_7
    if-eqz v1, :cond_18

    .line 72
    iget-boolean v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v1, :cond_15

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 73
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_15

    .line 74
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 75
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdateForAiLowLightSelfie(ZLandroid/content/Context;)Z

    move-result v1

    goto :goto_8

    :cond_15
    move v1, v4

    :goto_8
    if-eqz v1, :cond_16

    const-string v1, "Content Update required, skipping Low Light AI Model loading"

    .line 76
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 77
    :cond_16
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    .line 78
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    .line 79
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    new-array v2, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 81
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v2, v4

    .line 82
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_9

    :cond_17
    const-string v1, "Could not retrieve Mot Low Light Selfie Ml Model"

    .line 83
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_18
    :goto_9
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iget-object v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    const-string v3, "McfMlSettingManager"

    if-nez v2, :cond_19

    const-string v1, "mMcfMlStateMachine is null"

    .line 85
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 86
    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAiImageStabilizationSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v0

    goto :goto_a

    :cond_1a
    move v2, v4

    :goto_a
    if-eqz v2, :cond_1b

    .line 88
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 89
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 90
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v0

    goto :goto_b

    :cond_1b
    move v2, v4

    :goto_b
    if-eqz v2, :cond_1e

    .line 91
    iget-boolean v2, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v2, :cond_1c

    .line 92
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 93
    invoke-static {v1, v0, v2}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->checkModelStateUpdate(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;ZLandroid/content/Context;)Z

    .line 94
    :cond_1c
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    .line 95
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    new-array v3, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 97
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v3, v4

    .line 98
    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_c

    :cond_1d
    const-string v1, "Could not retrieve Mot Image Stabilization Ml Model"

    .line 99
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1e
    :goto_c
    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    iget-object v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v3, :cond_1f

    const-string p0, "McfMlSettingManager"

    const-string v0, "mMcfMlStateMachine is null"

    .line 101
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 102
    :cond_1f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCudSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 104
    iget-boolean v3, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCliDisplay:Z

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    .line 105
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_24

    .line 106
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 107
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I

    move-result v5

    .line 108
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isCudSupported(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    .line 109
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object v7

    .line 110
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-nez v8, :cond_24

    if-eqz v6, :cond_24

    .line 111
    invoke-static {v3, v7}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper;->supportsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_e

    .line 112
    :cond_20
    new-instance v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    invoke-direct {v6}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;-><init>()V

    .line 113
    iput-object v1, v6, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const v8, 0x7f1100d9

    .line 114
    iput v8, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v8, 0x7f110119

    .line 115
    iput v8, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    .line 116
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eqz v8, :cond_23

    const/4 v9, 0x3

    if-eq v8, v9, :cond_24

    const/4 v9, 0x4

    if-eq v8, v9, :cond_21

    const-string v3, "Error - modelState: "

    .line 117
    invoke-static {v3}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->stringValueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in checkModelStateUpdateForCud was not associated to any of the available switch cases."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ModelUpdateDialogHelper"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 119
    :cond_21
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 120
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 121
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_d

    .line 122
    :cond_22
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const v5, 0x7f110135

    .line 123
    new-instance v8, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;

    invoke-direct {v8, v7, v3}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 124
    iput-object v8, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 125
    iput v5, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    const v3, 0x7f110115

    .line 126
    sget-object v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;->INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda8;

    .line 127
    iput-object v5, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    .line 128
    iput v3, v6, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 129
    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 130
    sget-object v5, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v5, v6}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_d
    move v3, v0

    goto :goto_f

    .line 132
    :cond_23
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOT_CUD_MODEL_DISPLAY_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_24
    :goto_e
    move v3, v4

    :goto_f
    if-eqz v3, :cond_25

    const-string v0, "McfMlSettingManager"

    const-string v1, "Content Update required, skipping CUD loading"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 137
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters;->setModelAlgorithmMode()V

    .line 138
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    goto :goto_10

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_25
    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    .line 141
    invoke-static {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    new-array v0, v0, [Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    .line 143
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    aput-object v1, v0, v4

    .line 144
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    goto :goto_10

    :cond_26
    const-string v0, "McfMlSettingManager"

    const-string v1, "Could not retrieve Mot CUD Ml Model"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 147
    monitor-enter p0

    .line 148
    :try_start_1
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    .line 149
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfParameters;->setModelAlgorithmMode()V

    .line 150
    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    monitor-exit p0

    goto :goto_10

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :goto_10
    return-void
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
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 6
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 7
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mMcfMlStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    move-result-object v0

    const-string v1, "McfMlSettingManager"

    if-nez v0, :cond_1

    const-string p0, "getUseCase returned null"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Mcf not supported by current mode:"

    .line 12
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_2
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 17
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mIsCameraInit:Z

    .line 19
    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->INSTANCE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    .line 21
    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->onAllModelsLoaded()V

    .line 23
    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 25
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 26
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 27
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    const/4 v0, 0x1

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    .line 30
    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->unregisterSettingsManager()V

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 34
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    .line 35
    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->unregisterSettingsManager()V

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mShowMlResults:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;

    .line 38
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 39
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final unregisterSettingsManager()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AISD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;->mSettingsListener:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$$ExternalSyntheticLambda0;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
