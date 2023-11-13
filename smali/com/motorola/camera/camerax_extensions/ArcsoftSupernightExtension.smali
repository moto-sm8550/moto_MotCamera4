.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;
.super Ljava/lang/Object;
.source "ArcsoftSupernightExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public filterConfig:Lorg/json/JSONObject;

.field public gainTotal:D

.field public inputFrameCount:I

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 5
    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 54

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 3
    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "results"

    const/4 v6, -0x1

    .line 4
    invoke-virtual {v3, v5, v4, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_39

    .line 6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    goto/16 :goto_18

    :cond_1
    const/4 v5, 0x0

    .line 7
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 8
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v4

    iput v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    .line 10
    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v8, v4

    const-wide/16 v10, 0x0

    cmpg-double v4, v8, v10

    if-ltz v4, :cond_38

    cmpg-double v4, v6, v10

    if-gez v4, :cond_2

    goto/16 :goto_17

    .line 11
    :cond_2
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v4

    .line 12
    iget-object v6, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 13
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 14
    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 15
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 16
    new-instance v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v7}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 17
    new-instance v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 18
    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 19
    invoke-static {v5, v9, v4, v7, v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 20
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to retrieve exposure values"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 21
    :cond_3
    iget-object v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 22
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 23
    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 24
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v11, "filterConfig"

    if-eqz v10, :cond_37

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string/jumbo v13, "sn-special-chromatix"

    .line 25
    invoke-virtual {v3, v13, v10, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 26
    invoke-static {v5}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getAntibandingStrategy$enumunboxing$(Lorg/json/JSONObject;)I

    move-result v5

    .line 27
    new-instance v13, Ljava/util/ArrayList;

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_36

    iget v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v15, "input_frame_postprocess"

    .line 29
    invoke-virtual {v3, v15, v14, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_35

    iget v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 p1, v11

    const-string v11, "max-exp-gain-cap"

    invoke-virtual {v3, v11, v14, v15}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 31
    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_34

    iget v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 p2, v2

    const-string v2, "ISP-digital-gain-only"

    invoke-virtual {v3, v2, v14, v15}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 32
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_33

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v15, "exp_suppress_ratio"

    invoke-virtual {v3, v15, v12, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v12, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v12, Ljava/lang/Double;

    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 33
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_32

    move-object/from16 v17, v15

    iget v15, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 v18, v1

    const-string v1, "extreme_night_thres"

    invoke-virtual {v3, v1, v12, v15}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 34
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_31

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 v19, v13

    const-string v13, "max_iso_cap"

    invoke-virtual {v3, v13, v1, v12}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v12, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 35
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_30

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move/from16 v20, v2

    const-string v2, "frame-ev-step"

    invoke-virtual {v3, v2, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 36
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2f

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move/from16 v21, v11

    const-string v11, "lux_exp_threshold_range"

    invoke-virtual {v3, v11, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v11

    .line 37
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2e

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move/from16 v22, v5

    const-string v5, "lux_exp_threshold_value"

    invoke-virtual {v3, v5, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 38
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2d

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 v23, v8

    const-string v8, "lux_exp_threshold_value_normal"

    invoke-virtual {v3, v8, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 39
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v24, v4

    const-string/jumbo v4, "superNightBracket[i]"

    if-eq v12, v13, :cond_4

    .line 40
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v2, "lux_exp_threshold_range not match to lux_exp_threshold_value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v4

    goto :goto_0

    .line 41
    :cond_4
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2c

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-object/from16 v25, v4

    const-string v4, "lux_iso_threshold_range"

    invoke-virtual {v3, v4, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 42
    iget-object v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v12, :cond_2b

    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    move-wide/from16 v26, v14

    const-string v14, "lux_iso_threshold_value"

    invoke-virtual {v3, v14, v12, v13}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 43
    iget-object v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v13, :cond_2a

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v15, "lux_iso_threshold_value_normal"

    invoke-virtual {v3, v15, v13, v14}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v13, v14, :cond_5

    .line 45
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v2, "lux_iso_threshold_range not match to lux_iso_threshold_value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move/from16 v32, v6

    move-object/from16 v1, v19

    goto/16 :goto_12

    .line 46
    :cond_5
    iget v13, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v13, v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v28, v9

    const-string v9, "luxExpThresRange[luxExpThresRange.size - 1]"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    cmpg-double v9, v13, v9

    if-gtz v9, :cond_8

    .line 47
    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v11, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_6

    neg-int v10, v9

    add-int/lit8 v10, v10, -0x1

    .line 48
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v10, "luxExpThresValue[-index - 1]"

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v10, "luxExpThresValue[index]"

    :goto_1
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    if-gez v9, :cond_7

    neg-int v5, v9

    add-int/lit8 v5, v5, -0x1

    .line 49
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v8, "{\n                luxExp\u2026-index - 1]\n            }"

    .line 50
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_2

    .line 51
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v8, "{\n                luxExp\u2026rmal[index]\n            }"

    .line 52
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    goto :goto_2

    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 53
    :goto_2
    iget v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v13, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v15, "luxIsoThresRange[luxIsoThresRange.size - 1]"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v30

    cmpg-double v5, v13, v30

    if-gtz v5, :cond_b

    .line 54
    iget v5, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_9

    neg-int v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 55
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v12, "luxIsoThresValue[-index - 1]"

    goto :goto_3

    :cond_9
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v12, "luxIsoThresValue[index]"

    :goto_3
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    if-gez v4, :cond_a

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "{\n                luxIso\u2026-index - 1]\n            }"

    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    .line 58
    :cond_a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "{\n                luxIso\u2026rmal[index]\n            }"

    .line 59
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    :cond_b
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_4
    float-to-double v14, v6

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-double v30, v30, v14

    move/from16 v32, v6

    .line 60
    iget-wide v5, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    mul-double/2addr v5, v14

    .line 61
    iget-wide v14, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v5, v14

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->log(D)D

    move-result-wide v33

    sub-double v14, v14, v33

    move-wide/from16 v33, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v3, v3, v35

    div-double/2addr v14, v3

    int-to-double v3, v1

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v37

    sub-double v3, v3, v37

    move-wide/from16 v37, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    int-to-double v14, v14

    div-double v14, v14, v35

    div-double/2addr v3, v14

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_22

    move-wide/from16 v35, v3

    .line 65
    new-instance v3, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v3}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 66
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v39, v2

    const-string v2, "evSteps[i]"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v40

    move-object/from16 p1, v3

    move-wide/from16 v2, v28

    double-to-float v4, v2

    move-wide/from16 v2, v26

    move/from16 v26, v14

    double-to-float v14, v2

    move-wide/from16 v42, v2

    int-to-float v2, v1

    move v3, v1

    move/from16 v27, v2

    .line 67
    iget-wide v1, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-wide/from16 v44, v1

    const/4 v1, 0x4

    if-ge v15, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_d

    move-wide/from16 v46, v37

    goto :goto_7

    :cond_d
    move-wide/from16 v46, v35

    :goto_7
    if-eqz v1, :cond_e

    move-wide/from16 v1, v30

    goto :goto_8

    :cond_e
    move-wide v1, v5

    .line 68
    :goto_8
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    mul-double v46, v46, v40

    add-double v46, v46, v1

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    move/from16 v40, v3

    .line 69
    iget v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    cmpg-float v3, v3, v14

    if-gtz v3, :cond_11

    const/4 v3, 0x3

    if-le v15, v3, :cond_f

    .line 70
    iget-wide v3, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v3, v10

    mul-double/2addr v1, v12

    const/4 v14, 0x3

    goto :goto_9

    :cond_f
    move v14, v3

    move-wide/from16 v3, v44

    :goto_9
    if-ne v15, v14, :cond_10

    .line 71
    iget-wide v1, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v1, v8

    mul-double v3, v5, v33

    move-wide/from16 v46, v3

    goto :goto_a

    :cond_10
    move-wide/from16 v46, v1

    move-wide v1, v3

    goto :goto_a

    :cond_11
    const/4 v3, 0x3

    if-ge v15, v3, :cond_12

    move-wide/from16 v46, v1

    .line 72
    iget-wide v1, v7, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    float-to-double v3, v4

    div-double/2addr v1, v3

    goto :goto_a

    :cond_12
    move-wide/from16 v46, v1

    move-wide/from16 v1, v44

    :goto_a
    const-wide v3, 0x41c1e1a300000000L    # 6.0E8

    cmpl-double v14, v1, v3

    if-lez v14, :cond_13

    move-wide v1, v3

    :cond_13
    move-wide/from16 v44, v5

    move/from16 v3, v24

    float-to-double v4, v3

    mul-double v46, v46, v4

    mul-double v4, v1, v46

    move-object/from16 v6, v23

    move-wide/from16 v23, v1

    .line 73
    iget-wide v1, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-object v14, v7

    move-wide/from16 v48, v8

    .line 74
    iget-wide v7, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v1, v7

    cmpl-double v7, v46, v1

    if-lez v7, :cond_14

    div-double v7, v4, v1

    move-wide/from16 v46, v1

    move-wide/from16 v23, v7

    :cond_14
    const/4 v7, 0x1

    move/from16 v8, v22

    if-eq v8, v7, :cond_18

    const/4 v7, 0x2

    if-ne v8, v7, :cond_15

    const-wide v50, 0x416312d000000000L    # 1.0E7

    goto :goto_b

    :cond_15
    const-wide v50, 0x415fca0555555555L    # 8333333.333333333

    :goto_b
    cmpl-double v7, v23, v50

    if-lez v7, :cond_18

    div-double v23, v23, v50

    move/from16 v22, v8

    .line 75
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double v7, v7, v50

    const-wide v23, 0x40b3880000000000L    # 5000.0

    sub-double v46, v7, v23

    cmpl-double v9, v46, v4

    if-lez v9, :cond_16

    sub-double v7, v7, v50

    goto :goto_c

    :cond_16
    add-double v23, v7, v23

    mul-double v23, v23, v1

    cmpg-double v9, v23, v4

    if-gez v9, :cond_17

    add-double v7, v7, v50

    :cond_17
    :goto_c
    move-wide/from16 v23, v7

    div-double v46, v4, v23

    goto :goto_d

    :cond_18
    move/from16 v22, v8

    .line 76
    :goto_d
    iget-wide v7, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v9, v46, v7

    if-lez v9, :cond_20

    if-eqz v21, :cond_1b

    .line 77
    iget-wide v1, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v4, v23, v1

    if-lez v4, :cond_1a

    mul-double v46, v46, v23

    div-double v46, v46, v1

    move/from16 v4, v27

    float-to-double v4, v4

    cmpl-double v9, v46, v4

    if-lez v9, :cond_19

    move-wide/from16 v46, v4

    :cond_19
    div-double v46, v46, v7

    goto :goto_e

    :cond_1a
    move/from16 v4, v27

    float-to-double v4, v4

    cmpl-double v9, v46, v4

    if-lez v9, :cond_1c

    mul-double v23, v23, v46

    div-double v23, v23, v4

    div-double v46, v4, v7

    cmpl-double v4, v23, v1

    if-lez v4, :cond_1e

    goto :goto_e

    :cond_1b
    cmpg-double v1, v46, v1

    if-gtz v1, :cond_1d

    :cond_1c
    div-double v46, v46, v7

    goto :goto_f

    .line 78
    :cond_1d
    iget-wide v1, v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v23, v7, v1

    div-double v4, v4, v23

    move-wide/from16 v46, v1

    move-wide v1, v4

    :goto_e
    move-wide/from16 v23, v1

    :cond_1e
    :goto_f
    if-eqz v20, :cond_1f

    mul-double v7, v7, v46

    :cond_1f
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v4, v23

    move-wide/from16 v52, v7

    move-wide/from16 v7, v46

    move-wide/from16 v46, v52

    goto :goto_10

    :cond_20
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v7, v4

    move-wide/from16 v4, v23

    :goto_10
    cmpg-double v9, v46, v1

    if-gez v9, :cond_21

    move-object/from16 v9, p1

    goto :goto_11

    :cond_21
    move-object/from16 v9, p1

    move-wide/from16 v1, v46

    .line 79
    :goto_11
    iput-wide v1, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 80
    iput-wide v7, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 81
    iput-wide v4, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v1, v19

    .line 82
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v24, v3

    move-object/from16 v23, v6

    move-object v7, v14

    move/from16 v14, v26

    move-wide/from16 v3, v35

    move-object/from16 v2, v39

    move/from16 v1, v40

    move-wide/from16 v26, v42

    move-wide/from16 v5, v44

    move-wide/from16 v8, v48

    goto/16 :goto_5

    :cond_22
    move-object/from16 v1, v19

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 84
    sget-object v2, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v3, "no EV compensation configured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v2, 0x0

    move-object/from16 v5, v25

    goto :goto_14

    :cond_23
    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x3

    if-ge v2, v3, :cond_24

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    move-object/from16 v5, v25

    const/4 v2, 0x1

    :goto_14
    if-nez v2, :cond_25

    .line 88
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v1, "dynamic exposure algo error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_25
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_29

    .line 91
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v13, v32

    .line 93
    invoke-static {v12, v6, v13}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    const/4 v6, 0x1

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v14, v18

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v15, "NOISE_REDUCTION_MODE"

    const-string v7, "EDGE_MODE"

    if-eqz v6, :cond_26

    .line 95
    sget-object v18, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v19, 0x2

    move-object v6, v11

    move/from16 v8, v19

    move-object/from16 v9, v18

    move-object v10, v12

    .line 96
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 97
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v6, v11

    move-object v7, v15

    .line 98
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_16

    .line 99
    :cond_26
    sget-object v18, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x3

    move-object v6, v11

    move-object/from16 v9, v18

    move-object v10, v12

    .line 100
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 101
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x4

    move-object v6, v11

    move-object v7, v15

    .line 102
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 103
    :goto_16
    sget-object v15, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_AWB_LOCK"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v12, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 104
    iget-object v6, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v12, v6}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v17, :cond_27

    .line 105
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static/range {v17 .. v17}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 107
    invoke-virtual {v15, v12, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_27
    if-eqz v16, :cond_28

    .line 108
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_MODE"

    const/4 v8, 0x2

    move-object v6, v11

    move-object v9, v15

    move-object v10, v12

    .line 109
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 110
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "CONTROL_SCENE_MODE"

    const/16 v8, 0x66

    move-object v6, v11

    .line 111
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 112
    :cond_28
    sget-object v6, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v7, "ISMOTCAMERA_KEY"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 114
    invoke-virtual {v15, v12, v6, v7}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    move/from16 v32, v13

    move-object/from16 v18, v14

    goto/16 :goto_15

    :cond_29
    const-string v0, "requests"

    move-object/from16 v1, p2

    .line 116
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2b
    const/4 v0, 0x0

    .line 119
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    .line 120
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/4 v0, 0x0

    .line 121
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    .line 122
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/4 v0, 0x0

    .line 123
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, 0x0

    .line 124
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/4 v0, 0x0

    .line 125
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v0, 0x0

    .line 126
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/4 v0, 0x0

    .line 127
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 v0, 0x0

    .line 128
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_35
    move-object/from16 p1, v11

    const/4 v0, 0x0

    .line 129
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 p1, v11

    .line 130
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object/from16 p1, v11

    .line 131
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_38
    :goto_17
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v2, "Lux ("

    .line 133
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") or gain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ") calculation failed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_39
    :goto_18
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse input result"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    .line 5
    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 6
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    .line 7
    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 8
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    const/4 v3, 0x0

    move-object v5, p1

    .line 9
    invoke-static/range {v1 .. v7}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;->configureCaptureStreamNative$default(JLandroid/graphics/Point;ILandroid/view/Surface;IZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public final deinitialize(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 3
    invoke-static {v0, v1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->deinitializeNative(J)Z

    .line 4
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    return-void
.end method

.method public final getExtensionConfig()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "previewResultCount"

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    const-string v2, "captureRequestCount"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 6
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 8
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 10
    sget-object v3, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 11
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 13
    invoke-virtual {v3, v9, v4, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    :cond_0
    sget-object p0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 15
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AE_MODE"

    const/4 v10, 0x1

    move-object v3, v8

    move v5, v10

    move-object v6, p0

    move-object v7, v9

    .line 16
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 17
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AWB_MODE"

    move-object v3, v8

    .line 18
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 19
    sget-object v8, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "ISMOTCAMERA_KEY"

    move-object v3, v8

    .line 20
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 21
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AF_MODE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 23
    invoke-virtual {p0, v9, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "requests"

    .line 25
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previewCaptureRequests"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 28
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "SENSOR_EXPOSURE_TIME"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 29
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v5, "SENSOR_FRAME_DURATION"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 30
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "CONTROL_POST_RAW_SENSITIVITY_BOOST"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 31
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "SENSOR_SENSITIVITY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 32
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "CONTROL_AE_ANTIBANDING_MODE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 33
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "STATISTICS_SCENE_FLICKER"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 34
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ANTIBANDING_SUBMODE_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "ANTIBANDING_SUBMODE_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 35
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISO100_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "ISO100_GAIN_KEY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 36
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_STD_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LUX_STD_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 37
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->LUX_IDX_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LUX_IDX_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 38
    sget-object v2, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->MOT_ADRC_GAIN_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "MOT_ADRC_GAIN_KEY"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 39
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v4, "LENS_APERTURE"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string p0, "previewResultsOfInterest"

    .line 40
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initialize(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->deinitialize(I)V

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "as-supernight"

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final isSupported()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isSpecialDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "AR-supernight"

    .line 4
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_7

    .line 6
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    .line 7
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v5, "enable"

    invoke-virtual {v0, v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 8
    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_6

    .line 9
    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v6, "extension-enable"

    .line 10
    invoke-virtual {v0, v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 11
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string/jumbo v4, "state-machine"

    .line 13
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "super-night"

    .line 15
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 17
    iput-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    .line 18
    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v4, "frames-required"

    invoke-virtual {v0, v4, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 19
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v0, "Unable to determine input frames"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 20
    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    const/4 p0, 0x1

    return p0

    .line 21
    :cond_4
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v0, "SM config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v2

    :cond_6
    const-string p0, "algoConfig"

    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 23
    :cond_7
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v0, "Config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final processStream(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string p1, "processStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_1
    sget-object p2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 4
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v2, -0x1

    const-string v3, "results"

    .line 5
    invoke-virtual {p2, v3, p1, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lorg/json/JSONArray;

    if-nez p1, :cond_2

    .line 7
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unable to parse input results"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    if-eq v2, v3, :cond_3

    .line 9
    sget-object v2, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->TAG:Ljava/lang/String;

    const-string v3, "Input count("

    .line 10
    invoke-static {v3}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not matching requested count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->inputFrameCount:I

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 15
    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->luxAverage:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "luxAvg"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-wide v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->gainTotal:D

    const-string/jumbo v5, "totalGain"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 17
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v4, "algoConfig"

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v7, "brightness"

    invoke-virtual {p2, v7, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "curveBrightness"

    .line 18
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_a

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v7, "contrast"

    invoke-virtual {p2, v7, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "curveContrast"

    .line 20
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_9

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string/jumbo v7, "sharpness"

    invoke-virtual {p2, v7, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_8

    iget v6, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v7, "deviceID"

    invoke-virtual {p2, v7, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v6, "lib-name"

    invoke-virtual {p2, v6, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "libName"

    .line 26
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    const-string v3, "cameraID"

    .line 28
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v3, "filterConfig"

    if-eqz v1, :cond_6

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v6, "frame-ev-default"

    invoke-virtual {p2, v6, v1, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "frameEv"

    .line 30
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jsonIndex:I

    const-string v4, "ram_memory_size"

    invoke-virtual {p2, v4, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "memorySize"

    .line 32
    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "in-params"

    .line 34
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSupernightExtension;->jniClientId:J

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "json.toString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 37
    invoke-static {v1, v2, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    .line 38
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 43
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method
