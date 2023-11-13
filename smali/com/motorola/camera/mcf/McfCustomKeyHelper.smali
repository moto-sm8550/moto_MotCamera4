.class public final Lcom/motorola/camera/mcf/McfCustomKeyHelper;
.super Ljava/lang/Object;
.source "McfCustomKeyHelper.java"


# static fields
.field public static final ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final mCaptureRequestCst:Ljava/lang/reflect/Constructor;

.field public static final mCaptureResultCst:Ljava/lang/reflect/Constructor;

.field public static final mCharacteristicsCst:Ljava/lang/reflect/Constructor;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "McfCustomKeyHelper"

    .line 1
    const-class v1, [I

    const-class v2, Ljava/lang/String;

    const-class v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 2
    :try_start_0
    const-class v8, Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v2, v9, v5

    const-class v10, Ljava/lang/Class;

    aput-object v10, v9, v4

    .line 3
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sput-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    :try_start_1
    const-string v8, "Unable to find CameraCharacteristics.Key"

    .line 5
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    .line 7
    :goto_0
    sget-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_0

    const-string v8, "com.lenovo.moto.sensor.info.name"

    .line 8
    invoke-static {v8, v2}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v8

    sput-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v8, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dualcam_calib_meta_data_blob"

    .line 9
    invoke-static {v8, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v8, "com.lenovo.moto.sensor.info.arcsoft_dual_calib_blob"

    .line 10
    invoke-static {v8, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v8

    sput-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v8, "com.mediatek.cshotfeature.availableCShotModes"

    .line 11
    invoke-static {v8, v1}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCharacteristicKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v8

    sput-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    .line 12
    :cond_0
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 13
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_AVAILABLE_CSHOT_MODES_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 15
    :goto_1
    :try_start_2
    const-class v8, Landroid/hardware/camera2/CaptureResult$Key;

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v2, v9, v5

    const-class v10, Ljava/lang/Class;

    aput-object v10, v9, v4

    .line 16
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    sput-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    :try_start_3
    const-string v8, "Unable to find CaptureResult.Key"

    .line 18
    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    .line 20
    :goto_2
    sget-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_1

    .line 21
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v9, "com.lenovo.moto.envinfo.lux_idx"

    invoke-static {v9, v8}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "com.lenovo.moto.envinfo.lux_std"

    .line 22
    invoke-static {v9, v8}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "com.lenovo.moto.envinfo.iso100_gain"

    .line 23
    invoke-static {v9, v8}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 24
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v10, "com.lenovo.moto.envinfo.afd_submode"

    invoke-static {v10, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 25
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v10, "org.codeaurora.qcamera3.stats.bsgc_available"

    invoke-static {v10, v9}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.blink_detected"

    .line 26
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.blink_degree"

    .line 27
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.smile_degree"

    .line 28
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.smile_confidence"

    .line 29
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.gaze_angle"

    .line 30
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.gaze_direction"

    .line 31
    invoke-static {v9, v1}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.stats.gaze_degree"

    .line 32
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v9, "org.codeaurora.qcamera3.hal_private_data.reprocess_data_blob"

    .line 33
    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    .line 34
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v9, "com.lenovo.moto.frameinfo.sof_counter"

    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    .line 35
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v9, "com.lenovo.moto.frameinfo.pproc_done"

    invoke-static {v9, v3}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "android.statistics.faceIds"

    .line 36
    invoke-static {v3, v1}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "org.codeaurora.qcamera3.dualcam_calib_meta_data.dac_info"

    .line 37
    invoke-static {v3, v8}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "com.lenovo.moto.adrc.gain"

    .line 38
    invoke-static {v3, v8}, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_3

    .line 39
    :cond_1
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 40
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 41
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 42
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 43
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 44
    :goto_3
    :try_start_4
    const-class v3, Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v2, v8, v5

    const-class v2, Ljava/lang/Class;

    aput-object v2, v8, v4

    .line 45
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 46
    sput-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    :try_start_5
    const-string v2, "Unable to find CaptureRequest.Key"

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 48
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    .line 49
    :goto_4
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    const-string v2, "com.mediatek.cshotfeature.capture"

    :try_start_6
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v1, v3, v4

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-object v0, v7

    .line 51
    :goto_5
    sput-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v0, "com.lenovo.moto.clientapp.is_motcamera2"

    .line 52
    const-class v1, Ljava/lang/Byte;

    .line 53
    :try_start_7
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v7, v0

    .line 54
    :catch_4
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_6

    .line 55
    :cond_2
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MTK_CSHOT_MODE_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 56
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_6
    return-void

    .line 57
    :goto_7
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureRequestCst:Ljava/lang/reflect/Constructor;

    .line 58
    throw v0

    .line 59
    :goto_8
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    .line 60
    throw v0

    .line 61
    :goto_9
    sput-object v7, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    .line 62
    throw v0
.end method

.method public static getCaptureResultKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCaptureResultCst:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCharacteristicKey(Ljava/lang/String;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->mCharacteristicsCst:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics$Key;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
