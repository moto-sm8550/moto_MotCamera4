.class public final Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;
.super Ljava/lang/Object;
.source "ArcsoftSuperPortraitExtension.kt"

# interfaces
.implements Lcom/motorola/camera/camerax_extensions/Extension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public algoConfig:Lorg/json/JSONObject;

.field public final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public evSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public filterConfig:Lorg/json/JSONObject;

.field public gainTotal:D

.field public jniClientId:J

.field public final jsonConfig:Lorg/json/JSONObject;

.field public final jsonIndex:I

.field public luxAverage:F

.field public final mSensorName:Ljava/lang/String;

.field public maxInputFrameCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const-string v0, "jsonConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    iput-object p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    .line 3
    iput-object p3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    sget-object p1, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SENSOR_INFO_NAME_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 5
    iput-wide p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    return-void
.end method


# virtual methods
.method public final buildRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 30

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

    if-eqz v4, :cond_2c

    .line 6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_1

    goto/16 :goto_16

    :cond_1
    const/4 v5, 0x0

    .line 7
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    .line 8
    iget-object v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->mSensorName:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getRecentFramesAverageLux(Ljava/lang/String;Lorg/json/JSONArray;)F

    move-result v4

    iput v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    .line 9
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getCurrentGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    .line 10
    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v9, v4

    const-wide/16 v11, 0x0

    cmpg-double v4, v9, v11

    if-ltz v4, :cond_2b

    cmpg-double v4, v7, v11

    if-gez v4, :cond_2

    goto/16 :goto_15

    .line 11
    :cond_2
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v5, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getIsoToGain(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)Lkotlin/Pair;

    move-result-object v4

    .line 12
    iget-object v7, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 13
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 14
    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 15
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 16
    new-instance v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v8}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 17
    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 18
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 19
    invoke-static {v5, v10, v4, v8, v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->getExpValue(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;FLcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to retrieve exposure values"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 21
    :cond_3
    iget-object v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 22
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 23
    invoke-virtual {v4, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 24
    iget-object v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    const-string v11, "filterConfig"

    if-eqz v10, :cond_2a

    iget v12, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string/jumbo v13, "sp-special-chromatix"

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

    iget v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_29

    iget v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v15, "input_frame_postprocess"

    .line 29
    invoke-virtual {v3, v15, v14, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v14, :cond_28

    const-string v15, "params-dynamic"

    .line 31
    invoke-virtual {v3, v15, v14, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Lorg/json/JSONArray;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lorg/json/JSONArray;

    if-nez v3, :cond_5

    .line 33
    sget-object v3, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v5, "dynamic params not found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move/from16 v23, v7

    move/from16 v19, v10

    move-object v0, v13

    goto/16 :goto_12

    :cond_5
    const/4 v14, 0x0

    .line 34
    iput-object v14, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    const-wide/16 v15, 0x0

    move-object/from16 p1, v11

    move-wide/from16 v16, v15

    move v15, v6

    :goto_1
    const-string v11, "frame-ev-step"

    if-ge v6, v14, :cond_9

    .line 36
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 p2, v14

    move-object/from16 v14, v18

    check-cast v14, Lorg/json/JSONObject;

    move-object/from16 v18, v2

    .line 37
    sget-object v2, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    move/from16 v19, v10

    iget v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    move-object/from16 v20, v4

    const-string v4, "lux-in"

    invoke-virtual {v2, v4, v14, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 38
    iget v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    move-object/from16 v21, v1

    const-string v1, "lux-out"

    invoke-virtual {v2, v1, v14, v10}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 39
    iget v10, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    move-object/from16 v22, v9

    float-to-double v9, v10

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    cmpg-double v9, v9, v23

    if-gez v9, :cond_7

    iget v9, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    float-to-double v9, v9

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    cmpl-double v1, v9, v23

    if-ltz v1, :cond_7

    .line 40
    iget v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    invoke-virtual {v2, v11, v14, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    move-object/from16 v22, v9

    :cond_7
    if-eqz v4, :cond_8

    .line 41
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v16

    if-lez v1, :cond_8

    .line 42
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide/from16 v16, v1

    move v15, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v14, p2

    move-object/from16 v2, v18

    move/from16 v10, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v21

    move-object/from16 v9, v22

    goto :goto_1

    :cond_9
    move-object/from16 v21, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v9

    move/from16 v19, v10

    .line 43
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    .line 44
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    .line 45
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 46
    iget v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    .line 47
    invoke-virtual {v1, v11, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    .line 48
    :cond_a
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v2, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_27

    iget v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v4, "ISP-digital-gain-only"

    invoke-virtual {v1, v4, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 49
    iget-object v3, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    if-eqz v3, :cond_26

    iget v4, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v6, "exp-curve-anchors"

    .line 50
    invoke-virtual {v1, v6, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "gains"

    const/4 v6, -0x1

    .line 51
    invoke-virtual {v1, v4, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v9, "exposures"

    .line 52
    invoke-virtual {v1, v9, v3, v6}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parseDoubleArray(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_b

    .line 54
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v2, "exp-curve-anchors list sizes don\'t match"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v23, v7

    move-object v0, v13

    goto/16 :goto_11

    .line 55
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_c

    .line 57
    new-instance v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "gainList[i]"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "expList[i]"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-direct {v10, v11, v12, v14, v15}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>(DD)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 58
    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_1f

    .line 60
    new-instance v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    invoke-direct {v9}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;-><init>()V

    .line 61
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "it[i]"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 62
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 63
    iget-wide v14, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-object v12, v1

    .line 64
    iget-wide v0, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v14, v0

    .line 65
    iget-wide v0, v8, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v14, v0

    mul-double/2addr v14, v10

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v10, 0x0

    cmpg-double v1, v14, v10

    if-gtz v1, :cond_d

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 68
    iget-wide v10, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 69
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v16, v10

    .line 70
    iget-wide v10, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move/from16 p1, v4

    move/from16 v27, v6

    move/from16 v23, v7

    move-object/from16 p2, v8

    move-object/from16 v26, v12

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v1, v0, -0x1

    .line 71
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 72
    iget-wide v10, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v4

    move-object/from16 v4, v16

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move-wide/from16 v16, v10

    .line 74
    iget-wide v10, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    const/4 v4, 0x0

    const/16 v23, 0x1

    move-object/from16 p2, v8

    move/from16 v8, v23

    move-wide/from16 v28, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v28

    :goto_5
    if-nez v4, :cond_11

    if-ge v8, v0, :cond_11

    .line 75
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-wide/from16 v24, v10

    move-object/from16 v10, v23

    check-cast v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 76
    iget-wide v10, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 77
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v26, v12

    move-object/from16 v12, v23

    check-cast v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v27, v6

    move/from16 v23, v7

    .line 78
    iget-wide v6, v12, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    mul-double/2addr v10, v6

    cmpg-double v6, v14, v10

    if-gtz v6, :cond_10

    add-int/lit8 v4, v8, -0x1

    .line 79
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 80
    iget-wide v6, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 81
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 82
    iget-wide v10, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    sub-double/2addr v6, v10

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3f3a36e2eb1c432dL    # 4.0E-4

    cmpg-double v4, v6, v10

    if-gez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_f

    .line 84
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 85
    iget-wide v6, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v10, v14, v6

    move-wide/from16 v16, v10

    move-wide v10, v6

    goto :goto_7

    .line 86
    :cond_f
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 87
    iget-wide v6, v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    div-double v10, v14, v6

    move-wide/from16 v16, v6

    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    move-wide/from16 v10, v24

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v23

    move-object/from16 v12, v26

    move/from16 v6, v27

    goto :goto_5

    :cond_11
    move/from16 v27, v6

    move/from16 v23, v7

    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    if-nez v4, :cond_12

    .line 88
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 89
    iget-wide v10, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v6, v14, v10

    move-wide/from16 v16, v10

    move-wide v10, v6

    goto :goto_9

    :cond_12
    move-wide/from16 v10, v16

    move-wide/from16 v16, v24

    :goto_9
    add-int/lit8 v0, v0, -0x1

    .line 90
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 91
    iget-wide v6, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-wide/from16 v24, v10

    move-object/from16 v1, v22

    .line 92
    iget-wide v10, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    move-object v4, v13

    .line 93
    iget-wide v12, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double/2addr v10, v12

    cmpl-double v8, v6, v10

    if-lez v8, :cond_13

    move-wide v6, v10

    :cond_13
    cmpl-double v8, v16, v10

    if-lez v8, :cond_14

    div-double v12, v14, v10

    move-wide/from16 v16, v10

    move-wide/from16 v24, v12

    :cond_14
    const/4 v8, 0x1

    if-eq v5, v8, :cond_18

    const/4 v8, 0x2

    if-ne v5, v8, :cond_15

    const-wide v12, 0x416312d000000000L    # 1.0E7

    goto :goto_a

    :cond_15
    const-wide v12, 0x415fca0555555555L    # 8333333.333333333

    :goto_a
    cmpl-double v8, v24, v12

    if-lez v8, :cond_18

    div-double v24, v24, v12

    move-object/from16 v22, v4

    move v8, v5

    .line 94
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v12

    const-wide v16, 0x40b3880000000000L    # 5000.0

    sub-double v24, v4, v16

    cmpl-double v24, v24, v14

    if-lez v24, :cond_16

    sub-double/2addr v4, v12

    goto :goto_b

    :cond_16
    add-double v16, v4, v16

    mul-double v16, v16, v6

    cmpg-double v6, v16, v14

    if-gez v6, :cond_17

    add-double/2addr v4, v12

    :cond_17
    :goto_b
    move-wide/from16 v24, v4

    div-double v16, v14, v24

    goto :goto_c

    :cond_18
    move-object/from16 v22, v4

    move v8, v5

    .line 95
    :goto_c
    iget-wide v4, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v6, v16, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-lez v6, :cond_1b

    cmpg-double v6, v16, v10

    if-gtz v6, :cond_19

    div-double v16, v16, v4

    goto :goto_d

    .line 96
    :cond_19
    iget-wide v6, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    mul-double v10, v4, v6

    div-double/2addr v14, v10

    move-wide/from16 v16, v6

    move-wide/from16 v24, v14

    :goto_d
    if-eqz v2, :cond_1a

    mul-double v4, v4, v16

    :cond_1a
    move-wide/from16 v28, v4

    move-wide/from16 v4, v16

    move-wide/from16 v16, v28

    goto :goto_e

    :cond_1b
    move-wide v4, v12

    :goto_e
    cmpg-double v6, v16, v12

    if-gez v6, :cond_1c

    goto :goto_f

    :cond_1c
    move-wide/from16 v12, v16

    .line 97
    :goto_f
    iget-wide v6, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    cmpl-double v10, v24, v6

    if-lez v10, :cond_1e

    mul-double v12, v12, v24

    div-double/2addr v12, v6

    .line 98
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 99
    iget-wide v10, v10, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    cmpl-double v10, v12, v10

    if-lez v10, :cond_1d

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    .line 101
    iget-wide v4, v0, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 102
    iget-wide v10, v1, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    div-double v10, v4, v10

    goto :goto_10

    :cond_1d
    move-wide/from16 v24, v6

    :cond_1e
    move-wide v10, v4

    move-wide v4, v12

    move-wide/from16 v6, v24

    .line 103
    :goto_10
    iput-wide v4, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->gain:D

    .line 104
    iput-wide v10, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->boost:D

    .line 105
    iput-wide v6, v9, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;->expTimeNs:D

    move-object/from16 v0, v22

    .line 106
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v27, 0x1

    move/from16 v4, p1

    move-object v13, v0

    move-object/from16 v22, v1

    move v5, v8

    move/from16 v7, v23

    move-object/from16 v1, v26

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    goto/16 :goto_4

    :cond_1f
    move/from16 v23, v7

    move-object v0, v13

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 108
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v2, "no EV compensation configured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const/4 v6, 0x0

    goto :goto_12

    :cond_20
    const/4 v6, 0x1

    :goto_12
    if-nez v6, :cond_21

    .line 109
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v1, "dynamic exposure algo error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_21
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_25

    .line 112
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "superPortraitBracket[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;

    move/from16 v11, v23

    .line 114
    invoke-static {v10, v4, v11}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->constructBracketingRequest(Lorg/json/JSONObject;Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil$ExposureInfo;F)V

    const/4 v4, 0x1

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v12, v21

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v13, "NOISE_REDUCTION_MODE"

    const-string v5, "EDGE_MODE"

    if-eqz v4, :cond_22

    .line 116
    sget-object v14, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v15, 0x2

    move-object v4, v9

    move v6, v15

    move-object v7, v14

    move-object v8, v10

    .line 117
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 118
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v4, v9

    move-object v5, v13

    .line 119
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    goto :goto_14

    .line 120
    :cond_22
    sget-object v14, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x3

    move-object v4, v9

    move-object v7, v14

    move-object v8, v10

    .line 121
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 122
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x4

    move-object v4, v9

    move-object v5, v13

    .line 123
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 124
    :goto_14
    sget-object v13, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "CONTROL_AWB_LOCK"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v10, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move-object/from16 v14, p0

    .line 125
    iget-object v4, v14, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v10, v4}, Lcom/motorola/camera/camerax_extensions/ExposureBracketUtil;->setFastCaptureIfAvailable(Lorg/json/JSONObject;Landroid/hardware/camera2/CameraCharacteristics;)V

    if-eqz v20, :cond_23

    .line 126
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "STATISTICS_FACE_DETECT_MODE"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static/range {v20 .. v20}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 128
    invoke-virtual {v13, v10, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_23
    if-eqz v19, :cond_24

    .line 129
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "CONTROL_MODE"

    const/4 v6, 0x2

    move-object v4, v9

    move-object v7, v13

    move-object v8, v10

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 131
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "CONTROL_SCENE_MODE"

    const/16 v6, 0x67

    move-object v4, v9

    .line 132
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 133
    sget-object v9, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v5, "ISMOTCAMERA_KEY"

    const/4 v6, 0x1

    move-object v4, v9

    .line 134
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 135
    :cond_24
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    move/from16 v23, v11

    move-object/from16 v21, v12

    goto/16 :goto_13

    :cond_25
    const-string v0, "requests"

    move-object/from16 v2, v18

    .line 136
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_27
    const/4 v0, 0x0

    .line 139
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 p1, v11

    .line 140
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_29
    move-object/from16 p1, v11

    .line 141
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2a
    move-object/from16 p1, v11

    .line 142
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_15
    move-object v14, v0

    .line 143
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v1, "Lux ("

    .line 144
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    iget v2, v14, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") or gain ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v14, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ") calculation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_2c
    :goto_16
    sget-object v0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse input result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final configureStream(Landroid/view/Surface;I)Landroid/view/Surface;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string p1, "configureStream client id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_1
    new-instance p2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;-><init>(Lorg/json/JSONObject;)V

    .line 4
    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->cacheConfig()V

    .line 5
    sget-boolean v7, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 6
    sget-object p2, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->Companion:Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;

    iget-object v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment$Companion;->fromConfigs(Lorg/json/JSONObject;)Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/motorola/camera/camerax_extensions/DeviceSpecificAlignment;->getAlignment()I

    move-result v6

    .line 7
    sget-object p2, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    .line 8
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

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
    iget-wide v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

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
    iput-wide v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

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
    iget v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

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
    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

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
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "CONTROL_AF_MODE"

    const/4 v5, 0x4

    move-object v3, v8

    .line 20
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILcom/motorola/camera/camerax_extensions/JsonUtils;Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 21
    sget-object v3, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->ISMOTCAMERA_KEY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "ISMOTCAMERA_KEY"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonResult(Lorg/json/JSONArray;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    const-string p0, "previewResultsOfInterest"

    .line 39
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
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
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->deinitialize(I)V

    .line 2
    :cond_1
    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    const-string p1, "as-superportrait"

    .line 3
    invoke-static {p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->initializeNative(Ljava/lang/String;)J

    move-result-wide v1

    .line 4
    iput-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

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
    iget v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string v4, "AR-superportrait"

    .line 3
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    .line 5
    iput-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    .line 6
    iget v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v5, "enable"

    invoke-virtual {v0, v5, v3, v4}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 8
    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v6, "extension-enable"

    .line 9
    invoke-virtual {v0, v6, v4, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 10
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonConfig:Lorg/json/JSONObject;

    const-string/jumbo v4, "state-machine"

    .line 12
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "super-portrait"

    .line 14
    invoke-virtual {v0, v4, v3, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 16
    iput-object v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->filterConfig:Lorg/json/JSONObject;

    .line 17
    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v4, "frames-required"

    invoke-virtual {v0, v4, v1, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 18
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v0, "Unable to determine input frames"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 19
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->maxInputFrameCount:I

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_3
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v0, "SM config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v2

    :cond_5
    const-string p0, "algoConfig"

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 22
    :cond_6
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v0, "Config missing for algo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final processStream(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

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
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string p1, "Unable to parse input results"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    .line 9
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->TAG:Ljava/lang/String;

    const-string v2, "Input count("

    .line 10
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not matching requested count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v3

    .line 13
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    iget-wide v4, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->gainTotal:D

    const-string/jumbo v2, "totalGain"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    const-string v4, "algoConfig"

    if-eqz v2, :cond_9

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v6, "brightness"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveBrightness"

    .line 17
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v6, "contrast"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "curveContrast"

    .line 19
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    iget v5, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string/jumbo v6, "sharpness"

    invoke-virtual {p2, v6, v2, v5}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->algoConfig:Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    iget v3, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jsonIndex:I

    const-string v4, "deviceID"

    invoke-virtual {p2, v4, v2, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p2

    .line 23
    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget p2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->luxAverage:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v2, "luxAvg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    new-instance p2, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->evSteps:Ljava/util/ArrayList;

    invoke-direct {p2, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "frameEv"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "in-params"

    .line 27
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    sget-object v1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;

    iget-wide v1, p0, Lcom/motorola/camera/camerax_extensions/ArcsoftSuperPortraitExtension;->jniClientId:J

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "json.toString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 30
    invoke-static {v1, v2, p0, v0, p1}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->processNative(JLjava/lang/String;ZI)Z

    move-result p0

    return p0

    .line 31
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
