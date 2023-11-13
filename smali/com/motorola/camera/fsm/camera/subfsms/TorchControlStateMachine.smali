.class public final Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "TorchControlStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine<",
        "Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;",
        ">;"
    }
.end annotation


# static fields
.field public static evTorchEnvironmentRatioTurnOff:D = 0.0833333358168602

.field public static evTorchEnvironmentRatioTurnOn:D = 1.0

.field public static mEnable:Z = false

.field public static mExposureConstant:D = 0.0010000000474974513


# instance fields
.field public mIsTorchOn:Z

.field public mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    .line 4
    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;)V

    .line 5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public static slurpJson(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sput-boolean v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "exposure-constant"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mExposureConstant:D

    const-string v1, "ev-torch-env-ratio-on"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->evTorchEnvironmentRatioTurnOn:D

    const-string v1, "ev-torch-env-ratio-off"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    sput-wide v1, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->evTorchEnvironmentRatioTurnOff:D

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TorchControlStateMachine"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sput-boolean v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    sget-boolean p1, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    if-eqz p1, :cond_b

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_3

    return-void

    .line 13
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    return-void

    .line 14
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 16
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_6

    const v1, 0x3fe66666

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_6
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v2

    long-to-float p1, v4

    div-float/2addr v1, p1

    .line 19
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 21
    :cond_7
    sget-wide v2, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mExposureConstant:D

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr v2, p1

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    if-eqz p2, :cond_9

    float-to-double v0, v1

    div-double/2addr v2, v0

    .line 24
    sget-wide v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->evTorchEnvironmentRatioTurnOff:D

    cmpg-double p2, v2, v0

    if-gez p2, :cond_b

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    .line 26
    invoke-interface {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;->onTorchControl(Z)V

    goto :goto_0

    .line 27
    :cond_8
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    goto :goto_2

    :cond_9
    float-to-double v0, v1

    div-double/2addr v2, v0

    .line 28
    sget-wide v0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->evTorchEnvironmentRatioTurnOn:D

    cmpl-double p2, v2, v0

    if-lez p2, :cond_b

    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    .line 30
    invoke-interface {p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;->onTorchControl(Z)V

    goto :goto_1

    .line 31
    :cond_a
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->resetState$1()V

    return-void
.end method

.method public final resetState$1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;

    .line 4
    invoke-interface {v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;->onTorchControl(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    return-void
.end method
